/* File: pqops.c
 * Desc: source file for heap manipulation functions
 * Author: Sriranga Veeraraghavan <srv@cisco.com>
 * Revision: $Id: pqops.c 434 2005-06-16 23:24:22Z ranga $
 */

#include <stdio.h>
#include <stdlib.h>
#include "pqops.h"

/* global character array for debug & error messages */
char messages[MSGSIZE];
node tmp;

/* Function which takes a heap rooted at the given index and make sure
 * that is confroms to the heap critera. Adapted from Introduction to
 * Algorithms (Cormen, Leiserson, Rivest 1990) page 143 */

void heapify(binary_heap *a,int i) {
  register int l,r,largest;
  
  l = LEFT(i);
  r = RIGHT(i);

  /* check the left child */

  largest = ((l <= a->heap_size && 
	      compare_priority(a->elements[l],a->elements[i])) ? l : i);

  /* check the right child */

  if (r <= a->heap_size && 
      compare_priority(a->elements[r],a->elements[largest])) largest = r;

  if (largest != i) { 

    /* swap nodes largest and i, then heapify */

    SWAP(node,a->elements[i],a->elements[largest]);
    heapify(a,largest);
  }
}

/* Function to return the max (first) node of a heap */

node_ptr heap_max(binary_heap *a) { 
  return ((a->heap_size <= 0) ? NULL : &(a->elements[1])); 
}

/* Function to remove the max node from the heap and return it.  The
 * running time is O(lg(n)) since it performs only a costant amount of
 * work on top of the O(lg(n)) of heapify(). Adapted from Introduction
 * to Algorithms (Cormen, Leiserson, Rivest 1990) page 150 */

node heap_extract_max(binary_heap *a) {
  node max;

  max.sentinel = 1;

  /* if there are elements in the heap, make the last item in the heap
   * the first one, shorten the heap by one and call heapify(). */

  if (a->heap_size >= 1) {
    max = a->elements[1];
    a->elements[1] = a->elements[(a->heap_size)--];
    heapify(a,1);
  }

  return max;
}

/* Function to insert an element into the heap, worst case running
 * time is O(lg(n)) on an n element heap, since the path traced from
 * the new leaf to the root has at most length lg(n). This occurs when
 * the new leaf should be the root node.  Adapted from Introduction to
 * Algorithms (Cormen, Leiserson, Rivest 1990) page 150 */

int heap_insert(binary_heap *a, node key) {
  register int i;

  /* if the heap already has the max number of elements we do not
   * allow more elements to be added */

  if (a->heap_size >= a->max_elems) {
    print_error("Heap capacity exceeded, new element not added.");
    return -1;
  }

  /* increase the heap size to accomidate the new node, and set the
   * inital position of this node to be the last node in the heap */

  i = ++(a->heap_size);

  /* traverse the parth from the leaf to the root to find the a proper
   * place for the new element */

  while (i > 1 && compare_priority(key,a->elements[PARENT(i)])) {
    a->elements[i] = a->elements[PARENT(i)];
    i = PARENT(i);
  }

  /* insert the element at the position that was determined */

  a->elements[i] = key;

  // heapify???
  heapify(a, i);

  return i;

}

/* Function to delete a node from the heap. Adapted from Introduction
 * to Algorithms (Cormen, Leiserson, Rivest 1990) page 151 Exercise
 * 7.5-5 */

void heap_delete(binary_heap *a, int i) {
  node deleted;

  /* return with an error if the input is invalid, ie trying to delete
   * elements that are outside of the heap bounds, 1 to heap_size */
  
  if (i > a->heap_size || i < 1) {    
    sprintf(messages,"heap_delete(): %d, no such element.",i);
    print_error(messages);
    return;
  }

  /* switch the item to be deleted with the last item, and then
   * shorten the heap by one */

  deleted = a->elements[i];
  a->elements[i] = a->elements[(a->heap_size)--];

  heapify(a,i);

  /* (compare_priority(a->elements[i],deleted)) ? heap_up(a,i) : heap_down(a,i); */

}

/* Function to increase the key value of a node from in the
 * heap. Adapted from Introduction to Algorithms (Cormen, Leiserson,
 * Rivest 1990) page 151 Exercise 7.5-4 */

/*
void heap_increase_key(binary_heap *a,int i,priority p) {

  if (i > a->heap_size || i < 1) {
    sprintf(messages,"heap_increase_key(): %d, no such element.",i);
    print_error(messages);
    return;
  }

  a->elements[i].p = p;
  heapify(a,i);
}
*/

/* function to initalize a given binary heap */

void heap_initialize(binary_heap *a,int nodes) { 

  /* We initalize heap_size to zero, since a newly created heap
   * contains no elements. */

  a->heap_size = 0; 

  /* we set the max elems to the requested number of nodes, and the
   * allocate enough space for this + 1 number of nodes, since the
   * heap is always numbered from 1, but array/pointer accesses are
   * always from 0. */

  a->max_elems = nodes;
  a->elements = (node_ptr)malloc(sizeof(node)*((a->max_elems)+1));

  /* mark the zero'th element of the heap a to be empty, just in case
   * it is every accessed */

  a->elements[0].sentinel = 1;
}

/* function to clean up after we are done with the heap */

void heap_finalize(binary_heap *a) { FREE(a->elements); }

/* function to create a node */

/* function to compare the priority of two given nodes, this is a
 * wrapper for the given compare routine, since in all heap
 * comparisions, we are only interested in greater than or less than
 * operations */

int compare_priority(node i, node j) {
  
  int c;
  //c = OSCTimeTag_cmp(&(i.timestamp), &(j.timestamp)); 
  c = osc_timetag_compare(i.timestamp, j.timestamp);
  
  if(c == -1) { // priority sorts opposite of timestamp...
    return 1;
  }
  if(c == 0) {
    if(i.id > j.id) {
      return 1;
    }
  }

  return 0;
}

/* function to find if a node is in the heap, O(n) worst case, since
 * we will have to consider every element in a failed search */

int node_find(binary_heap a,unsigned int id) {
  register int i;

  for (i = 1; i<=a.heap_size; i++)
    if (id == a.elements[i].id) return i;
  return FAILED;
}

/* function to print an error message */

void print_error(char *msg) { printf("# ERROR: %s\n",msg); }

