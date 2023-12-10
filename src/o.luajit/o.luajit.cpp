
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"

#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "odot_version.h"

#include "LuaWrapper.hpp"

#define NAME "o.luajit"
#define DESCRIPTION ""
#define AUTHORS "Rama Gottfried"
#define COPYRIGHT_YEARS "2022"
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing /call address of function, and optional /args message for arguments"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet containing the results of the expression"}

using namespace std;

static t_class *oluajit_class;

typedef struct _oluajit
{
    t_object                ob;

    unique_ptr<LuaWrapper>  lua;
    
    string                  filename;
    t_filepath              pathID;

    string                  fullpath;

    t_object *              t_editor;
    t_fourcc                max_filetype;
    char **                 t_text; // text for editor
    long                    t_size;

    void *                  filewatcher;
    bool                    softlock;

    t_critical              lock;

    void *                  outlet;
    
} t_oluajit;



void oluajit_FullPacket(t_oluajit *x, t_symbol *msg, int argc, t_atom *argv)
{
    
    OMAX_UTIL_GET_LEN_AND_PTR
    
    // ======================= wrap_naked_osc
    // from wrap_naked... alloca was a problem in C++
    if(ptr && len >= 8){
        if(strncmp("#bundle\0", (char *)(ptr), 8)){
            char *oldptr = (char *)ptr;
            long oldlen = len;
            len += 4 + OSC_HEADER_SIZE;
            ptr = (char *)alloca(len);
            char alloc = 0;
            osc_bundle_s_wrapMessage(oldlen, oldptr, &len, (char **)(&ptr), &alloc);
        }
    }
    
    if(len == OSC_HEADER_SIZE){
        return;
    }
    // ==========================
    
    
   
    // /call message test
    char * msgBytes = osc_bundle_s_getFirstEqualAddr(len, ptr, (char *)"/call");

    if( !msgBytes )
    {
        object_error((t_object*)x, "requires /call message for function to call");
        return;
    }
    
    t_osc_msg_s *callMsg = osc_message_s_alloc();
    osc_message_s_wrap(callMsg, msgBytes);
    
    t_osc_atom_s *fnNameAtom = NULL;
    osc_message_s_getArg(callMsg, 0, &fnNameAtom); // allocs atom
    
    if( !fnNameAtom )
    {
        object_error((t_object*)x, "/call message should be bound to string of name of function to call");
        osc_message_s_free(callMsg);
        return;
    }
    
    char strBuf[128];
    char *fnNamePtr = strBuf;
    osc_atom_s_getString(fnNameAtom, 128, &fnNamePtr);
    
    osc_message_s_free(callMsg);
    osc_atom_s_free(fnNameAtom);

   
    // /arg message test
    char *argsBytes = osc_bundle_s_getFirstEqualAddr(len, ptr, (char *)"/args");

    bool hasArgs = (argsBytes != NULL); // use later for no args case

    if( hasArgs )
    {
        t_osc_msg_s *argsMsg = osc_message_s_alloc();
        osc_message_s_wrap(argsMsg, argsBytes);
        
        t_osc_atom_s *arg1Atom = NULL;
        osc_message_s_getArg(argsMsg, 0, &arg1Atom);
        if( arg1Atom )
        {

            if( osc_atom_s_getTypetag(arg1Atom) == OSC_BUNDLE_TYPETAG )
            {
             
                critical_enter(x->lock);
                
                t_osc_bndl_s *bndl = osc_atom_s_getBndlCopy(arg1Atom); // or bndlCopy?
      
                // put bundle on lua stack
                x->lua->bndl2table(bndl);
                
                // call Lua function here
                x->lua->callFunction(fnNamePtr, 1, 1);
                t_osc_bndl_u *lua_out_u = x->lua->table2bundle();

                critical_exit(x->lock);

                // retrieve result
                t_osc_bndl_s *lua_out_s = osc_bundle_u_serialize(lua_out_u);
             
                omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(lua_out_s), osc_bundle_s_getPtr(lua_out_s));
             
                osc_bundle_s_deepFree(lua_out_s);
                osc_bundle_s_free(bndl);
                osc_bundle_u_free(lua_out_u);
                
                
            }

            osc_atom_s_free(arg1Atom);
        }
        
        osc_message_s_free(argsMsg);
    }
    else
    {
        critical_enter(x->lock);
        // call Lua function here
        x->lua->callFunction(fnNamePtr, 0, 1);
        t_osc_bndl_u *lua_out_u = x->lua->table2bundle();
        critical_exit(x->lock);
        
        // retrieve result
        t_osc_bndl_s *lua_out_s = osc_bundle_u_serialize(lua_out_u);
        
        omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(lua_out_s), osc_bundle_s_getPtr(lua_out_s));
     
        osc_bundle_s_deepFree(lua_out_s);
        osc_bundle_u_free(lua_out_u);
    }
   
        
}

void oluajit_get_file_text_for_GUI(t_oluajit *x, char *filename, t_filepath path)
{
    t_filehandle fh;
    long err = path_opensysfile(filename, path, &fh, READ_PERM);
    if (!err)
    {
        t_handle textData = sysmem_newhandle(0);
        sysfile_readtextfile(fh, textData, 0, (t_sysfile_text_flags)(TEXT_LB_UNIX | TEXT_NULL_TERMINATE));
        sysfile_close(fh);
        
        if( textData )
        {
            critical_enter(x->lock);
            
            if (x->t_text)
                sysmem_freehandle(x->t_text);
            
            x->t_size = sysmem_handlesize(textData);
            
            x->t_text = sysmem_newhandleclear(x->t_size+1);
            sysmem_copyptr((char *)*textData, *x->t_text, x->t_size);
                        
            critical_exit(x->lock);
            
            sysmem_freehandle(textData);
        }
        
        
    }
    else
    {
        object_error((t_object *)x, "failed to load %s", filename);
    }
}

std::pair<std::string, t_filepath> oluajit_getFullPath(t_oluajit *x, char *filename)
{
    t_filepath path;
    t_fourcc filetypelist = FOUR_CHAR_CODE('Jlua');
    t_fourcc outtype;
    
    if( locatefile_extended(filename, &path, &outtype, &filetypelist, 1) )
    {
        object_error((t_object *)x, "can't find file %s", filename);
        return std::make_pair(std::string(), path);
    }
    
    char fullPath[MAX_PATH_CHARS], fullPathNative[MAX_PATH_CHARS];
    path_topathname(path, filename, fullPath);
    path_nameconform(fullPath, fullPathNative, PATH_STYLE_SLASH, PATH_TYPE_BOOT);
    return std::make_pair(std::string(fullPathNative), path);
}

void oluajit_doRead(t_oluajit *x, t_symbol *s, long argc, t_atom *argv)
{
    
    char filename[MAX_FILENAME_CHARS];
    strncpy_zero(filename, s->s_name, MAX_FILENAME_CHARS);
    
    auto fullname_maxpath = oluajit_getFullPath(x, filename);
    
    if( fullname_maxpath.first.empty() )
    {
        return;
    }
    
    x->filename = filename;
    x->fullpath = fullname_maxpath.first;
    x->pathID = fullname_maxpath.second;
    
    // start file watcher
    if( x->filewatcher ){
        filewatcher_stop(x->filewatcher);
        object_free(x->filewatcher);
    }
    
    x->filewatcher = filewatcher_new((t_object *)x, fullname_maxpath.second, filename);
    if(x->filewatcher)
        filewatcher_start(x->filewatcher);
    
    std::size_t lastSlash = x->fullpath.find_last_of("/\\");
    string addLuaPath = "package.path = '" + x->fullpath.substr(0, lastSlash+1) + "' .. '?.lua;' .. package.path";

    critical_enter(x->lock);
    
    x->lua->evalString(addLuaPath.c_str()); // add folder of loaded file in lua search path
    x->lua->loadFile(x->fullpath);
    
    critical_exit(x->lock);

    // read file for text editor
    oluajit_get_file_text_for_GUI(x, filename, fullname_maxpath.second);
    
}


void oluajit_read(t_oluajit *x)
{
    //defer((t_object *)x, (method)oluajit_doRead, x->filename.c_str(), 0, NULL);
    
}

void oluajit_reread(t_oluajit *x)
{
    critical_enter(x->lock);
    // reread file
    x->lua->loadFile(x->fullpath);
    
    critical_exit(x->lock);
    
    // update gui text
    sysmem_resizehandle(x->t_text, 0);
    oluajit_get_file_text_for_GUI(x, (char *)x->filename.c_str(), x->pathID);

}

void oluajit_filechanged(t_oluajit *x, char *filename, t_filepath path)
{
    
    critical_enter(x->lock);
    // reread file
    x->lua->loadFile(x->fullpath);
    
    critical_exit(x->lock);

    // update gui text
    sysmem_resizehandle(x->t_text, 0);
    oluajit_get_file_text_for_GUI(x, filename, path);
    
    
}

void oluajit_dblclick(t_oluajit *x)
{
    if (x->t_editor)
        object_attr_setchar(x->t_editor, gensym("visible"), 1);
    else
    {
        x->t_editor = (t_object *)object_new(CLASS_NOBOX, gensym("jed"), x, 0);

        if( x->filename != "" ){
            object_method(x->t_editor, gensym("settext"), *(x->t_text), gensym("utf-8"));
            object_method(x->t_editor, gensym("filename"), x->filename.c_str(), x->pathID );
            object_attr_setsym(x->t_editor, gensym("title"), gensym(x->filename.c_str()) );
            object_attr_setchar(x->t_editor, gensym("scratch"), 0);
        }
        else
        {
            object_attr_setsym(x->t_editor, gensym("title"), gensym("untitled.lua"));
            object_attr_setchar(x->t_editor, gensym("scratch"), 1);
        }
        
        object_method(x->t_editor, gensym("openwindow"));
    }
}

t_max_err oluajit_getfiletypelist(t_oluajit *x, void *types)
{
    post("oluajit_getfiletypelist");

    /*
    t_atom a;
    if (!x || !types)
        return MAX_ERR_GENERIC;

    atom_setsym(&a, gensym(".lua"));
    filetypelist_addtypes(types, 1, &a, true);
     */
    return MAX_ERR_NONE;
}

#define FourCC2Str(code) (char[5]){(code >> 24) & 0xFF, (code >> 16) & 0xFF, (code >> 8) & 0xFF, code & 0xFF, 0}

t_max_err oluajit_getdeftype(t_oluajit *x, t_fourcc *type)
{
    post("oluajit_getdeftype");
    *type = FOUR_CHAR_CODE('Jlua');
    
//    printf("post %s, \n", (char *)FourCC2Str( (*type) ));
    return MAX_ERR_NONE;
}

t_max_err oluajit_getdefext(t_oluajit *x, char *ext)
{
    if (!x || !ext)
        return MAX_ERR_GENERIC;
    post("oluajit_getdefext");
    //strcpy(ext, ".lua");
    ext = NULL;
    return MAX_ERR_NONE;
}

void oluajit_edclose(t_oluajit *x, char **text, long size)
{
    // hopefully changed from filewatcher
    x->t_editor = NULL;
}

long oluajit_edsave(t_oluajit *x, char **text, long size)
{
    //post("saved");
    return 0;
}


void oluajit_doc(t_oluajit *x)
{
    omax_doc_outletDoc(x->outlet);
}

void oluajit_assist(t_oluajit *x, void *b, long io, long num, char *buf)
{
    omax_doc_assist(io, num, buf);
}


void oluajit_free(t_oluajit *x)
{

    critical_enter(x->lock);
    if (x->t_text){
        sysmem_freehandle(x->t_text);
        x->t_text = NULL;
    }
        
    if( x->filewatcher ){
        filewatcher_stop(x->filewatcher);
        object_free(x->filewatcher);
    }
    critical_exit(x->lock);
    
    critical_free(x->lock);

}

void *oluajit_new(t_symbol* s, short argc, t_atom* argv)
{
    t_oluajit *x = (t_oluajit *)object_alloc(oluajit_class);
    if(x)
    {
        x->outlet = outlet_new((t_object *)x, NULL);
        
        x->lua = make_unique<LuaWrapper>();
        
        x->lua->setErrorCallback([&](std::string& errStr){
            //printf("%s\n", errStr.c_str() );
            object_error((t_object *)x, "%s\n", errStr.c_str() );
        });
        
        
        x->pathID = 0;
        
        x->t_editor = NULL;

        x->t_text = sysmem_newhandle(0);
        x->t_size = 0;
        x->filewatcher = NULL;

        critical_new(&(x->lock));
        
        /*
         // idk maybe better to not automatically add the library, but make people make their own?
         
        // preload oluajit_expr_library for helper functions
         
        auto fullpath_maxpathid = oluajit_getFullPath(x, (char *)"oluajit_expr_lib.lua");
        if( !fullpath_maxpathid.first.empty() )
        {
            x->lua->loadFile(fullpath_maxpathid.first);
        }
        */
        
        if( argc && atom_gettype( argv ) == A_SYM )
        {
            // load file argument
            oluajit_doRead(x, atom_getsym(argv), 0, NULL);
        }

       
        
//        attr_args_process(x, argc, argv);
    
        
    }
    return (void *)x;
}

BEGIN_USING_C_LINKAGE
int C74_EXPORT main(void)
{
    
    t_class *c = class_new("o.luajit", (method)oluajit_new, (method)oluajit_free, sizeof(t_oluajit), 0L, A_GIMME, 0);
    
    class_addmethod(c, (method)oluajit_assist,      "assist",       A_CANT,     0);
    class_addmethod(c, (method)oluajit_FullPacket,  "FullPacket",    A_GIMME,    0);

    class_addmethod(c, (method)oluajit_read,          "read",       A_GIMME, 0);
    class_addmethod(c, (method)oluajit_reread,         "reread",       A_CANT, 0);

    //class_addmethod(c, (method)oluajit_doc, "doc", 0);
   // class_addmethod(c, (method)oluajit_bang, "bang", 0);

    //class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
    
    // editor callbacks
    class_addmethod(c, (method)oluajit_dblclick,      "dblclick",    A_CANT, 0);
    class_addmethod(c, (method)oluajit_edclose,       "edclose",    A_CANT, 0);
    class_addmethod(c, (method)oluajit_edsave,        "edsave",    A_CANT, 0);
    
    class_addmethod(c, (method)oluajit_getdefext,     "getdefext",    A_CANT, 0);
    class_addmethod(c, (method)oluajit_getdeftype,    "getdeftype",    A_CANT, 0);
    class_addmethod(c, (method)oluajit_getdeftype,    "getfiletypelist",    A_CANT, 0);

    
    // file watcher callback
    class_addmethod(c, (method)oluajit_filechanged, "filechanged",    A_CANT, 0);
        
    class_register(CLASS_BOX, c);
    oluajit_class = c;
    
    post("%s by %s.", NAME, AUTHORS);
    post("Copyright (c) " COPYRIGHT_YEARS " ICST / ZHdK.  All rights reserved.");
}
END_USING_C_LINKAGE

