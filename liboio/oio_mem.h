#ifndef __OIO_MEM_H__
#define __OIO_MEM_H__

#include <stdlib.h>

typedef void *(*t_oio_mem_alloc)(size_t, size_t);
typedef void (*t_oio_mem_free)(void *);
typedef void *(*t_oio_mem_resize)(void *, size_t);

void oio_mem_setAlloc(t_oio_mem_alloc a);
void oio_mem_setFree(t_oio_mem_free f);
void oio_mem_setResize(t_oio_mem_resize r);

void *oio_mem_alloc(size_t n, size_t type);
void oio_mem_free(void *ptr);
void *oio_mem_resize(void *ptr, size_t newsize);

#endif // __OIO_MEM_H__

