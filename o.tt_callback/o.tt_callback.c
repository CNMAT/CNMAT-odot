/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009, The Regents of
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
NAME: o.tt_callback
DESCRIPTION: write a callback function to handle a non-standard OSC typetag
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include <dlfcn.h>

#define BUFSIZE 1024

// should have an ifdef for windows...like this'll ever work for windows...
#define TMPDIR "/var/tmp"

typedef struct _ttcb{
	t_object ob;
	void *outlet;
	t_object *ed;
	char *code_buf;
	int code_buf_len;
	char *cfile, *ofile, *dfile;
	void *handle;
	double (*f)(double, double);
} t_ttcb;

static t_class *ttcb_class;

void ttcb_compile(t_ttcb *x);
void ttcb_bang(t_ttcb *x);
void ttcb_free(t_ttcb *x);
void ttcb_assist(t_ttcb *x, void *b, long m, long a, char *s);
void ttcb_edclose(t_ttcb *x, char **text, long size);
void ttcb_okclose(t_ttcb *x, char *prompt, short *result);
void ttcb_dblclick(t_ttcb *x);
void *ttcb_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_ottcallback_instance_count;

void ttcb_compile(t_ttcb *x){
	if(x->handle){
		dlclose(x->handle);
	}
	FILE *fp = fopen(x->cfile, "w");
	fprintf(fp, "%s", x->code_buf);
	fclose(fp);

	char compbuf[128];
	sprintf(compbuf, "gcc -o %s -c %s", x->ofile, x->cfile);
	system(compbuf);

	sprintf(compbuf, "gcc -o %s -dynamiclib %s", x->dfile, x->ofile);
	system(compbuf);

	char *err;

	x->handle = dlopen(x->dfile, RTLD_NOW);
	if(!x->handle){
		error("o.tt_callback: %s", dlerror());
		return;
	}

	x->f = dlsym(x->handle, "f");
	if((err = dlerror()) != NULL){
		error("o.tt_callback: %s", err);
		return;
	}

	post("f(%f, %f) = %f\n", 3., 4., x->f(3., 4.));
}

void ttcb_bang(t_ttcb *x){
    
}

void ttcb_free(t_ttcb *x){
}

void ttcb_assist(t_ttcb *x, void *b, long io, long index, char *s){
	switch(io){
	case 1:
		switch(index){
		case 0:
			sprintf(s, "");
			break;
		}
		break;
	case 2:
		switch(index){
		case 0:
			sprintf(s, "");
			break;
		}
		break;
	}
}

/****************************************************
 * editor stuff taken from chuck~
 ***************************************************/
void ttcb_edclose(t_ttcb *x, char **text, long size){
	if(size + 1 > x->code_buf_len){
		char *tmp = realloc(x->code_buf, (size * 2) * sizeof(char));
		if(tmp){
			x->code_buf = tmp;
			x->code_buf_len = size * 2;
		}else{
			error("o.tt_callback: out of memory!");
			return;
		}
	}
	strncpy(x->code_buf, *text, size);
	x->code_buf[size] = '\0';

	x->ed = NULL;
}

void ttcb_okclose(t_ttcb *x, char *prompt, short *result){
	*result = 3; //don't put up dialog box
	return;
}

void ttcb_dblclick(t_ttcb *x){
	if(x->ed){
		object_method(x->ed, gensym("settext"), x->code_buf, gensym("utf-8"));
	}else{
		x->ed = object_new(CLASS_NOBOX, gensym("jed"), (t_object *)x, 0);
		object_attr_setsym(x->ed, gensym("title"), gensym("editor"));
		object_method(x->ed, gensym("settext"), x->code_buf, gensym("utf-8"));
	}

	object_attr_setchar(x->ed, gensym("visible"), 1);
}

void *ttcb_new(t_symbol *msg, short argc, t_atom *argv){
	t_ttcb *x;

	if(x = (t_ttcb *)object_alloc(ttcb_class)){
		x->outlet = outlet_new(x, NULL);
		x->ed = NULL;
		x->code_buf_len = BUFSIZE;
		x->code_buf = (char *)calloc(BUFSIZE, sizeof(char));
		x->cfile = (char *)calloc(64, sizeof(char));
		x->ofile = (char *)calloc(64, sizeof(char));
		x->dfile = (char *)calloc(64, sizeof(char));
		sprintf(x->cfile, "%s/o.tt_callback_%ld.c", TMPDIR, (long)ps_ottcallback_instance_count->s_thing);
		sprintf(x->ofile, "%s/o.tt_callback_%ld.o", TMPDIR, (long)ps_ottcallback_instance_count->s_thing);
		sprintf(x->dfile, "%s/o.tt_callback_%ld.dylib", TMPDIR, (long)ps_ottcallback_instance_count->s_thing);
		ps_ottcallback_instance_count->s_thing++;
		x->handle = NULL;
		x->f = NULL;
		return x;
	}
	return NULL;
}

int main(void){
	t_class *c = class_new("o.tt_callback", (method)ttcb_new, (method)ttcb_free, sizeof(t_ttcb), 0L, A_GIMME, 0);

	class_addmethod(c, (method)ttcb_bang, "bang", 0);
	class_addmethod(c, (method)ttcb_assist, "assist", A_CANT, 0);

	//for the text editor and scripts
	class_addmethod(c, (method)ttcb_edclose, "edclose", A_CANT, 0); 
	class_addmethod(c, (method)ttcb_dblclick, "dblclick", A_CANT, 0);
	class_addmethod(c, (method)ttcb_okclose, "okclose", A_CANT, 0);  
	class_addmethod(c, (method)ttcb_compile, "compile", 0);

	class_register(CLASS_BOX, c);
	ttcb_class = c;

	ps_ottcallback_instance_count = gensym("ottcallback_instance_count");
	ps_ottcallback_instance_count->s_thing = 0;

	common_symbols_init();
    
	return 0;
}

