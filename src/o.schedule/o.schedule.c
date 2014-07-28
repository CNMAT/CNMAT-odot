/*
 
  Copyright (c) 2008
  The Regents of the University of California (Regents).
  All Rights Reserved.
 
  Permission to use, copy, modify, and distribute this software and its
  documentation for educational, research, and not-for-profit purposes, without
  fee and without a signed licensing agreement, is hereby granted, provided that
  the above copyright notice, this paragraph and the following two paragraphs
  appear in all copies, modifications, and distributions.  Contact The Office of
  Technology Licensing, UC Berkeley, 2150 Shattuck Avenue, Suite 510, Berkeley,
  CA 94720-1620, (510) 643-7201, for commercial licensing opportunities.
 
  Written by Andy Schmeder, The Center for New Music and Audio Technologies,
  University of California, Berkeley.
 
  IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
  SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS,
  ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF
  REGENTS HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
  REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
  FOR A PARTICULAR PURPOSE. THE SOFTWARE AND ACCOMPANYING
  DOCUMENTATION, IF ANY, PROVIDED HEREUNDER IS PROVIDED "AS IS".
  REGENTS HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES,
  ENHANCEMENTS, OR MODIFICATIONS.
 
  OSC-schedule.c
 
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  NAME: OSC-schedule
  DESCRIPTION: Schedules packets using OSC time stamps
  AUTHORS: Andy Schmeder
  COPYRIGHT_YEARS: 2008
  SVN_REVISION: $LastChangedRevision: 1634 $
  VERSION 0.1: First public release
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 
*/
#define OMAX_DOC_NAME "o.schedule"
#define OMAX_DOC_SHORT_DESC "Deadline Scheduler  for OSC packets using OSC timetags"
#define OMAX_DOC_LONG_DESC "Stores incoming OSC packets and tries to output them at the time indicated by the timestamp."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet to be scheduled", "Inactive (reserved for future use)"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet", "OSC packet which has missed the scheduling deadline", "OSC packet which has an immediate timetag", "OSC packet output if the queue is full"}
#define OMAX_DOC_SEEALSO (char *[]){"o.timetag"}

#ifndef WIN_VERSION
#include <CoreServices/CoreServices.h>
#endif
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "omax_pd_proxy.h"
#define proxy_getinlet(x) (((t_osched *)(x))->inlet)
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif

#include "pqops.h" // heap-based priority queue
#include "osc.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_timetag.h"
#include "osc_mem.h"
#include "odot_version.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

// default options
#define DEFAULT_PACKET_SIZE 1000
#define DEFAULT_QUEUE_SIZE 1500

#define OSCHEDULE_OUTLET_MAIN x->outlets[0]
#define OSCHEDULE_OUTLET_MISSED x->outlets[1]
#define OSCHEDULE_OUTLET_DELEGATE x->outlets[3]
#define OSCHEDULE_OUTLET_IMMEDIATE x->outlets[2]

/* structure definition of your object */
typedef struct _osched
{
	t_object ob; // required header
	void *outlets[4];
#ifdef OMAX_PD_VERSION
	void **proxy;
#else
	void *proxy;
#endif
	long inlet;
	void *clock;
	t_critical lock;
	int soft_lock;

	t_symbol *address;
    
	// scheduler precision
	t_osc_timetag precision;
    
	// binary heap
	binary_heap q;
    
	long packets_max;
	int *packet_free;
	char *packet_data;
	long packet_size;
    
	unsigned int id;
    
} t_osched;

#ifdef OMAX_PD_VERSION
t_omax_pd_proxy_class *osched_class;
t_omax_pd_proxy_class *osched_proxy_class;
#else
t_class *osched_class;
#endif

t_symbol *ps_FullPacket;

void osched_fullPacket(t_osched *x, t_symbol *s, int argc, t_atom* argv);
void osched_tick(t_osched *x);
void osched_reset(t_osched* x);
t_osc_timetag osched_getTimetag(t_osched *x, long len, char *ptr);
void* osched_new(t_symbol* s, short argc, t_atom* argv);
void osched_free(t_osched *x);
void osched_assist (t_osched *x, void *box, long msg, long arg, char *dstString);
t_max_err osched_getPrecision(t_osched *x, void *attr, long *ac, t_atom **av);
t_max_err osched_setPrecision(t_osched *x, void *attr, long ac, t_atom *av);

void osched_fullPacket(t_osched *x, t_symbol *s, int argc, t_atom *argv)
{
#ifdef OMAX_PD_VERSION
    /*currently second inlet doesn't do anything
    if(proxy_getinlet((t_object *)x) == 1)
    {
        post("right inlet currently in developement");
        return;
    }*/
    
#endif
	OMAX_UTIL_GET_LEN_AND_PTR
	node n;
	n.length = len;
	char *bndl = ptr;
	float dt;
    
	node *p_n;
    
	// check for queue full condition
	if(x->q.heap_size == x->packets_max) {
		object_error((t_object *)x, "queue overflow");
		omax_util_outletOSC(OSCHEDULE_OUTLET_DELEGATE, len, ptr);
		return;
	}
        
	// check for length condition
	if(n.length >= x->packet_size) {
		object_error((t_object *)x, "packet length %d exceeds maximum", n.length);
		omax_util_outletOSC(OSCHEDULE_OUTLET_DELEGATE, len, ptr);
		return;
	}
                
	t_osc_timetag timetag = osched_getTimetag(x, len, bndl);
	/*
	n.timestamp.sec = ntohl(*((unsigned long *)(bndl+8)));
	n.timestamp.frac_sec = ntohl(*((unsigned long *)(bndl+12)));
	n.timestamp.sign = 1;
	*/
	n.timestamp = timetag;
        
	// immediate goes out the third outlet 
	if(osc_timetag_isImmediate(timetag)){
		omax_util_outletOSC(OSCHEDULE_OUTLET_IMMEDIATE, len, ptr);
		return;
	}
        
	// get now
	t_osc_timetag now = osc_timetag_now();
        
	// now plus scheduler precision interval -> x_nowp1
	t_osc_timetag nowp1 = osc_timetag_add(now, x->precision);//osc_timetag_floatToTimetag(x->precision));

        
	// compare
	switch(osc_timetag_compare(nowp1, n.timestamp)){
	case 0: // output is on time
		omax_util_outletOSC(OSCHEDULE_OUTLET_MAIN, len, ptr);
		return;
              
	case 1: // deadline miss or on-time
		//switch(OSCTimeTag_cmp(&now, &(n.timestamp))) {
		switch(osc_timetag_compare(now, n.timestamp)){
		case -1: // within scheduler boundary, output on time
		case 0:
			omax_util_outletOSC(OSCHEDULE_OUTLET_MAIN, len, ptr);
			return;
                    
		case 1: // deadline missed
			omax_util_outletOSC(OSCHEDULE_OUTLET_MISSED, len, ptr);
			return;
		}
	}
        
	// message is candidate for future scheduling...
                
	// lock
	critical_enter(x->lock);
        
	while(x->soft_lock == 1){  // spin until soft_lock is released
		critical_exit(x->lock);
		critical_enter(x->lock);
	}
        
	// claim soft lock
	x->soft_lock = 1;
        
	// reset clock timeout
	clock_unset(x->clock);
        
	while(x->packet_free[x->id] != 1) {
		x->id = ((x->id + 1) % x->packets_max);
	}
	n.id = x->id;
	x->id++;
        
	// mark slot as busy
	x->packet_free[n.id] = 0;
        
	// add to queue
	//int i = heap_insert(&(x->q), n);
	heap_insert(&(x->q), n);
        
	// copy data...
	// x->q.elements[i].data = x->packet_data + (x->packet_size * n.id);
	memcpy(x->packet_data + (x->packet_size * n.id), bndl, len);
        
	// check for new scheduling target delay
	p_n = heap_max(&(x->q));
        
	now = osc_timetag_now();
        
	nowp1 = osc_timetag_subtract(p_n->timestamp, now);
	dt = osc_timetag_timetagToFloat(nowp1);
        
	critical_exit(x->lock);
        
	//post("OSC-schedule: target delay %f msec", dt * 1000.0);
        
	if(dt < 0.001){
		x->soft_lock = 0;
		osched_tick(x);
	}else{
		clock_fdelay(x->clock, dt * 1000.);
		x->soft_lock = 0;
	}
}

void osched_reset(t_osched *x)
{    
	// wait for soft lock to open
	critical_enter(x->lock);
	while(x->soft_lock == 1){
		critical_exit(x->lock);
		critical_enter(x->lock);
	}
	x->soft_lock = 1;    
	clock_unset(x->clock);
    
	// clear queue
	while(heap_max(&(x->q)) != NULL){
		heap_extract_max(&(x->q));
	}
    
	// clear soft lock
	x->soft_lock = 0;
	critical_exit(x->lock);
}

void osched_tick(t_osched *x)
{
	critical_enter(x->lock);
	while(x->soft_lock == 1) {
		critical_exit(x->lock);
		critical_enter(x->lock);
	}
    
	clock_unset(x->clock);    
	x->soft_lock = 1;

	node_ptr p_n = heap_max(&(x->q));
    
	t_osc_timetag now = osc_timetag_now();
	t_osc_timetag nowp1 = osc_timetag_add(now, x->precision);
    
	while(p_n != NULL){
		int t = osc_timetag_compare(nowp1, p_n->timestamp);
		if(t == 1 || t == 0) {
			// now actually dequeue it...
			node n = heap_extract_max(&(x->q));
            
			// dequeue and pass on the next scheduled packet
			//SETLONG(&(fp[0]), n.length);
			//SETLONG(&(fp[1]), (unsigned long int)((x->packet_data + (x->packet_size * n.id))));
            
			x->packet_free[n.id] = 1;
			x->id = n.id; // this isn't necessary but should keep the cache footprint smaller
            
			// soft lock is NOT released...

//////////////////////////////////////////////////
// In Andy's original code, the soft lock is not released (see comment above)
// but that means that we can't use the event to generate a new one to be scheduled.
// Since we already have the node and we don't have any cleanup or anything to do,
// there should be no reason why we can't release the soft lock to allow an event to 
// be added to the queue.  --JM
//////////////////////////////////////////////////

			long len = n.length;
			char buf[n.length];
			memcpy(buf, x->packet_data + (x->packet_size * n.id), n.length);
			critical_exit(x->lock);
			x->soft_lock = 0;
			t_osc_timetag tt = osched_getTimetag(x, len, buf);
			void *outlet = OSCHEDULE_OUTLET_MAIN;
			/*
			int tcomp = osc_timetag_compare(tt, now);
			if(tcomp < 0){
				outlet = OSCHEDULE_OUTLET_MISSED;
			}
			*/
			omax_util_outletOSC(outlet, len, buf);
			critical_enter(x->lock);

			while(x->soft_lock == 1){
				critical_exit(x->lock);
				critical_enter(x->lock);
			}
			x->soft_lock = 1;    
            
		} else {
			break;
		}
        
		// get next node
		p_n = heap_max(&(x->q));
	}    
	critical_exit(x->lock);
    
	if(p_n != NULL){
		now = osc_timetag_now();
        
		nowp1 = osc_timetag_subtract(p_n->timestamp, now);
		double dt = osc_timetag_timetagToFloat(nowp1);
        
		if(dt < 0.001){
			x->soft_lock = 0;
			osched_tick(x); // re-enter on self... shouldn't happen too often, hopefully.
		}else{
			x->soft_lock = 0;
			clock_fdelay(x->clock, dt * 1000.);
		}
        
	} else {
		x->soft_lock = 0;
	}    
}

t_osc_timetag osched_getTimetag(t_osched *x, long len, char *ptr)
{
	if(x->address){
		t_symbol *address = x->address;
		t_osc_msg_ar_s *ar = NULL;
		osc_bundle_s_lookupAddress(len, ptr, address->s_name, &ar, 1);
		if(ar){
			if(osc_message_array_s_getLen(ar) > 0){
				t_osc_msg_s *msg = osc_message_array_s_get(ar, 0);
				t_osc_msg_it_s *mit = osc_msg_it_s_get(msg);
				while(osc_msg_it_s_hasNext(mit)){
					t_osc_atom_s *a = osc_msg_it_s_next(mit);
					if(a){
						if(osc_atom_s_getTypetag(a) == OSC_TIMETAG_TYPETAG){
							t_osc_timetag timetag = osc_atom_s_getTimetag(a);
							osc_msg_it_s_destroy(mit);
							osc_message_array_s_free(ar);
							return timetag;
						}
					}
				}
				osc_msg_it_s_destroy(mit);
			}
			osc_message_array_s_free(ar);
		}
	}
	// we didn't find a timetag at the address that the user supplied
	// so we'll check the header
	if(OSC_TIMETAG_FORMAT == OSC_TIMETAG_NTP){
		return *((t_osc_timetag *)(ptr + OSC_ID_SIZE));
	}else{
		// print an error for now.  in the future, we'll convert from NTP to 
		// PTP or whatever...
		object_error((t_object *)x, "Couldn't process timetag in header");
		return OSC_TIMETAG_NULL;
	}
}

void osched_free(t_osched *x)
{
	clock_unset(x->clock);
#ifdef OMAX_PD_VERSION
	clock_free(x->clock);
    
    pd_free(x->proxy[0]);
    pd_free(x->proxy[1]);
	free(x->proxy);
    x->proxy = NULL;
#else
	object_free(x->clock);
	object_free(x->proxy);
#endif
	critical_free(x->lock);
	osc_mem_free(x->packet_data);
	osc_mem_free(x->packet_free);
	heap_finalize(&(x->q));    
}


void osched_doc(t_osched *x)
{
	omax_doc_outletDoc(OSCHEDULE_OUTLET_MAIN);
}

#ifdef OMAX_PD_VERSION

void osched_setQueSize(t_osched *x, double f)
{
    x->packets_max = f;
}

void osched_setPacketSize(t_osched *x, double f)
{
    x->packet_size = f;
}

void *osched_new(t_symbol *s, short argc, t_atom *argv)
{
    t_osched *x;
	int i;
    
	x = (t_osched *)object_alloc(osched_class->class);
	if(!x){
		return NULL;
	}
    
	x->packets_max = DEFAULT_QUEUE_SIZE;
	x->packet_size = DEFAULT_PACKET_SIZE;
    
	//OSCTimeTag_float_to_ntp(0.003, &(x->precision));
	x->precision = osc_timetag_floatToTimetag(0.003);
    
	x->id = 0;
    
	x->clock = clock_new(x, (t_method)osched_tick);
	critical_new(&x->lock);
    
	x->address = 0;
	if(argc > 0){
		if(atom_gettype(argv) == A_SYM){
			t_symbol *s = atom_getsym(argv);
			if(s->s_name[0] == '/'){
				x->address = s;
			}
		}
	}

    //	attr_args_process(x, argc, argv);
    /*

    // currently not using attributes, this seciton can probably be deleted
    for(i = 1; i < argc; i++)
    {
        if(atom_gettype(argv + i) == A_SYM)
        {
            t_symbol *attribute = atom_gensym(argv+i);
            if(attribute == gensym("@precision")){
                if(atom_gettype(argv+(++i)) == A_FLOAT)
                {
                    osched_setPrecision(x, NULL, 1, argv+i);
                } else {
                    post("@precision value must be a number");
                    return 0;
                }
            } else if(attribute == gensym("@queuesize")){
                if(atom_gettype(argv+(++i)) == A_FLOAT)
                {
                    x->packets_max = atom_getfloat(argv+i);
                } else {
                    post("@queuesize value must be a number");
                    return 0;
                }
            } else if(attribute == gensym("@packetsize")){
                if(atom_gettype(argv+(++i)) == A_FLOAT)
                {
                    x->packet_size = atom_getfloat(argv+i);
                } else {
                    post("@packetsize value must be a number");
                    return 0;
                }
            } else if(attribute->s_name[0] == '@') {
                post("unknown attribute");
            }  else {
                post("o.schedule optional attributes are @precision, @queuesize, @packetsize, @maxdelay");
            }
            
        } else {
            post("o.schedule optional attributes are @precision, @queuesize, @packetsize, @maxdelay");
            return 0;
        }
        
        
    }
*/
    
    x->proxy = (void **)malloc(2 * sizeof(t_omax_pd_proxy *));
    x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), osched_proxy_class);
    x->proxy[1] = proxy_new((t_object *)x, 1, &(x->inlet), osched_proxy_class);
    
	OSCHEDULE_OUTLET_MAIN = outlet_new((t_object *)x, gensym("FullPacket"));
	OSCHEDULE_OUTLET_MISSED = outlet_new((t_object *)x, gensym("FullPacket"));
	OSCHEDULE_OUTLET_DELEGATE = outlet_new((t_object *)x, gensym("FullPacket"));
	OSCHEDULE_OUTLET_IMMEDIATE = outlet_new((t_object *)x, gensym("FullPacket"));
    
	// allocate packet data buffer
	x->packet_data = (char*)osc_mem_alloc(x->packets_max * x->packet_size);
    
	// allocate nodes
	heap_initialize(&(x->q), x->packets_max);
    
	// allocate free markers
	x->packet_free = (int *)osc_mem_alloc(sizeof(int) * x->packets_max);
	for(i = 0; i < x->packets_max; i++) {
		x->packet_free[i] = 1;
	}
    
	return x;
    
}

int setup_o0x2eschedule(void)
{
    omax_pd_class_new(osched_class, gensym("o.schedule"), (t_newmethod)osched_new, (t_method)osched_free, sizeof(t_osched), CLASS_NOINLET, A_GIMME, 0);
    
    t_omax_pd_proxy_class *c = NULL;
	omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
	omax_pd_class_addmethod(c, (t_method)osched_fullPacket, gensym("FullPacket"));
	omax_pd_class_addmethod(c, (t_method)osched_reset, gensym("clear"));
	omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
    omax_pd_class_addmethod(c, (t_method)osched_doc, gensym("doc"));
//    omax_pd_class_addmethod(c, (t_method)osched_setPrecision, gensym("precision"), A_GIMME, 0);
//    omax_pd_class_addmethod(c, (t_method)osched_setQueSize, gensym("queuesize"), A_FLOAT, 0);
//    omax_pd_class_addmethod(c, (t_method)osched_setPacketSize, gensym("packetsize"), A_FLOAT, 0);

	osched_proxy_class = c;
	ps_FullPacket = gensym("FullPacket");

	ODOT_PRINT_VERSION;
	return 0;
}


#else
void osched_assist(t_osched *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

OMAX_DICT_DICTIONARY(t_osched, x, osched_fullPacket);


void *osched_new(t_symbol *s, short argc, t_atom *argv)
{
    	t_osched *x;
	int i;
    
	x = object_alloc(osched_class);
	if(!x){
		return NULL;
	}
    
	x->packets_max = DEFAULT_QUEUE_SIZE;
	x->packet_size = DEFAULT_PACKET_SIZE;
    
	x->precision = osc_timetag_floatToTimetag(0.003);
    
	x->id = 0;
    
	x->clock = clock_new(x, (method)osched_tick);
	critical_new(&x->lock);

	x->address = 0;
	if(argc > 0){
		if(atom_gettype(argv) == A_SYM){
			t_symbol *s = atom_getsym(argv);
			if(s->s_name[0] == '/'){
				x->address = s;
			}
		}
	}

	//attr_args_process(x, argc, argv);
    
	OSCHEDULE_OUTLET_IMMEDIATE = outlet_new(x, "FullPacket");
	OSCHEDULE_OUTLET_DELEGATE = outlet_new(x, "FullPacket");
	OSCHEDULE_OUTLET_MISSED = outlet_new(x, "FullPacket");
	OSCHEDULE_OUTLET_MAIN = outlet_new(x, "FullPacket");
	x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
	// allocate packet data buffer
	x->packet_data = (char*)osc_mem_alloc(x->packets_max * x->packet_size);
    
	// allocate nodes
	heap_initialize(&(x->q), x->packets_max);
    
	// allocate free markers
	x->packet_free = (int *)osc_mem_alloc(sizeof(int) * x->packets_max);
	for(i = 0; i < x->packets_max; i++) {
		x->packet_free[i] = 1;
	}
    
	return x;
    
}

int main(void)
{
    	t_class *c = class_new("o.schedule", (method)osched_new, (method)osched_free, (short)sizeof(t_osched), 0L, A_GIMME, 0);

	class_addmethod(c, (method)osched_fullPacket, "FullPacket", A_GIMME, 0);    
	class_addmethod(c, (method)osched_reset, "clear", 0);
	class_addmethod(c, (method)osched_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)osched_doc, "doc", 0);
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	/*
	CLASS_ATTR_FLOAT(c, "precision", 0, t_osched, precision);
	CLASS_ATTR_ACCESSORS(c, "precision", osched_getPrecision, osched_setPrecision);

	CLASS_ATTR_LONG(c, "queuesize", 0, t_osched, packets_max);
	CLASS_ATTR_LONG(c, "packetsize", 0, t_osched, packet_size);
	*/

	osched_class = c;
	ps_FullPacket = gensym("FullPacket");
	class_register(CLASS_BOX, osched_class);
	ODOT_PRINT_VERSION;
	return 0;
}

#endif

#ifndef OMAX_PD_VERSION
t_max_err osched_getPrecision(t_osched *x, void *attr, long *ac, t_atom **av)
{
	double f = osc_timetag_timetagToFloat(x->precision);
	if(ac && av){
		char alloc;
		if(atom_alloc(ac, av, &alloc)){
			return MAX_ERR_GENERIC;
		}
		atom_setfloat(*av, f);
	}
	return MAX_ERR_NONE;
}
#endif

t_max_err osched_setPrecision(t_osched *x, void *attr, long ac, t_atom *av)
{
	if(ac && av && atom_gettype(av) == A_FLOAT){
		double precision = atom_getfloat(av);
		x->precision = osc_timetag_floatToTimetag(precision);
	}
	return MAX_ERR_NONE;
}

