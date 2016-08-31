/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
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


  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  NAME: o.O
  DESCRIPTION: Pass a bundle through if it is different from the previous one
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2011
  SVN_REVISION: $LastOdRevision: 587 $
  VERSION 0.0: First try
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/


#define OMAX_DOC_NAME "o.O"
#define OMAX_DOC_SHORT_DESC "test object"
#define OMAX_DOC_LONG_DESC "o.O is a dummy object for testing random OSC related code"
#define OMAX_DOC_INLETS_DESC (char *[]){"inlet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"outlet"}
#define OMAX_DOC_SEEALSO (char *[]){"nothing"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "osc_serial.h"
#include "osc_mem.h"
#include "osc_bundle_iterator_s.h"
#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _oO{
	t_object ob;
	void *outlet;
	t_critical lock;
} t_oO;

void *oO_class;


//void oO_fullPacket(t_oO *x, long len, long ptr)
void oO_fullPacket(t_oO *x, t_symbol *msg, int argc, t_atom *argv)
{
	char bracket[] = {'[', ']', '{', '}'};
	char wild[] = {'*', '?'};
	char alphanum[62];
	for(int i = 0; i < 10; i++){
		alphanum[i] = i + 48;
	}
	for(int i = 0; i < 26; i++){
		alphanum[i + 10] = i + 65;
	}
	for(int i = 0; i < 26; i++){
		alphanum[i + 36] = i + 97;
	}

	OMAX_UTIL_GET_LEN_AND_PTR;
	char copy[len];
	memcpy(copy, ptr, len);
	int n = 0;
	osc_bundle_s_getMsgCount(len, copy, &n);
	long r = floor(((double)random() / 2147483647.) * n);
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, copy);
	int i = 0;
	t_osc_msg_s *m = NULL;
	while(i <= r && osc_bndl_it_s_hasNext(it)){
		i++;
		m = osc_bndl_it_s_next(it);
	}
	osc_bndl_it_s_destroy(it);
	if(m){
		char *p = osc_message_s_getAddress(m);
		if(p){
			int n = osc_message_s_getSize(m);
			long r = floor(((double)random() / 2147483647.) * n);
			if(r <= strlen(p)){
				// inside address section---can add a random NULL byte or fuck with wildcard chars
				switch(random() & 0x1){
				case 0:
					object_post((t_object *)x, "replaced '%c' at position %d with NULL\n", p[r], r);
					p[r] = '\0';
					break;
				case 1:
					{
						int isbracket = 0;
						for(int i = 0; i < sizeof(bracket); i++){
							if(bracket[i] == p[r]){
								isbracket = 1;
								break;
							}
						}
						if(isbracket){
							// we have a bracket, replace it with an alphanum char or NULL
							switch(random() & 0x1){
							case 0:
								{
									long rrr = (long)floor(((double)random() / 2147483647.) * sizeof(alphanum));
									object_post((t_object *)x, "replaced '%c' at position %d with '%c'\n", p[r], r, alphanum[rrr]);
									p[r] = alphanum[rrr];
								}
								break;
							case 1:
								object_post((t_object *)x, "replaced '%c' at position %d with NULL\n", p[r], r);
								p[r] = NULL;
								break;
							}
						}else{
							// not a bracket, replace it with one or NULL
							switch(random() & 0x1){
							case 0:
								{
									long rrr = (long)floor(((double)random() / 2147483647.) * sizeof(bracket));
									object_post((t_object *)x, "replaced '%c' at position %d with '%c'\n", p[r], r, bracket[rrr]);
									p[r] = bracket[rrr];
								}
								break;
							case 1:
								object_post((t_object *)x, "replaced '%c' at position %d with NULL\n", p[r], r);
								p[r] = NULL;
								break;
							}
						}
					}
					break;
				}
			}else if(r < (osc_message_s_getData(m) - p)){
				// typetag section---add a NULL or char
				if(p[r] == NULL){
					long rrr = (long)floor(((double)random() / 2147483647.) * sizeof(alphanum));
					object_post((t_object *)x, "replaced NULL at position %d with '%c'\n", r, alphanum[rrr]);
					p[r] = alphanum[rrr];
				}else{
					object_post((t_object *)x, "replaced '%c' at position %d with NULL\n", p[r], r);
					p[r] = NULL;
				}
			}else{
				// not much we can do here unles we know it's a string or something else with NULL padding, 
				// so just try again
				oO_fullPacket(x, msg, argc, argv);
				return;
			}
		}
	}
	omax_util_outletOSC(x->outlet, len, copy);
}

void oO_anything(t_oO *x, t_symbol *msg, int argc, t_atom *argv)
{
}

void oO_bang(t_oO *x)
{
}

OMAX_DICT_DICTIONARY(t_oO, x, oO_fullPacket);

void oO_doc(t_oO *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oO_assist(t_oO *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void oO_free(t_oO *x)
{
	critical_free(x->lock);
}

void *oO_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oO *x = NULL;
	if((x = (t_oO *)object_alloc(oO_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		critical_new(&(x->lock));
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.O", (method)oO_new, (method)oO_free, sizeof(t_oO), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oO_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oO_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)oO_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oO_doc, "doc", 0);
	//class_addmethod(c, (method)oO_bang, "bang", 0);
	//class_addmethod(c, (method)oO_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
	class_register(CLASS_BOX, c);
	oO_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	srandomdev();
	return 0;
}
/*
t_max_err oO_notify(t_oO *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
