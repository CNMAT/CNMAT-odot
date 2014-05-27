/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009-ll, The Regents of
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

/** \file osc_mem.h
    \author John MacCallum
\brief Memory management functions

This file contains functions for allocating, resizing, and freeing memory that
are used internally by functions in libo.  By default, these are set to the standard
C functions malloc, realloc, and free, but can be changed to use another applications
memory management routines.  For example, if writing a Max/MSP object using libo,
you would probably want to set them to sysmem_newptr(), sysmem_resizeptr(), and sysmem_freeptr().
 */

#ifndef __OSC_MEM_H__
#define __OSC_MEM_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h> // for size_t
#include "osc_error.h"

/**
 * Memory allocator used by libo.  Defaults to malloc.
 *
 * @param size Number of bytes to be allocated.
 * @return void* pointer to a new block of memory.
 */
void *osc_mem_alloc(size_t size);

/**
 * Resize a block of memory.  Defaults to realloc.  If ptr is NULL, this function
 * will call osc_mem_alloc().
 *
 * @param ptr The pointer to be resized.
 * @param size The new size.
 * @return A pointer to the newly resized block
 */
void *osc_mem_resize(void *ptr, size_t size);

/**
 * Free a block of memory.  Defaults to free.  It goes without saying that this function should
 * be the deallocating counterpart to whatever function osc_mem_alloc() is using.
 *
 * @param ptr The pointer to be freed.
 */
void osc_mem_free(void *ptr);

/**
 * Set the functions used to allocate, resize, and free memory.
 *
 * @param malloc_func Memory allocation function pointer.
 * @param free_func Function pointer to a function that frees memory.
 * @param resize_func Memory resizing function pointer.
 */
void osc_set_mem(void *(*malloc_func)(size_t),
		 void (*free_func)(void*),
		 void *(*resize_func)(void*, size_t));

/**
 * Get the size of a piece of data based on its typetag.  If the typetag is `s', strlen (or some
 * other appropriate fuction) will be called to determine the size.
 *
 * @param typetag The typetag of the argument.
 * @param data The data whose size is to be determined.
 * @return The size.
 */
size_t osc_sizeof(unsigned char typetag, char *data);

/**
 * Indicates whether a given typetag should have its data translated to/from network order
 *
 * @param typetag The typetag in question
 * @return true or false (nonzero or zero)
 */
int osc_mem_shouldByteswap(unsigned char typetag);

/**
 * Byteswap a piece of data if necessary.  This function calls osc_mem_shouldByteswap() on
 * the typetag to see whether a call to htonXX is necessary.
 *
 * @param typetag The typetag that will be used to determine whether a call to htonXX is necessary
 * @param data A char array containing the data to be encoded
 * @param out The address of a char array where the result will be placed.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_mem_encodeByteorder(unsigned char typetag, char *data, char **out);

/**
 * Byteswap a piece of data if necessary.  This function calls osc_mem_shouldByteswap() on
 * the typetag to see whether a call to ntohXX is necessary.
 *
 * @param typetag The typetag that will be used to determine whether a call to ntohXX is necessary
 * @param data A char array containing the data to be encoded
 * @param out The address of a char array where the result will be placed.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_mem_decodeByteorder(unsigned char typetag, char *data, char **out);

#ifdef __cplusplus
}
#endif

#endif // __OSC_MEM_H__
