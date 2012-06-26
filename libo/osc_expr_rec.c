#include <string.h>
#include <stdio.h>
#include "osc_expr_rec.r"
#include "osc_expr_rec.h"
#include "osc_expr.h"
#include "osc_mem.h"

t_osc_expr_rec *osc_expr_rec_alloc(void)
{
	t_osc_expr_rec *r = (t_osc_expr_rec *)osc_mem_alloc(sizeof(t_osc_expr_rec));
	memset(r, '\0', sizeof(t_osc_expr_rec));
	return r;
}

void osc_expr_rec_free(t_osc_expr_rec *r, void **extra)
{
	if(!r){
		return;
	}
	if(r->name){
		osc_mem_free(r->name);
	}
	if(r->signature){
		osc_mem_free(r->signature);
	}
	if(r->required_args_names){
		for(int i = 0; i < r->num_required_args; i++){
			if(r->required_args_names[i]){
				osc_mem_free(r->required_args_names[i]);
			}
		}
		osc_mem_free(r->required_args_names);
	}
	if(r->optional_args_names){
		for(int i = 0; i < r->num_optional_args; i++){
			if(r->optional_args_names[i]){
				osc_mem_free(r->optional_args_names[i]);
			}
		}
		osc_mem_free(r->optional_args_names);
	}
	if(r->required_args_types){
		osc_mem_free(r->required_args_types);
	}
	if(r->optional_args_types){
		osc_mem_free(r->optional_args_types);
	}
	if(r->categories){
		/*
		for(int i = 0; i < r->num_optional_args; i++){
			if(r->categories[i]){
				osc_mem_free(r->categories[i]);
			}
		}
		osc_mem_free(r->categories);
		*/
	}
	if(r->docstring){
		osc_mem_free(r->docstring);
	}
	if(extra){
		*extra = r->extra;
	}
	osc_mem_free(r);
}

void osc_expr_rec_copy(t_osc_expr_rec **dest, t_osc_expr_rec *src, void (*copy_extra)(void **dest, void *src))
{
	if(!src){
		return;
	}
	if(!(*dest)){
		*dest = osc_expr_rec_alloc();
	}
	t_osc_expr_rec *c = *dest;
	if(src->name){
		int len = strlen(src->name) + 1;
		c->name = osc_mem_alloc(len);
		strncpy(c->name, src->name, len);
	}
	if(src->signature){
		int len = strlen(src->signature) + 1;
		c->signature = osc_mem_alloc(len);
		strncpy(c->signature, src->signature, len);
	}
	if(src->docstring){
		int len = strlen(src->docstring) + 1;
		c->docstring = osc_mem_alloc(len);
		strncpy(c->docstring, src->docstring, len);
	}
	if(src->required_args_names){
		c->required_args_names = (char **)osc_mem_alloc(src->num_required_args * sizeof(char *));
		for(int i = 0; i < src->num_required_args; i++){
			if(!src->required_args_names[i]){
				c->required_args_names[i] = NULL;
				continue;
			}
			int len = strlen(src->required_args_names[i]) + 1;
			c->required_args_names[i] = osc_mem_alloc(len);
			strncpy(c->required_args_names[i], src->required_args_names[i], len);
		}
	}
	if(src->optional_args_names){
		c->optional_args_names = (char **)osc_mem_alloc(src->num_optional_args * sizeof(char *));
		for(int i = 0; i < src->num_optional_args; i++){
			if(!src->optional_args_names[i]){
				continue;
			}
			int len = strlen(src->optional_args_names[i]) + 1;
			c->optional_args_names[i] = osc_mem_alloc(len);
			strncpy(c->optional_args_names[i], src->optional_args_names[i], len);
		}
	}
	c->num_required_args = src->num_required_args;
	c->num_optional_args = src->num_optional_args;
	c->func = src->func;
	if(copy_extra && src->extra){
		copy_extra(&(c->extra), src->extra);
	}
}

void osc_expr_rec_setName(t_osc_expr_rec *r, char *name)
{
	if(!r){
		return;
	}
	int len = strlen(name) + 1;
	char *copy = (char *)osc_mem_alloc(len);
	strncpy(copy, name, len);
	r->name = copy;
}

void osc_expr_rec_setSignature(t_osc_expr_rec *r, char *sig)
{
	if(!r){
		return;
	}
	int len = strlen(sig) + 1;
	char *copy = (char *)osc_mem_alloc(len);
	strncpy(copy, sig, len);
	r->signature = copy;
}

void osc_expr_rec_setArgs(int num_args,
			  char **args_names,
			  int *args_types,
			  int *num_args_dest,
			  char ***args_names_dest,
			  int **args_types_dest)
{
	if(!args_names){
		return;
	}
	*num_args_dest = num_args;
	if(args_names){
		char **copy = (char **)osc_mem_alloc(num_args * sizeof(char *));
		for(int i = 0; i < num_args; i++){
			if(!args_names[i]){
				copy[i] = NULL;
				continue;
			}
			int len = strlen(args_names[i]) + 1;
			copy[i] = (char *)osc_mem_alloc(len);
			strncpy(copy[i], args_names[i], len);
		}
		*args_names_dest = copy;
	}
	if(args_types){
		int *copy = (int *)osc_mem_alloc(num_args * sizeof(int));
		memcpy(copy, args_types, num_args * sizeof(int));
		*args_types_dest = copy;
	}
}

void osc_expr_rec_setRequiredArgs(t_osc_expr_rec *r,
				  int num_required_args,
				  char **required_args_names,
				  int *required_args_types)
{
	osc_expr_rec_setArgs(num_required_args,
			     required_args_names,
			     required_args_types,
			     &(r->num_required_args),
			     &(r->required_args_names),
			     &(r->required_args_types));
}

void osc_expr_rec_setOptionalArgs(t_osc_expr_rec *r,
				  int num_optional_args,
				  char **optional_args_names,
				  int *optional_args_types)
{
	osc_expr_rec_setArgs(num_optional_args,
			     optional_args_names,
			     optional_args_types,
			     &(r->num_optional_args),
			     &(r->optional_args_names),
			     &(r->optional_args_types));
}

void osc_expr_rec_setFunction(t_osc_expr_rec *r,
			      t_osc_expr_funcptr function)
{
	if(!r){
		return;
	}
	r->func = function;
}

void osc_expr_rec_setExtra(t_osc_expr_rec *r, void *extra)
{
	if(!r){
		return;
	}
	r->extra = extra;
}

char *osc_expr_rec_getName(t_osc_expr_rec *r)
{
	if(r){
		return r->name;
	}
	return NULL;
}

char *osc_expr_rec_getSignature(t_osc_expr_rec *r)
{
	if(r){
		return r->signature;
	}
	return NULL;
}

int osc_expr_rec_getNumRequiredArgs(t_osc_expr_rec *r)
{
	if(r){
		return r->num_required_args;
	}
	return 0;
}

int osc_expr_rec_getNumOptionalArgs(t_osc_expr_rec *r)
{
	if(r){
		return r->num_optional_args;
	}
	return 0;
}

char **osc_expr_rec_getRequiredArgsNames(t_osc_expr_rec *r)
{
	if(r){
		return r->required_args_names;
	}
	return NULL;
}

char **osc_expr_rec_getOptionalArgsNames(t_osc_expr_rec *r)
{
	if(r){
		return r->optional_args_names;
	}
	return NULL;
}

int *osc_expr_rec_getRequiredArgsTypes(t_osc_expr_rec *r)
{
	if(r){
		return r->required_args_types;
	}
	return NULL;
}

int *osc_expr_rec_getOptionalArgsTypes(t_osc_expr_rec *r)
{
	if(r){
		return r->optional_args_types;
	}
	return NULL;
}

char **osc_expr_rec_getCategories(t_osc_expr_rec *r)
{
	if(r){
		return r->categories;
	}
	return NULL;
}

char *osc_expr_rec_getDocstring(t_osc_expr_rec *r)
{
	if(r){
		return r->docstring;
	}
	return NULL;
}

t_osc_expr_funcptr osc_expr_rec_getFunction(t_osc_expr_rec *r)
{
	if(r){
		return r->func;
	}
	return NULL;
}

void *osc_expr_rec_getExtra(t_osc_expr_rec *r)
{
	if(r){
		return r->extra;
	}
	return NULL;
}
