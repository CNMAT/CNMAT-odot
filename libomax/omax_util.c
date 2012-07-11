/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2010-12, The Regents of
  the University of California (Regents). 
  Permission to use, copy, modify, distribute, and distribute modified versions
  of this software and its documentation without fee and without a signed
  licensing agreement, is hereby granted, provided that the above copyright
  notice, this paragraph and the following two paragraphs appear in all copies,
  modifications, and distributions.

  IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
  SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING
  OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS
  BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

  REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
  PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
  HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE
  MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
*/

/** 	\file omax_util.c
	\author John MacCallum

*/

#ifndef WIN_VERSION
#include <Carbon.h>
#include <CoreServices.h>
#endif

#include <inttypes.h>
#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_match.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_atom_s.h"

#include "ext_dictionary.h"
#include "ext_dictobj.h"

//#define __ODOT_PROFILE__
//#include "osc_profile.h"

#ifndef WIN_VERSION
static int omax_util_haveDict;
static int omax_util_dictStubsResolved;
static t_dictionary *(*omax_util_dictobj_findregistered_retain)(t_symbol *name);
static t_max_err (*omax_util_dictobj_release)(t_dictionary *d);
#endif

t_symbol *omax_ps_FullPacket = NULL;

#ifdef WIN_VERSION
int omax_util_resolveDictStubs(void)
{
/*

something like this, i assume

// A simple program that uses LoadLibrary and 
// GetProcAddress to access myPuts from Myputs.dll. 
 
#include <windows.h> 
#include <stdio.h> 
 
typedef int (__cdecl *MYPROC)(LPWSTR); 
 
int main( void ) 
{ 
    HINSTANCE hinstLib; 
    MYPROC ProcAdd; 
    BOOL fFreeResult, fRunTimeLinkSuccess = FALSE; 
 
    // Get a handle to the DLL module.
 
    hinstLib = LoadLibrary(TEXT("MyPuts.dll")); 
 
    // If the handle is valid, try to get the function address.
 
    if (hinstLib != NULL) 
    { 
        ProcAdd = (MYPROC) GetProcAddress(hinstLib, "myPuts"); 
 
        // If the function address is valid, call the function.
 
        if (NULL != ProcAdd) 
        {
            fRunTimeLinkSuccess = TRUE;
            (ProcAdd) (L"Message sent to the DLL function\n"); 
        }
        // Free the DLL module.
 
        fFreeResult = FreeLibrary(hinstLib); 
    } 

    // If unable to call the DLL function, use an alternative.
    if (! fRunTimeLinkSuccess) 
        printf("Message printed from executable\n"); 

    return 0;

}
*/
	return 1;
}
#else
int omax_util_resolveDictStubs(void)
{
	if(omax_util_dictStubsResolved){
		return omax_util_haveDict;
	}
	omax_util_dictStubsResolved = 1;
	char *frameworkpath = NULL;
	short majorversion = maxversion() & 0xF00;
	switch(majorversion){
	case 0x600:
		frameworkpath = "/Applications/Max6/Max.app/Contents/Frameworks/MaxAPI.framework";
		break;
	case 0x500:
		frameworkpath = "/Applications/Max5/MaxMSP.app/Contents/Frameworks/MaxAPI.framework";
		break;
	default:
		return 0;
	}
	int frameworkpath_len = strlen(frameworkpath);
	OSStatus err;
	short path;
	char name[MAX_PATH_CHARS];
	long type = 0;

	omax_util_haveDict = 0;
	//char frameworkpath[MAX_PATH_CHARS];
	//sprintf(frameworkpath,"/Applications/Max6/Max.app/Contents/Frameworks/MaxAPI.framework");
	//if (!locatefile_extended(name, &path, &type, 0L, 0)){
	char natname[MAX_PATH_CHARS];

	//if(!path_topathname(path, name, frameworkpath)){
	CFStringRef str;
	CFURLRef url;
	CFBundleRef maxapi_bundle_ref;

	path_nameconform(frameworkpath, natname, PATH_STYLE_NATIVE, PATH_TYPE_PATH);
	str = CFStringCreateWithCString(kCFAllocatorDefault, natname, kCFStringEncodingUTF8);
	if((url = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, str, kCFURLPOSIXPathStyle, true))){
		// we need to get rid of this in a quitmethodthingy
		if((maxapi_bundle_ref = CFBundleCreate(kCFAllocatorDefault, url))){
			omax_util_dictobj_findregistered_retain = CFBundleGetFunctionPointerForName(maxapi_bundle_ref, CFSTR("dictobj_findregistered_retain"));
			if(!omax_util_dictobj_findregistered_retain){
				return 0;
			}

			omax_util_dictobj_release = CFBundleGetFunctionPointerForName(maxapi_bundle_ref, CFSTR("dictobj_release"));
			if(!omax_util_dictobj_release){
				return 0;
			}
			/*
			  The above file explicitly loads each function to a typed function pointer like the following:
			  pf_cgCreateContext = CFBundleGetFunctionPointerForName(g_cg_bundle_ref, CFSTR("cgCreateContext"));
			  if(!pf_cgCreateContext) {
			  error("jit.gl.shader: unable to load CG framework function 'cgCreateContext'");
			  }
			*/
			omax_util_haveDict = 1;
		}
	broken:
		CFRelease(url);
	}
	CFRelease(str);
	//}
	//}
	return omax_util_haveDict;
}
#endif

void omax_util_dictionaryToOSC(t_dictionary *dict, t_osc_bndl_u *bndl_u)
{
	if(!dict || !bndl_u){
		return;
	}
	long nkeys = 0;
	t_symbol **keys = NULL;
	dictionary_getkeys(dict, &nkeys, &keys);
	if(nkeys && keys){
		for(int i = 0; i < nkeys; i++){
			char *key = keys[i]->s_name;
			int keylen = strlen(key);
			char addy[keylen + 2];
			if(*key != '/'){
				*addy = '/';
				strncpy(addy + 1, key, keylen + 1);
			}else{
				strncpy(addy, key, keylen + 1);
			}
			long argc = 0;
			t_atom *argv = NULL;
			dictionary_getatoms(dict, keys[i], &argc, &argv);
			if(argc == 1){
				if(atom_gettype(argv) == A_OBJ){
					t_dictionary *dict2 = object_dictionaryarg(1, argv);
					dictionary_dump(dict2, 0, 0);
					if(dict2){
						t_osc_bndl_u *bndl2_u = osc_bundle_u_alloc();
						omax_util_dictionaryToOSC(dict2, bndl2_u);
						long len = 0; 
						char *bndl2 = NULL;
						osc_bundle_u_serialize(bndl2_u, &len, &bndl2);
						t_osc_msg_u *msg = osc_message_u_alloc();
						osc_message_u_setAddress(msg, addy);
						osc_message_u_appendBndl(msg, len, bndl2);
						osc_bundle_u_addMsg(bndl_u, msg);
						osc_bundle_u_free(bndl2_u);
						osc_mem_free(bndl2);
						continue;
					}
				}
			}
			t_osc_msg_u *msg = NULL;
			omax_util_maxAtomsToOSCMsg_u(&msg, gensym(addy), argc, argv);
			osc_bundle_u_addMsg(bndl_u, msg);
		}
	}
	dictionary_freekeys(dict, nkeys, keys);
}

void omax_util_processDictionary(void *x, t_symbol *name, void (*fp)(void *x, long len, long ptr))
{
#ifdef WIN_VERSION
	t_dictionary *dict = dictobj_findregistered_retain(name);
#else
	t_dictionary *dict = omax_util_dictobj_findregistered_retain(name);
#endif
	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	omax_util_dictionaryToOSC(dict, bndl_u);
	long len = 0;
	char *bndl = NULL;
	osc_bundle_u_serialize(bndl_u, &len, &bndl);
	fp(x, len, (long)bndl);
	osc_bundle_u_free(bndl_u);
	osc_mem_free(bndl);
#ifdef WIN_VERSION
	dictobj_release(dict);
#else
	omax_util_dictobj_release(dict);
#endif
}

void omax_util_bundleToDictionary(t_osc_bndl_s *bndl, t_dictionary *dict)
{
	if(!bndl || !dict){
		return;
	}
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(osc_bundle_s_getLen(bndl), osc_bundle_s_getPtr(bndl));
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		int n = omax_util_getNumAtomsInOSCMsg(m);
		t_atom a[n];
		t_atom aa[n];
		int nn = 0;
		omax_util_oscMsg2MaxAtoms(m, a);
		t_symbol *k = gensym(atom_getsym(a)->s_name + 1);
		for(int i = 1; i < n; i++){
			if(atom_gettype(a + i) == A_SYM){
				if(!omax_ps_FullPacket){
					omax_ps_FullPacket = gensym("FullPacket");
				}
				if(atom_getsym(a + i) == omax_ps_FullPacket){
					t_osc_bndl_s *bndl2 = osc_bundle_s_alloc(atom_getlong(a + i + 1),
										 (char *)atom_getlong(a + i + 2));
					t_dictionary *dict2 = dictionary_new();
					omax_util_bundleToDictionary(bndl2, dict2);
					atom_setobj(aa + nn++, (t_object *)dict2);
					i += 2;
					osc_bundle_s_free(bndl2);
					continue;
				}
			}
			aa[nn++] = a[i];
		}
		switch(nn){
		case 0:
			break;
		case 1:
			dictionary_appendatom(dict, k, aa);
			break;
		default:
			dictionary_appendatoms(dict, k, nn, aa);
			break;
		}
	}
	osc_bndl_it_s_destroy(it);
}

int omax_util_liboErrorHandler(const char * const errorstr)
{
	// stupid max window doesn't respect newlines
	int len = strlen(errorstr) + 1;
	char buf[len];
	strncpy(buf, errorstr, len);

	char *s = buf;
	char *e = buf;
	while(*e){
		if(*e == '\n'){
			*e = '\0';
			error("%s", s);
			s = e + 1;
		}
		e++;
	}
	if(e != s){
		error("%s", s);
	}
	return 0;
}

void omax_util_outletOSC(void *outlet, long len, char *ptr)
{
	if(!omax_ps_FullPacket){
		omax_ps_FullPacket = gensym("FullPacket");
	}
	t_atom out[2];
	atom_setlong(out, len);
	atom_setlong(out + 1, (long)ptr);
	outlet_anything(outlet, omax_ps_FullPacket, 2, out);
}

int omax_util_getNumAtomsInOSCMsg(t_osc_msg_s *m)
{
	int n = 1; // address;
	t_osc_msg_it_s *it = osc_msg_it_s_get(m);
	while(osc_msg_it_s_hasNext(it)){
		t_osc_atom_s *a = osc_msg_it_s_next(it);
		switch(osc_atom_s_getTypetag(a)){
		case OSC_BUNDLE_TYPETAG:
			n += 3; // FullPacket <len> <address>
			break;
		default:
			n += 1;
			break;
		}
	}
	osc_msg_it_s_destroy(it);
	return n;
}

void omax_util_oscMsg2MaxAtoms(t_osc_msg_s *m, t_atom *av)
{
	t_atom *ptr = av;
	if(osc_message_s_getAddress(m)){
		atom_setsym(ptr, gensym(osc_message_s_getAddress(m)));
	}else{
		// there are some cases when a message won't have an address
	}
	ptr++;

	t_osc_msg_it_s *it = osc_msg_it_s_get(m);
	while(osc_msg_it_s_hasNext(it)){
		t_osc_atom_s *a = osc_msg_it_s_next(it);
		switch(osc_atom_s_getTypetag(a)){
		case 'i':
		case 'I':
		case 'h':
		case 'H':
		case 'T':
		case 'F':
		case 'N':
			atom_setlong(ptr++, osc_atom_s_getInt32(a));
			break;
		case 'f':
		case 'd':
			atom_setfloat(ptr++, osc_atom_s_getFloat(a));
			break;
		case 's':		
			{
				int len = osc_atom_s_getStringLen(a);
				char buf[len + 1];
				char *bufptr = buf;
				osc_atom_s_getString(a, len + 1, &bufptr);
				atom_setsym(ptr++, gensym(buf));
			}
			break;
		case 'b':
			{
				int j, n = osc_atom_s_sizeof(a);
				char *data = osc_message_s_getData(m);
				atom_setlong(ptr++, ntoh32(*((uint32_t *)(data))));
				for(j = 0; j < n; j++){
					atom_setlong(ptr++, (long)data[j]);
				}
			}
		case OSC_BUNDLE_TYPETAG:
			{
				char *data = osc_atom_s_getData(a);
				atom_setsym(ptr++, gensym("FullPacket"));
				atom_setlong(ptr++, ntoh32(*((uint32_t *)data)));
				atom_setlong(ptr++, (long)(data + 4));
			}
			break;
		}
	}
	osc_msg_it_s_destroy(it);
}

// encode a FullPacket <len> <ptr> message as a nested bundle
void omax_util_maxFullPacketToOSCAtom_u(t_osc_atom_u **osc_atom, t_atom *len, t_atom *ptr){
	if(!(*osc_atom)){
		*osc_atom = osc_atom_u_alloc();
	}
	osc_atom_u_setBndl(*osc_atom, atom_getlong(len), (char *)atom_getlong(ptr));
}

void omax_util_maxAtomToOSCAtom_u(t_osc_atom_u **osc_atom, t_atom *max_atom){
	if(!(*osc_atom)){
		*osc_atom = osc_atom_u_alloc();
	}
	switch(atom_gettype(max_atom)){
	case A_FLOAT:
		osc_atom_u_setFloat(*osc_atom, atom_getfloat(max_atom));
		break;
	case A_LONG:
		osc_atom_u_setInt32(*osc_atom, atom_getlong(max_atom));
		break;
	case A_SYM:
		osc_atom_u_setString(*osc_atom, atom_getsym(max_atom)->s_name);
		break;
	}
}

t_osc_err omax_util_maxAtomsToOSCMsg_u(t_osc_msg_u **msg, t_symbol *address, int argc, t_atom *argv){
	if(!(*msg)){
		*msg = osc_message_u_alloc();
		if(address){
			t_osc_err e = osc_message_u_setAddress(*msg, address->s_name);
			if(e){
				return e;
			}
		}
		int i;
		for(i = 0; i < argc; i++){
			t_osc_atom_u *a = NULL;
			if(atom_gettype(argv + i) == A_SYM){
				if((atom_getsym(argv + i) == gensym("FullPacket")) && argc - i >= 3){
					// FullPacket to be encoded as nested bundle
					omax_util_maxFullPacketToOSCAtom_u(&a, argv + 1, argv + 2);
					i += 2;
				}else{
					omax_util_maxAtomToOSCAtom_u(&a, argv + i);
				}
			}else{
				omax_util_maxAtomToOSCAtom_u(&a, argv + i);
			}
			osc_message_u_appendAtom(*msg, a);
		}
	}
	return OSC_ERR_NONE;
}
