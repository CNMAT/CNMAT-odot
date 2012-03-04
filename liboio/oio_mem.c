#include "oio_mem.h"
#include "oio_err.h"

t_oio_mem_alloc oio_mem_allocator = calloc;
t_oio_mem_free oio_mem_deallocator = free;
t_oio_mem_resize oio_mem_reallocator = realloc;

void oio_mem_setAlloc(t_oio_mem_alloc a){
	oio_mem_allocator = a;
}

void oio_mem_setFree(t_oio_mem_free f){
	oio_mem_deallocator = f;
}

void oio_mem_setResize(t_oio_mem_resize r){
	oio_mem_reallocator = r;
}

void *oio_mem_alloc(size_t n, size_t type){
	void *ptr = oio_mem_allocator(n, type);
	if(!ptr){
		OIO_ERROR(OIO_ERR_MEM);
		return NULL;
	}
	return ptr;
}

void oio_mem_free(void *ptr){
	if(ptr){
		oio_mem_deallocator(ptr);
	}
}

void *oio_mem_resize(void *ptr, size_t newsize){
	if(ptr){
		return oio_mem_reallocator(ptr, newsize);
	}
}


