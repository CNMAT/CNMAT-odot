/*
 
 two outlets, address and value
 display options: show address (default) or show value
 
 todo: make submenus for subbundles
 
 */

#include "m_pd.h"
#include "g_canvas.h"
#include "g_all_guis.h"
#include <stdlib.h>
#include <string.h>

#include "osc.h"
#include "osc_mem.h"
#include "osc_match.h"
#include "osc_parser.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_message_u.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "osc_rset.h"
#include "osc_query.h"

#include "o.h"

static t_class *omenu_class;

typedef struct _omenu {
    t_object    ob;
    
    t_glist     *glist;
    int         width;
    int         height;

    int         m_width;
    int         m_height;

    int         menuopen;
    
    char        **menu;
    char        *selector;
    
    int         selected;
    int         numitems;
    
    char        *tcl_namespace;
    char        *canvas_id;
    char        *m_id;
    char        *m_canvas_id;
    
    char        *button_tag;
    char        *io_tag;
    
    char        *receive_name;
    
    char        *hex;
    
    void        *bndl; // this should be a t_osc_bndl
    long        len;
    long        buflen;
	
    int         displayvalues;
    
    int         exists;
    void        **outlets;
} t_omenu;

t_widgetbehavior omenu_widget;

enum {
	OMENU_U,
	OMENU_S,
};

t_symbol *ps_newline, *ps_FullPacket;


void omenu_atoms2MenuString(t_omenu *x, int argc, t_atom *argv, int id)
{
	if(atom_gettype(argv) != A_SYM){
		error("o.message: not a proper OSC message");
		return;
	}
	if(argc == 1){
		// one arg and it's a symbol.  parse this as it may be an address
		// without arguments, or it may be a complete message like "/foo 1 2 3"
        
		return;
	}
    
    if (id < 0 || id > x->numitems-1) {
        post("error id out of range %d", id);
        return;
    }
    
	// else
	t_symbol *address = atom_getsym(argv);
	if(*(address->s_name) != '/'){
		error("o.message: %s is not a valid OSC address", address->s_name);
		return;
	}
    
	int len = 2048;
	char *buf = (char *)osc_mem_alloc(2048);
	char *bufptr = buf;
	int i;

//	bufptr += sprintf(bufptr, "%s ", address->s_name);
	for(i = 1; i < argc; i++){
		if(len - (bufptr - buf) < 128){
			int offset = bufptr - buf;
			buf = (char *)osc_mem_resize(buf, len + 1024);
			if(!(buf)){
				error("o.message: out of memory!");
				return;
			}
			len += 1024;
			bufptr = buf + offset;
		}
		switch(atom_gettype(argv + i)){
            case A_LONG:
			{
				int32_t l = atom_getlong(argv + i);
				bufptr += sprintf(bufptr, "%"PRId32" ", l);
			}
                break;
            case A_FLOAT:
			{
				float f = atom_getfloat(argv + i);
				bufptr += sprintf(bufptr, "%f", f);
				bufptr--;
				while(*bufptr == '0'){
					*bufptr = ' ';
					*(bufptr + 1) = '\0';
					bufptr--;
				}
				bufptr++;
				*bufptr++ = ' ';
				*bufptr = '\0';
			}
                break;
            case A_SYM:
			{
				t_symbol *sym = atom_getsym(argv + i);
				if(sym == ps_newline){
					bufptr += sprintf(bufptr, "%s", sym->s_name);
				}else{
					bufptr += sprintf(bufptr, "%s ", sym->s_name);
				}
			}
                break;
		}
	}
    
    strcpy(x->menu[id], buf);
    
	if(buf){
		osc_mem_free(buf);
	}

}



void omenu_setMenu(t_omenu *x)
{
    int count = 0;
    t_osc_bndl_it_s *it = osc_bndl_it_s_get(x->len, x->bndl);
    while(osc_bndl_it_s_hasNext(it)){
        t_osc_msg_s *msg = osc_bndl_it_s_next(it);
        int natoms = omax_util_getNumAtomsInOSCMsg(msg);
        t_atom atoms[natoms];
        if(omax_util_oscMsg2MaxAtoms(msg, atoms))
        {
            object_error((t_object *)x, "pure data does not like { }, hopefully someone will fix this eventually\n");
            return;
        }
        
        if(count < 4096)
        {
            x->numitems = count+1;
            
            if(x->displayvalues)
            {
                omenu_atoms2MenuString(x, natoms, atoms, count++);
            } else {
                char *address = atom_getsym(atoms)->s_name;
                strcpy(x->menu[count++], address);
            }
        }
        else
        {}//else error
        
        //            outlet_anything(outlet, address, natoms - 1, atoms + 1); //<< the rest of the data is in the atoms
    }
    osc_msg_it_s_destroy(it);
    
    x->numitems = count;

    if(glist_isvisible(x->glist) && gobj_shouldvis(&x->ob.te_g, x->glist))
    {
        sys_vgui("%s itemconfigure mtext%s -text {%s\n} -fill black \n", x->canvas_id, x->button_tag, x->menu[0]);
        sys_vgui("%s itemconfigure carrot%s -text v \n", x->canvas_id, x->button_tag);
    }
   
}

void omenu_fullPacket(t_omenu *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR

    //store bundle
	osc_bundle_s_wrap_naked_message(len, ptr);

    if(len > 0){

        if(len > x->buflen){
            x->bndl = osc_mem_resize(x->bndl, len);
            if(!(x->bndl)){
                object_error((t_object *)x, "ran out of memory!\n");
                critical_exit(x->lock);
                return;
            }
            x->buflen = len;
        }
        memcpy(x->bndl, ptr, len); //<< store bundle
        x->len = len;
        critical_exit(x->lock);
        omenu_setMenu(x);
    }
}



void omenu_anything(t_omenu *x, t_symbol *msg, int argc, t_atom *argv)
{
    //outlet_anything(x->outlet, msg, argc, argv);
}


static void omenu_getrect(t_gobj *z, t_glist *glist,int *xp1, int *yp1, int *xp2, int *yp2)
{
    t_omenu *x = (t_omenu *)z;
    
    *xp1 = text_xpix(&x->ob, glist);
    *yp1 = text_ypix(&x->ob, glist);
    *xp2 = x->ob.te_xpix + x->width;
    *yp2 = x->ob.te_ypix + x->height;

}

static void omenu_displace(t_gobj *z, t_glist *glist,int dx, int dy)
{
    t_omenu *x = (t_omenu *)z;
    sys_vgui("%s move %s %d %d\n", x->canvas_id, x->button_tag, dx, dy );
    sys_vgui("%s move mtext%s %d %d\n", x->canvas_id, x->button_tag, dx, dy );
    sys_vgui("%s move carrot%s %d %d\n", x->canvas_id, x->button_tag, dx, dy );

    
    //sys_vgui(".x%lx.c move %lxLINE %d %d\n", glist, z, dx, dy );
    x->ob.te_xpix += dx;
    x->ob.te_ypix += dy;
    
    int x1, y1, x2, y2;
    omenu_getrect(z, glist, &x1, &y1, &x2, &y2);
    glist_drawiofor(glist, &x->ob, 0, x->io_tag, x1, y1, x2, y2);
    canvas_fixlinesfor(glist, &x->ob);
 //

}

static void omenu_delete(t_gobj *z, t_glist *glist)
{
    t_omenu *x = (t_omenu *)z;
//    post("%s %d", __func__, x->exists);

    canvas_deletelinesfor(glist, &x->ob);
    if(x->exists && glist_getcanvas(glist)->gl_editor)
    {
        glist_eraseiofor(glist, &x->ob, x->io_tag);
        x->m_height = 0;
        sys_vgui("%s delete mtext%s \n", x->canvas_id, x->button_tag);
        sys_vgui("%s delete carrot%s \n", x->canvas_id, x->button_tag);
        sys_vgui("%s delete %s \n", x->canvas_id, x->button_tag);
        sys_vgui("destroy %s\n", x->m_id);
        x->menuopen = 0;
    }
}


void omenu_dropdownFocusOut(t_omenu *x)
{
//    post("%s", __func__);
    sys_vgui("destroy %s\n", x->m_id);
    x->m_height = 0;
    sys_vgui("%s itemconfigure carrot%s -text v \n", x->canvas_id, x->button_tag);
    sys_vgui("%s itemconfigure mtext%s -fill black \n", x->canvas_id, x->button_tag);
    x->menuopen = 0;
}


void omenu_outsideCLick(t_omenu *x)
{
//    post("%s", __func__);
    sys_vgui("destroy %s\n", x->m_id);
    x->m_height = 0;
    sys_vgui("%s itemconfigure carrot%s -text v  \n", x->canvas_id, x->button_tag);
    sys_vgui("%s itemconfigure mtext%s -fill black \n", x->canvas_id, x->button_tag);
    x->menuopen = 0;
}

void omenu_selectionClick(t_omenu *x, float f)
{
 //   post("clicked %f", f);
    int id = (int)f;
    id = (id > 0) && (id < x->numitems) ? id : 0;
    x->selected = id;

    int x1, y1, x2, y2;
    omenu_getrect((t_gobj *)x, x->glist, &x1, &y1, &x2, &y2);
    sys_vgui("%s itemconfigure mtext%s -text {%s\n} -fill black \n", x->canvas_id, x->button_tag, x->menu[id]);
    sys_vgui("%s itemconfigure carrot%s -text v \n", x->canvas_id, x->button_tag);
    omenu_dropdownFocusOut(x);    
    
    int count = 0;
    t_osc_bndl_it_s *it = osc_bndl_it_s_get(x->len, x->bndl);
    while(osc_bndl_it_s_hasNext(it)){
        if(x->displayvalues && (x->selected == count++))
        {
            t_osc_msg_s *msg = osc_bndl_it_s_next(it);
            int natoms = omax_util_getNumAtomsInOSCMsg(msg);
            t_atom atoms[natoms];
            if( omax_util_oscMsg2MaxAtoms(msg, atoms))
            {
                object_error((t_object *)x, "pure data does not like { }, hopefully someone will fix this eventually\n");
                return;
            }
            t_symbol *address = atom_getsym(atoms);
            outlet_symbol(x->outlets[0], address);
            outlet_anything(x->outlets[1], &s_list, natoms - 1, atoms + 1);
            
            break;

        }
        else
        {
            t_osc_msg_s *msg = osc_bndl_it_s_next(it);
            int natoms = omax_util_getNumAtomsInOSCMsg(msg);
            t_atom atoms[natoms];
            if( omax_util_oscMsg2MaxAtoms(msg, atoms))
            {
                object_error((t_object *)x, "pure data does not like { }, hopefully someone will fix this eventually\n");
                return;
            }
            t_symbol *address = atom_getsym(atoms);
            if (!strcmp(x->menu[id], address->s_name)) {
                outlet_symbol(x->outlets[0], address);
                outlet_anything(x->outlets[1], &s_list, natoms - 1, atoms + 1);

                break;
            }
        }
        
    }
    osc_msg_it_s_destroy(it);
    
    
    
}

void omenu_constrainPosToScreen(t_omenu *x)
{
    int x1, y1, x2, y2;
    omenu_getrect((t_gobj *)x, x->glist, &x1, &y1, &x2, &y2);
    
    int wx1 = x1 + x->glist->gl_screenx1;
    int wy1 = x->height + y2 + x->glist->gl_screeny1 + 6;
    
//    sys_vgui("::pdwindow::post \"%x %s Tk offsety = [expr [winfo screenheight %s] - %d]\n\"\n", x, __func__, x->m_id, x->m_height + wy1);
    sys_vgui("offsetMenu %s %d %d %d %d \n", x->m_id, wx1, wy1, x->m_width, x->m_height);
  //  post("%s offset function input %s %d %d %d %d", __func__, x->m_id, wx1, wy1, x->m_width, x->m_height);
 
}

void omenu_addItem(t_omenu *x, int id, char *str)
{
    int x1, y1, x2, y2;
    int fontheight = x->glist->gl_font + 6;//sys_fontheight(glist_getfont(x->glist));
    omenu_getrect((t_gobj *)x, x->glist, &x1, &y1, &x2, &y2);
    
    int wx1 = x1 + x->glist->gl_screenx1;
    int wy1 = x->height + y2 + x->glist->gl_screeny1 + 4;

    int itemY1 = (fontheight * id) + 6;
    int itemY2 = itemY1 + fontheight;
    x->m_height += fontheight;
    
    sys_vgui("%s create rectangle %d %d %d %d -tags rect%s%d -fill #f8f8f6 -outline white \n",
             x->m_canvas_id, 3, itemY1, x->width-6, itemY2, x->button_tag, id);
    sys_vgui("%s create text %d %d -anchor nw -width %d -font {{%s} %d %s} -tags text%s%d -text {%s\n} -fill %s\n",
             x->m_canvas_id, 6, itemY1, x->width-12, sys_font, glist_getfont(x->glist), sys_fontweight, x->button_tag, id, str, ((id == x->selected) ? "blue" : "black"));
    
    sys_vgui("%s bind rect%s%d <Enter> {%s itemconfigure rect%s%d -fill yellow } \n", x->m_canvas_id, x->button_tag, id, x->m_canvas_id, x->button_tag, id);
    sys_vgui("%s bind text%s%d <Enter> {%s itemconfigure rect%s%d -fill yellow } \n", x->m_canvas_id, x->button_tag, id, x->m_canvas_id, x->button_tag, id);
    sys_vgui("%s bind rect%s%d <Leave> {%s itemconfigure rect%s%d -fill #f8f8f6 } \n",  x->m_canvas_id, x->button_tag, id, x->m_canvas_id, x->button_tag, id );
    sys_vgui("%s bind text%s%d <Leave> {%s itemconfigure rect%s%d -fill #f8f8f6 } \n",  x->m_canvas_id, x->button_tag, id, x->m_canvas_id, x->button_tag, id );

    sys_vgui("%s bind rect%s%d <Button-1> {+pdsend \"%s selection %d \"} \n",  x->m_canvas_id, x->button_tag, id, x->receive_name, id );
    sys_vgui("%s bind text%s%d <Button-1> {+pdsend \"%s selection %d \"} \n",  x->m_canvas_id, x->button_tag, id, x->receive_name, id );

    sys_vgui("bind %s <FocusOut> {+pdsend {%s focusout }}\n", x->m_id, x->receive_name);
    sys_vgui("bind %s <Leave> {+pdsend {%s focusout } }\n", x->m_id, x->receive_name);
    
    sys_vgui("wm geometry %s %dx%d+[expr %d - int([%s canvasx 0])]+[expr %d - int([%s canvasy 0])]  \n", x->m_id, x->m_width, x->m_height+10, wx1, x->canvas_id, wy1, x->canvas_id);
    
    //sys_vgui("::pdwindow::post \"%x %s Tk screenheight %d == [winfo screenheight %s]\n\"\n", x, __func__, x->m_height + wy1, x->m_id);
}


static int omenu_click(t_gobj *z, t_glist *glist, int xpix, int ypix, int shift, int alt, int dbl, int doit)
{
    t_omenu *x = (t_omenu *)z;
    //on click
    if(doit && x->numitems){
        if(x->menuopen)
        {
            sys_vgui("destroy %s\n", x->m_id);
            x->m_height = 0;
        }
            
        sys_vgui("%s itemconfigure carrot%s -text ^ \n", x->canvas_id, x->button_tag);
        sys_vgui("%s itemconfigure mtext%s -fill blue \n", x->canvas_id, x->button_tag);
        sys_vgui("toplevel %s ; wm overrideredirect %s 1 ; wm geometry %s %dx%d+100+100 ; wm attributes %s -transparent 0 ; pack [canvas %s] -fill both -expand 1 \n", x->m_id, x->m_id, x->m_id, x->m_width, x->m_height, x->m_id, x->m_canvas_id, x->m_canvas_id); //-alpha 0.99
        int i;
        for (i = 0; i < x->numitems; i++) {
            omenu_addItem(x, i, x->menu[i]);
        }
        omenu_constrainPosToScreen(x);
        x->menuopen = 1;
    } else {
        if(x->menuopen)
            omenu_outsideCLick(x);
        
    }
    return 1;
}

void omenu_vis(t_gobj *z, t_glist *glist, int flag)
{
//    post("%s %d", __func__, flag);
    
    if(flag)
    {
        t_omenu *x = (t_omenu *)z;
        int x1, x2, y1, y2;
    
        //store canvas binding for reset?
        omenu_getrect((t_gobj *)x, x->glist, &x1, &y1, &x2, &y2);
        omenu_setMenu(x);
        
        sys_vgui("%s create rectangle %d %d %d %d -tags %s -fill #f8f8f6 \n", x->canvas_id, x1, y1, x2, y2, x->button_tag);

        sys_vgui("%s create text %d %d -anchor nw -width %d -font {{%s} %d %s} -tags mtext%s -text {%s\n} \n",
                 x->canvas_id, x1+6, y1+2, x->width-12, sys_font, glist_getfont(x->glist), sys_fontweight, x->button_tag, x->menu[0]);

        sys_vgui("%s create text %d %d -anchor nw -width %d -font {{%s} %d bold} -tags carrot%s -text v \n",
                 x->canvas_id, x2-sys_fontwidth(glist_getfont(glist))-2, y1+2, 4, sys_font, glist_getfont(x->glist), x->button_tag);

        
        glist_drawiofor(glist, &x->ob, 1, x->io_tag, x1, y1, x2, y2);
        canvas_fixlinesfor(glist, &x->ob);

        x->exists = 1;

    } else {
//        omenu_delete(z, glist);
    }
}

static void omenu_select(t_gobj *z, t_glist *glist, int state)
{
    t_omenu *x = (t_omenu *)z;
    
    if (glist_isvisible(glist) && gobj_shouldvis(&x->ob.te_g, glist)){
        sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->button_tag, (state? "blue" : "black"));
        sys_vgui(".x%lx.c itemconfigure mtext%s -fill %s\n", glist, x->button_tag, (state? "blue" : "black"));
        sys_vgui(".x%lx.c itemconfigure carrot%s -fill %s\n", glist, x->button_tag, (state? "blue" : "black"));
        
    }
}

static void omenu_save(t_gobj *z, t_binbuf *b)
{
    
    t_omenu *x = (t_omenu *)z;
    
    
    binbuf_addv(b, "ssiis;", gensym("#X"),gensym("obj"), (t_int)x->ob.te_xpix, (t_int)x->ob.te_ypix, gensym("o.menu"));
}

void omenu_setdisplymode(t_omenu *x, float t)
{
//    post("%s %f", __func__, t);
    x->displayvalues = (int)(t > 0);
    if (glist_isvisible(x->glist) && gobj_shouldvis(&x->ob.te_g, x->glist))
        omenu_setMenu(x);
}

void omenu_free(t_omenu *x)
{
    free(x->tcl_namespace);
    free(x->io_tag);
    free(x->button_tag);
    free(x->canvas_id);
    free(x->m_canvas_id);
    free(x->m_id);
    int i;
    for( i = 0; i < 1024; i++)
    {
        free(x->menu[i]);
    }
    free(x->menu);
    
    pd_unbind(&x->ob.ob_pd, gensym(x->receive_name));
    free(x->receive_name);
    
    if(x->bndl){
		osc_mem_free(x->bndl);
	}
    
    free(x->outlets);
    
}



void *omenu_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_omenu *x = (t_omenu *)pd_new(omenu_class);

    if(x)
    {
        x->outlets = (void **)malloc(2 * sizeof(void *));
        x->outlets[0] = outlet_new(&x->ob, NULL);
        x->outlets[1] = outlet_new(&x->ob, NULL);
        
        x->glist = canvas_getcurrent();
        
        x->selected = -1;
        x->numitems = 0;
        
        x->displayvalues = 0;
        
        x->menu = (char **)malloc(sizeof(char *) * 1024 );
        int i;
        for( i = 0; i < 1024; i++)
        {
            x->menu[i] = (char *)malloc(sizeof(char) * 4096);
            memset(x->menu[i], '\0', 4096);
        }
        
        char buf[MAXPDSTRING];
        sprintf(buf,".x%lx.c", (long unsigned int)glist_getcanvas(x->glist));
        x->canvas_id = NULL;
        x->canvas_id = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->canvas_id, buf);
            
        sprintf(buf, "%s.w%lxdropdown", x->canvas_id, (long)x);
        x->m_id = NULL;
        x->m_id = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->m_id, buf);

        sprintf(buf, "%s.c%lxcanvas", x->m_id, (long)x);
        x->m_canvas_id = NULL;
        x->m_canvas_id = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->m_canvas_id, buf);
        
        sprintf(buf, "%lxomenu", (long unsigned int)x);
        x->button_tag = NULL;
        x->button_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->button_tag, buf);
        
        sprintf(buf, "%lxomenuIO", (long)x);
        x->io_tag = NULL;
        x->io_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->io_tag, buf);
        
        sprintf(buf,"omenu%lx",(long unsigned int)x);
        x->tcl_namespace = NULL;
        x->tcl_namespace = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->tcl_namespace, buf);
        
        sprintf(buf, "#omenu%lx", (long)x);
        x->receive_name = NULL;
        x->receive_name = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        strcpy(x->receive_name, buf);

        sys_vgui("proc offsetMenu {m_name m_x1 m_y1 m_width m_height} {\n\
                    set scrHeight [winfo screenheight $m_name] \n\
                    set dy [expr $scrHeight - [expr $m_y1 + $m_height]] \n\
                    if {$dy < 0} { \n\
                        set shifted_y1 [expr $m_y1 + $dy - 8] \n\
                        wm geometry $m_name ${m_width}x[expr ${m_height} + 8]+${m_x1}+${shifted_y1} \n\
                    }\n\
                 }\n"); //

        pd_bind(&x->ob.ob_pd, gensym(x->receive_name));

        x->width = 100;
        x->height = x->glist->gl_font + 6;//sys_fontheight(glist_getfont(x->glist)) + 4;
        x->m_width = x->width;
        x->m_height = 0;

        x->len = 0;
        x->buflen = 0;
        x->bndl = NULL;

        x->exists = 0;
        
        x->menuopen = 0;
    }
    return (void *)x;
}

void setup_o0x2emenu(void)
{
    omenu_class = class_new(gensym("o.menu"), (t_newmethod)omenu_new, (t_method)omenu_free, sizeof(t_omenu), 0, A_GIMME, 0);
    
    class_addmethod(omenu_class, (t_method)omenu_selectionClick, gensym("selection"), A_DEFFLOAT, 0);
    class_addmethod(omenu_class, (t_method)omenu_dropdownFocusOut, gensym("focusout"), A_CANT, 0);
    class_addmethod(omenu_class, (t_method)omenu_outsideCLick, gensym("outsideclick"), A_CANT, 0);
    class_addmethod(omenu_class, (t_method)omenu_fullPacket, gensym("FullPacket"), A_GIMME, 0);
    class_addmethod(omenu_class, (t_method)omenu_setdisplymode, gensym("displaymode"), A_DEFFLOAT, 0);
    
    omenu_widget.w_getrectfn = omenu_getrect;
    omenu_widget.w_displacefn = omenu_displace;
    omenu_widget.w_deletefn = omenu_delete;
    omenu_widget.w_visfn = omenu_vis;
    omenu_widget.w_selectfn = omenu_select;
    omenu_widget.w_activatefn = NULL;
    omenu_widget.w_clickfn = omenu_click;

    class_setsavefn(omenu_class, &omenu_save);
    class_setwidget(omenu_class, &omenu_widget);
    
    ps_newline = gensym("\n");
	ps_FullPacket = gensym("FullPacket");
    
}
