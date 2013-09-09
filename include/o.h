#ifndef __O_H__
#define __O_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "string.h"

#define OMAX_UTIL_GET_LEN_AND_PTR					\
	if(argc != 3){							\
		error("%s: expected 2 arguments but got %d", __func__, argc); \
		return;							\
	}								\
	if(argv->a_type != A_FLOAT){					\
		error("%s: argument 1 should be a float", __func__);	\
		return;							\
	}								\
	if(argv[1].a_type != A_FLOAT){					\
		error("%s: argument 2 should be a symbol", __func__);	\
		return;							\
	}								\
	if(argv[2].a_type != A_FLOAT){					\
		error("%s: argument 2 should be a symbol", __func__);	\
		return;							\
	}								\
	float ff = atom_getfloat(&argv[0]);				\
	long len = (long)*((uint32_t *)&ff);				\
	ff = atom_getfloat(&argv[1]);					\
	uint64_t l1 = *((uint64_t *)&ff);				\
	l1 <<= 32;							\
	ff = atom_getfloat(&argv[2]);					\
	uint64_t l2 = *((uint64_t *)&ff);				\
	char *ptr = (char *)(l1 | l2);
    


#define sysmem_freeptr free
    
#define t_max_err void*
#define MAX_ERR_NONE 0
#define MAX_ERR_GENERIC 0
    
#define critical_enter(x)
#define critical_exit(x)
#define critical_free(x)
#define critical_new(x)
#define t_critical void*
    
#define object_post(x, st, ...) post(st, ##__VA_ARGS__)
#define object_error(x, st, ...) error(st, ##__VA_ARGS__)

#define A_SYM   A_SYMBOL
#define A_LONG  A_CANT
#define OMAX_DICT_DICTIONARY(o, x, st)

#define object_alloc(class) pd_new(class)
    
#define clock_fdelay clock_delay

void atom_setfloat(t_atom *atom, t_float f)
{
	SETFLOAT(atom, f);
}

void atom_setlong(t_atom *atom, long l)
{
	SETFLOAT(atom, (float)l);
}

void atom_setsym(t_atom *atom, t_symbol *s)
{
	SETSYMBOL(atom, s);
}

t_int atom_getlong(t_atom *atom)
{
	return atom_getint(atom);
}

t_symbol *atom_getsym(t_atom *atom)
{
	return atom_getsymbol(atom);
}

t_atomtype atom_gettype(t_atom *atom)
{
	return atom->a_type;
}
    
void outlet_atoms(void *out, short argc, t_atom *argv)
{
	if (argc == 1) {
		if (argv->a_type == A_FLOAT)
			outlet_float((t_outlet *)out,argv->a_w.w_float);
		else if (argv->a_type == A_SYM)
			outlet_anything((t_outlet *)out,argv->a_w.w_symbol,0,0);
	} else {
		if (argv->a_type == A_FLOAT)
			outlet_list((t_outlet *)out,&s_list, argc, argv);
		else if (argv->a_type == A_SYM)
			outlet_anything((t_outlet *)out,argv->a_w.w_symbol,argc-1,argv+1);
	}
}

void outlet_int(void *outlet, int i)
{
	outlet_float((t_outlet *)outlet, (float)i);
}
        
void omax_util_hashBrackets2Curlies(char *s)
{
    
	char c;
	int len = strlen(s);
    
	int i, j = 0;
	for( i = 0; i < len; i++ )
		{
			c = s[i];
			if( i < len-1 )
				{
					if(s[i] == '#' && s[i+1] == '['){
						c = '{';
						i++;
					} else if(s[i] == ']' && s[i+1] == '#') {
						c = '}';
						i++;
					}
				}
			s[j++] = c;
		}
    
	while(j < len)
		s[j++] = '\0';
    
}

void omax_util_curlies2hashBrackets(char **ptr, long bufsize)
{
	//   printf("%s", __func__);

	char *str = (*ptr);
	if(!str)
		{
			error("no string in buffer");
			return;
		}
        
	int i, j = 0;
	int len = strlen(str);
	char buf[len * 2]; //<< max possible size with every character being a { or }
	memset(buf, '\0', len * 2);
    
	for( i = 0; i < len; i++ )
		{
			if (str[i] == '{')
				{
					buf[j++] = '#';
					buf[j++] = '[';
				}
			else if (str[i] == '}')
				{
					buf[j++] = ']';
					buf[j++] = '#';
				} else {
				buf[j++] = str[i];
			}
		}
	if(j != i)
		{
			memset(*ptr, '\0', bufsize);
			//        *ptr = (char *)realloc(*ptr, sizeof(char) * j);
			strcpy(*ptr, buf);
		}
}

void printargs(int argc, t_atom *argv)
{
	int i;
	for( i = 0; i < argc; i++)
		{
			switch ((argv+i)->a_type) {
			case A_FLOAT:
				post("%s A_FLOAT argv[%d] %f", __func__, i, atom_getfloat(argv+i));
				break;
			case A_SYMBOL:
				post("%s A_SYMBOL argv[%d] %s", __func__, i, atom_getsymbol(argv+i)->s_name);
				break;
			default:
				break;
			}
		}
}

    
#else
//MAX VERSION
#define OMAX_UTIL_GET_LEN_AND_PTR					\
	if(argc != 2){							\
		object_error((t_object *)x, "expected 2 arguments but got %d", argc); \
		return;							\
	}								\
	if(atom_gettype(argv) != A_LONG){				\
		object_error((t_object *)x, "argument 1 should be an int"); \
		return;							\
	}								\
	if(atom_gettype(argv + 1) != A_LONG){				\
		object_error((t_object *)x, "argument 2 should be an int"); \
		return;							\
	}								\
	long len = atom_getlong(argv);					\
	char *ptr = (char *)atom_getlong(argv + 1);

#endif
#ifdef __cplusplus 
}
#endif
#endif
