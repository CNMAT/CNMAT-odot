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

/** 	\file omax_class.c
	\author John MacCallum

*/

#ifndef WIN_VERSION
#include <Carbon.h>
#include <CoreServices.h>
#endif

#include <inttypes.h>

#include "omax_class.h"
#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_bundle.h"
#include "osc_message.h"
#include "osc_match.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_atom_s.h"

#define __ODOT_PROFILE__
#include "profile.h"


typedef struct _context{
	t_object *ob;
	t_symbol *osc_classname;
	t_symbol *classname;
	char *buf;
	int bufpos;
	int should_output_state;
} t_context;
	
typedef struct _charbuffer{
	char *buf;
	int bufpos;
	int buflen;
} t_charbuffer;

typedef struct _schemalist{
	struct _charbuffer *addresses;
	int address_buf_pos;
	int address_buf_len;
	int nbytes; // the sum of the addresses[i].bufpos
} t_schemalist;

static t_symbol *ps_oscschemalist, *ps_oscioreport;

t_class *omax_class_new(char *name,
				method ctor,
				method dtor,
				size_t structsize,
				size_t osc_ob_offset,
				method fullpacket_method)
{
	method fp;
	if(fullpacket_method){
		fp = fullpacket_method;
	}else{
		fp = (method)omax_FullPacket;
	}
	t_class *c = class_new(name, ctor, dtor, structsize, 0L, A_GIMME, 0);
	t_hashtab *ht = hashtab_new(0);
	omax_class_makeHashtabName(name)->s_thing = (t_object *)ht;
	hashtab_store(ht, gensym("cnmat_internal_osc_ob_offset"), (t_object *)osc_ob_offset);
	class_addmethod(c, fp, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)omax_tellmeeverything, "tellmeeverything", 0);
	//OMAX_ADDMETHOD(c, (method)omax_tellmeeverything, "tellmeeverything", 0);
	//OMAX_ADDMETHOD(c, (method)omax_probe, "probe", 0);
	OMAX_ADDMETHOD_OSCNAME(c, (method)omax_schemaList, "oscschemalist", "/osc/schema/list", 0);
	OMAX_ADDMETHOD_OSCNAME(c, (method)omax_object_ioReport, "oscioreport", "/osc/io/report", A_GIMME, 0);
	class_addmethod(c, (method)omax_notify, "notify", A_CANT, 0);

	ps_oscschemalist = gensym("/osc/schema/list");
	ps_oscioreport = gensym("/osc/io/report");

	return c;
}

void omax_init(t_object *x)
{
	t_omax *osc = omax_object_getOmaxObj(x);
	if(!osc){
		return;
	}
	osc->continuation_outlet = outlet_new(x, "FullPacket");
	osc->info_outlet = outlet_new(x, "FullPacket");
	object_attach_byptr_register(x, x, CLASS_BOX);
}

void omax_addnotification(t_class *c, method fp)
{
	t_symbol *classname = class_nameget(c);
	if(!classname){
		return;
	}

	t_hashtab *ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return;
	}
	hashtab_store(ht, gensym("cnmat_internal_osc_notification_function"), (t_object *)fp);
}

void omax_FullPacket(t_object *ob, long len, long ptr)
{
	t_symbol *classname = object_classname(ob);
	if(!classname){
		// if we can't get our classname, there's no way we can match anything
		return;
	}
	char buf[len];
	sprintf(buf, "/%s", classname->s_name);
	t_context c;
	c.ob = ob;
	c.classname = classname;
	c.osc_classname = gensym(buf);

	memset(buf, '\0', len);
	c.buf = buf;
	osc_bundle_setBundleID(buf);
	c.bufpos = OSC_HEADER_SIZE;
	c.should_output_state = 0;
	t_osc_err e = osc_bundle_s_getMessagesWithCallback(len, (char *)ptr, omax_FullPacketCallback, (void *)(&c));
	if(e){
		object_error(ob, "%s (%d)", osc_error_string(e), e);
		return;
	}
	if(c.bufpos > OSC_HEADER_SIZE){
		void *cout = omax_object_getContinuationOutlet(ob);
		if(cout){
			t_atom out[2];
			atom_setlong(out, c.bufpos);
			atom_setlong(out + 1, (long)(c.buf));
			outlet_anything(cout, gensym("FullPacket"), 2, out);
		}
	}
	if(c.should_output_state > 0){
		omax_outputState(ob);
	}
}

void omax_FullPacketCallback(t_osc_msg_s *msg, void *context)
{
	t_context *c = (t_context *)context;
	int ao, po;
	char *msg_address = osc_message_s_getAddress(msg);
	int msg_argc = osc_message_s_getArgCount(msg);
	char *msg_ptr = osc_message_s_getPtr(msg);
	int msg_size = osc_message_s_getSize(msg);
	//if(osc_match(msg.address, c->osc_classname->s_name, &po, &ao)){
	if(1){
		// the first part of the address matches our class name, so this message is meant for us
		// now iterate through all of our message names and see if we get a match
		t_hashtab *ht = omax_class_getHashtab(c->classname->s_name);
		if(!ht){
			// oops...
			return;
		}
		long nkeys;
		t_symbol **keys = NULL;		
		hashtab_getkeys(ht, &nkeys, &keys);		
		int i;
		int matched = 0;
		for(i = 0; i < nkeys; i++){
			int r = osc_match(msg_address, keys[i]->s_name, &po, &ao);
			if(r == (OSC_MATCH_ADDRESS_COMPLETE | OSC_MATCH_PATTERN_COMPLETE)){
				matched++;
				// match
				// t_max_err object_method_typed(void *x, t_symbol *s, long ac, t_atom *av, t_atom *rv);
				t_atom rv;
				t_omax_method *m = NULL;
				long argc = 0;
				hashtab_lookup(ht, keys[i], (t_object **)(&m));
				if(m){
					switch(m->type){
					case OMAX_METHOD:
						{
							t_atom argv[msg_argc + 1];
							omax_util_oscMsg2MaxAtoms(msg, argv);
							object_method_typedfun(c->ob, (t_messlist *)(m->thing), ((t_messlist *)(m->thing))->m_sym, argc - 1, argv + 1, &rv);
						}
						break;
					case OMAX_PARAMETER:
						{
							t_object *attr = NULL;
							long get;
							method f = object_attr_method(c->ob, m->sym, (void **)(&attr), &get);
							t_atom argv[msg_argc + 1];
							omax_util_oscMsg2MaxAtoms(msg, argv);
							f(c->ob, attr, msg_argc, argv + 1);
							c->should_output_state = 1;
						}
						break;
					}
				}
			}
		}
		if(!matched){
			memcpy(c->buf + c->bufpos, msg_ptr, msg_size + 4);
			c->bufpos += (msg_size + 4);
		}
	}else{
		memcpy(c->buf + c->bufpos, msg_ptr, msg_size + 4);
		c->bufpos += (msg_size + 4);
	}
	
}

void omax_class_addToSchemaList(t_class *c, const char *address)
{
	t_symbol *classname = class_nameget(c);
	if(!classname){
		return;
	}
	t_hashtab *ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return;
	}
	t_schemalist *sl = NULL;
	hashtab_lookup(ht, gensym("cnmat_internal_osc_schema_list"), (t_object **)(&sl));
	if(!sl){
		sl = (t_schemalist *)sysmem_newptr(sizeof(t_schemalist));
		sl->address_buf_len = 64;
		sl->addresses = (t_charbuffer *)sysmem_newptr(sl->address_buf_len * sizeof(t_charbuffer));
		sl->address_buf_pos = 0;
		sl->nbytes = 0;
		hashtab_store(ht, gensym("cnmat_internal_osc_schema_list"), (t_object *)sl);
	}
	int len = strlen(address);
	len++;
	while(len % 4){
		len++;
	}
	if(sl->address_buf_pos >= sl->address_buf_len){
		sl->addresses = (t_charbuffer *)sysmem_resizeptr(sl->addresses, sizeof(t_charbuffer) * (sl->address_buf_len + 16));
		if(!sl->addresses){
			return;
		}
		sl->address_buf_len += 16;
	}
	t_charbuffer *cb = sl->addresses + sl->address_buf_pos;
	cb->buf = (char *)sysmem_newptr(len);
	memset(cb->buf, '\0', len);
	strcpy(cb->buf, address);
	cb->bufpos = len;
	cb->buflen = len;
	sl->address_buf_pos++;
	sl->nbytes += len;
}

void omax_schemaList(t_object *ob, t_symbol *msg, int argc, t_atom *argv)
{
	t_symbol *classname = object_classname(ob);
	if(!classname){
		return;
	}

	t_hashtab *ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return;
	}
	t_schemalist *sl = NULL;
	hashtab_lookup(ht, gensym("cnmat_internal_osc_schema_list"), (t_object **)&sl);
	if(!sl){
		return;
	}
	int typetaglen = (sl->address_buf_pos + 2);
	while(typetaglen % 4){
		typetaglen++;
	}

	char *address = "/osc/schema/list";
	int addresslen = 20;
	
	char buf[sl->nbytes + OSC_HEADER_SIZE + 4 + typetaglen + addresslen];
	// need to add space for timetag
	memset(buf, '\0', sl->nbytes + OSC_HEADER_SIZE + 4 + typetaglen);

	char *bufptr = buf + OSC_HEADER_SIZE;
	*((uint32_t *)bufptr) = hton32(sl->nbytes + typetaglen + addresslen);
	bufptr += 4;
	strncpy(bufptr, address, 16);
	bufptr += addresslen;
	*bufptr = ',';
	memset(bufptr + 1, 's', sl->address_buf_pos);
	bufptr += typetaglen;
	int i;
	for(i = 0; i < sl->address_buf_pos; i++){
		memcpy(bufptr, sl->addresses[i].buf, sl->addresses[i].bufpos);
		bufptr += sl->addresses[i].bufpos;
	}
	osc_bundle_setBundleID(buf);
	// put timestamp in place...

	/*	
	long nkeys = 0;
	t_symbol **keys = NULL;
	hashtab_getkeys(ht, &nkeys, &keys);
	int buflen = 128;
	char *buf = sysmem_newptr(buflen);
	memset(buf, '\0', buflen);
	int bufpos = 0;
	osc_bundle_setBundleID(buf);
	bufpos += OSC_HEADER_SIZE;
	int i;
	for(i = 0; i < nkeys; i++){
		if(osc_error_validateAddress(keys[i]->s_name)){
			continue;
		}
		t_omax_method *m = NULL;
		hashtab_lookup(ht, keys[i], (t_object **)(&m));
		if(!m){
			continue;
		}

		if(m->type == OMAX_PARAMETER){
			t_object *attr = object_attr_get(ob, m->sym);
			long argc = 0;
			t_atom *argv = NULL;
			//m->m.m_fun(ob, attr, &argc, &argv);
			char getter[128];
			sprintf(getter, "get%s", m->sym->s_name);
			long get;
			method f = object_attr_method(ob, gensym(getter), (void **)(&attr), &get);
			if(f){
				f(ob, attr, &argc, &argv);
				if(argv){
					char address[128];
					sprintf(address, "/parameter/%s", m->sym->s_name);
					int msglen = omax_util_get_bundle_size_for_atoms(gensym(address), argc, argv);
					if(msglen + bufpos >= buflen){
						buf = sysmem_resizeptr(buf, buflen + msglen);
						if(!buf){
							object_error(ob, "out of memory!");
							return;
						}
					}
					bufpos += omax_util_encode_atoms(buf + bufpos, gensym(address), argc, argv);
					sysmem_freeptr(argv);
				}
			}
		}else

		{
			int msglen = omax_util_get_bundle_size_for_atoms(keys[i], 0, NULL);
			if(msglen + bufpos >= buflen){
				buf = sysmem_resizeptr(buf, buflen + msglen);
				if(!buf){
					object_error(ob, "out of memory!");
					return;
				}
				memset(buf + buflen, '\0', msglen);
				buflen += msglen;
			}
			char methodname[128];
			sprintf(methodname, "/method/%s", m->sym->s_name);
			bufpos += omax_util_encode_atoms(buf + bufpos, gensym(methodname), 0, NULL);
		}
	}
	*/

	void *infoout = omax_object_getInfoOutlet(ob);
	if(infoout){
		t_atom out[2];
		atom_setlong(out, bufptr - buf);
		atom_setlong(out + 1, (long)buf);
		outlet_anything(infoout, gensym("FullPacket"), 2, out);
	}
}

void omax_object_ioReport(t_object *x, t_symbol *msg, int argc, t_atom *argv)
{
	long buflen;
	char *buf = NULL;

	if(argc == 0){
		t_atom a;
		atom_setsym(&a, gensym("/*"));
		omax_object_createIOReport(x, msg, 1, &a, &buflen, &buf);
	}else{
		omax_object_createIOReport(x, msg, argc, argv, &buflen, &buf);
	}
	if(!buf){
		return;
	}
	char bundle[buflen + OSC_HEADER_SIZE];
	osc_bundle_setBundleID(bundle);
	memcpy(bundle + OSC_HEADER_SIZE, buf, buflen);
	void *outlet = omax_object_getInfoOutlet(x);
	if(outlet){
		t_atom out[2];
		atom_setlong(out, buflen + OSC_HEADER_SIZE);
		atom_setlong(out + 1, (long)bundle);
		outlet_anything(outlet, gensym("FullPacket"), 2, out);
	}
	if(buf){
		sysmem_freeptr(buf);
	}
}

void omax_object_createIOReport(t_object *x, t_symbol *msg, int argc, t_atom *argv, long *buflen, char **buf)
{
	t_symbol *classname = object_classname(x);
	if(!classname){
		return;
	}
	t_hashtab *ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return;
	}
	long nkeys = 0;
	t_symbol **keys = NULL;
	hashtab_getkeys(ht, &nkeys, &keys);

	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	int i;
	for(i = 0; i < nkeys; i++){
		if(!osc_error_validateAddress(keys[i]->s_name)){
			int j;

			for(j = 0; j < argc; j++){
				t_atom *a = argv + j;
				if(atom_gettype(a) == A_SYM){
					int ret = 0;
					int ao, po;
					if(atom_getsym(a) == gensym("/*")){
						ret = OSC_MATCH_ADDRESS_COMPLETE;
					}else{
						ret = osc_match(atom_getsym(a)->s_name, keys[i]->s_name, &po, &ao);
					}
					if(ret && OSC_MATCH_ADDRESS_COMPLETE){
						t_omax_method *m = NULL;
						hashtab_lookup(ht, keys[i], (t_object **)(&m));
						if(!m){
							continue;
						}
						if(m->type == OMAX_PARAMETER){
							t_object *attr = object_attr_get(x, m->sym);
							long argc = 0;
							t_atom *argv = NULL;
							//m->m.m_fun(ob, attr, &argc, &argv);
							char getter[128];
							sprintf(getter, "get%s", m->sym->s_name);
							long get;
							method f = object_attr_method(x, gensym(getter), (void **)(&attr), &get);
							if(f){
								f(x, attr, &argc, &argv);
								if(argv){
									char address[128];
									sprintf(address, "/%s", m->sym->s_name);
									t_atom a[argc + 1];
									atom_setsym(a, gensym(address));
									memcpy(a + 1, argv, argc * sizeof(t_atom));

									t_osc_msg_u *msg_u = NULL;
									t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, ps_oscioreport, argc + 1, a);
									if(e){
										object_error((t_object *)x, "%s", osc_error_string(e));
										if(bndl_u){
											osc_bundle_u_free(bndl_u);
										}
										return;
									}
									osc_bundle_u_addMsg(bndl_u, msg_u);
									sysmem_freeptr(argv);
								}
							}
						}
					}
				}
			}
		}
	}
	//*buflen = pos;
	osc_bundle_u_serialize(bndl_u, buflen, buf);
	if(bndl_u){
		osc_bundle_u_free(bndl_u);
	}
}

void omax_outputState(t_object *x)
{
	t_symbol *classname = object_classname(x);
	if(!classname){
		return;
	}
	t_hashtab *ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return;
	}
	long nkeys = 0;
	t_symbol **keys = NULL;
	hashtab_getkeys(ht, &nkeys, &keys);

	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	int i;
	for(i = 0; i < nkeys; i++){
		if(osc_error_validateAddress(keys[i]->s_name)){
			continue;
		}

		t_omax_method *m = NULL;
		hashtab_lookup(ht, keys[i], (t_object **)(&m));
		if(!m){
			continue;
		}
		if(m->type == OMAX_PARAMETER){
			t_object *attr = object_attr_get(x, m->sym);
			long argc = 0;
			t_atom *argv = NULL;
			//m->m.m_fun(ob, attr, &argc, &argv);
			char getter[128];
			sprintf(getter, "get%s", m->sym->s_name);
			long get;
			method f = object_attr_method(x, gensym(getter), (void **)(&attr), &get);
			if(f){
				f(x, attr, &argc, &argv);
				if(argv){
					char address[128];
					sprintf(address, "/%s", m->sym->s_name);
					t_symbol *addresssym = gensym(address);

					t_osc_msg_u *msg_u = NULL;
					t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, addresssym, argc, argv);
					if(e){
						object_error((t_object *)x, "%s", osc_error_string(e));
						if(bndl_u){
							osc_bundle_u_free(bndl_u);
						}
						return;
					}
					osc_bundle_u_addMsg(bndl_u, msg_u);

					if(argv){
						sysmem_freeptr(argv);
					}
				}
			}
		}
	}
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl_u, &len, &buf);
	void *outlet = omax_object_getInfoOutlet(x);
	if(outlet){
		omax_util_outletOSC(outlet, len, buf);
	}
	if(bndl_u){
		osc_bundle_u_free(bndl_u);
 	}
	if(buf){
		osc_mem_free(buf);
	}
}

t_max_err omax_notify(t_object *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	t_symbol *attrname;

	if (msg == gensym("attr_modified")) {
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
		omax_outputState(x);
	}
	t_max_err e = MAX_ERR_NONE;
	// big old cast to make an annoying compiler warning go away...
	t_max_err (*f)(t_object*,t_symbol*,t_symbol*,void*,void*) =
		(t_max_err (*)(t_object*,t_symbol*,t_symbol*,void*,void*))omax_object_getNotificationCallback(x);
	if(f){
		e = f(x, s, msg, sender, data);
	}
	
	return e;
}

t_hashtab *omax_class_getHashtab(char *classname)
{
	if(!classname){
		return NULL;
	}
	t_symbol *htname = omax_class_makeHashtabName(classname);
	if(htname){
		return (t_hashtab *)(htname->s_thing);
	}else{
		return NULL;
	}
}

t_symbol *omax_class_makeHashtabName(char *classname)
{
	char buf[128];
	sprintf(buf, "cnmat_internal_%s_hashtab", classname);
	return gensym(buf);
}

t_symbol *omax_class_makeMethodNameOSC(char *classname, char *methodname)
{
	char buf[128];
	//sprintf(buf, "/%s/%s", classname, methodname);
	sprintf(buf, "/%s", methodname);
	return gensym(buf);
}

t_symbol *omax_class_makeParamNameOSC(char *classname, char *paramname)
{
	char buf[128];
	//sprintf(buf, "/%s/%s", classname, paramname);
	sprintf(buf, "/%s", paramname);
	return gensym(buf);
}

t_symbol *omax_class_makeSetterNameOSC(char *classname, char *methodname)
{
	return omax_class_makeAccessorNameOSC(classname, methodname, "set");
}

t_symbol *omax_class_makeGetterNameOSC(char *classname, char *methodname)
{
	return omax_class_makeAccessorNameOSC(classname, methodname, "get");
}

t_symbol *omax_class_makeAccessorNameOSC(char *classname, char *methodname, char *type)
{
	char buf[128];
	//sprintf(buf, "/%s/%s/%s", classname, methodname, type);
	sprintf(buf, "/%s/%s", methodname, type);
	return gensym(buf);
}

t_symbol *omax_class_makeSetterName(char *methodname)
{
	return gensym(methodname);
}

t_symbol *omax_class_makeGetterName(char *methodname)
{
	char buf[128];
	sprintf(buf, "get%s", methodname);
	return gensym(buf);
}

t_omax *omax_object_getOmaxObj(t_object *ob)
{
	t_symbol *classname = object_classname(ob);
	if(!classname){
		return NULL;
	}
	t_hashtab *ht = NULL;
	ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return NULL;
	}
	size_t offset;
	hashtab_lookup(ht, gensym("cnmat_internal_osc_ob_offset"), (t_object **)(&offset));
	t_omax *osc = (t_omax *)(((char *)ob) + offset);
	return osc;
}

void *omax_object_getContinuationOutlet(t_object *ob)
{
	t_omax *osc = omax_object_getOmaxObj(ob);
	if(osc){
		return osc->continuation_outlet;
	}else{
		return NULL;
	}
}

void *omax_object_getInfoOutlet(t_object *ob)
{
	t_omax *osc = omax_object_getOmaxObj(ob);
	if(osc){
		return osc->info_outlet;
	}else{
		return NULL;
	}
}

method omax_object_getNotificationCallback(t_object *ob)
{
	t_symbol *classname = object_classname(ob);
	if(!classname){
		return NULL;
	}

	t_hashtab *ht = omax_class_getHashtab(classname->s_name);
	if(!ht){
		return NULL;
	}
	method f = NULL;
	hashtab_lookup(ht, gensym("cnmat_internal_osc_notification_function"), (t_object **)(&f));
	return f;
}
