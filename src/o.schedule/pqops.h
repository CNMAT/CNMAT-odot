/* File: pqops.h
 * Desc: header file for heap manipulation functions
 * Author: Sriranga Veeraraghavan <srv@cisco.com>
 * Revision: $Id: pqops.h 434 2005-06-16 23:24:22Z ranga $
 */

#ifndef pqops_h
#define pqops_h

/* define some constants,  */

#define MSGSIZE 128       /* max size of a debug message */
#define FAILED   -1       /* define -1 to indicate failure of some operations */
#define EMPTY     1       /* define  1 to indicate that the heap is empty */ 

/* just in case NULL is not defined */

#ifndef NULL
#define NULL    0
#endif

/* define some macros */

#define FREE(x)  free(x) ; x = NULL            /* core if free'ed pointer is used */
#define LEFT(x)  (2*x)                         /* left child of a node */
#define RIGHT(x) ((2*x)+1)                     /* right child of a node */
#define PARENT(x) (x/2)                        /* parent of a node */
#define SWAP(t,x,y) tmp = x ; x = y ; y = tmp  /* swap to variables */

typedef unsigned long long int priority;

/* define a structure representing an individual node in the heap, and
 * make it a valid type for convenience */

/* create a global node tmp, for swaping purposes */

#include "osc_timetag.h"

typedef struct _node
{
  int sentinel;
  unsigned int id;
  unsigned int length;
  t_osc_timetag timestamp;
} node;


/* for convience in function declarations, typedef a pointer to a node
 * as its own type, node_ptr */

typedef node * node_ptr;

/* define a structure representing the heap, and make it a valid type
 * for convenience */

typedef struct binary_heap {
  int heap_size;
  int max_elems;
  node_ptr elements;
} binary_heap ;


/* function prototypes for functions which operate on a binary heap */ 

extern void        heapify(binary_heap *a,int i);
extern node_ptr    heap_max(binary_heap *a);
extern node        heap_extract_max(binary_heap *a);
extern int         heap_insert(binary_heap *a,node key);
extern void        heap_delete(binary_heap *a,int i);
extern void        heap_increase_key(binary_heap *a,int i,priority p);
extern void        heap_initialize(binary_heap *a,int nodes);
extern void        heap_finalize(binary_heap *a);

/* function prototypes for functions which operate on a node */

extern int         node_find(binary_heap a,unsigned int id);

/* function prototypes for helper functions */

extern int         compare_priority(node i, node j);
extern void        print_error(char *msg);

#endif
