/*
 Written by Rama Gottfried, The Center for New Music and Audio Technologies,
 University of California, Berkeley.  Copyright (c) 2018, The Regents of
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
 NAME: o.daemon
 DESCRIPTION: Attaches to a shared memory file descriptor for IO to separate odot process
 AUTHORS: Rama Gottfried
 COPYRIGHT_YEARS: 2018
 SVN_REVISION: $LastChangedRevision: 587 $
 VERSION 0.0: First try
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */


#define OMAX_DOC_NAME "o.daemon"
#define OMAX_DOC_SHORT_DESC "Attaches to a shared memory file descriptor for inter process comunication"
#define OMAX_DOC_LONG_DESC "o.daemon"
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet to set values, bang or empty bundle causes output of current state of attached objects"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing state of attached GUI objects", "OSC error message outlet.", "OSC messages not matching attached GUI objects."}
#define OMAX_DOC_SEEALSO (char *[]){"cnmat.o.gui.function", "cnmat.o.gui.table", "pattrstorage"}


#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"

#include "osc.h"
#include "osc_bundle_iterator_u.h"
#include "osc_bundle_s.r"

#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "odot_version.h"
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>

//#include <sys/sem.h>
#include <semaphore.h>

#define MAXBUNDLESIZE 65536L

typedef struct _o_daemon
{
    t_object        ob;
    void            *outlet;
    void            *error_outlet;
    
    t_osc_bndl_u    *error_bndl;
    
    void            *qelem_output;
    void            *clock;
    
	t_critical      lock;
    
    int             key_id;
    
    key_t           sh_mem_key, sem_key;
    int             shm_id, sem_id;
    
    sem_t           *m_sem;
    t_symbol        *sem_name;
    
    char            *mem_ptr;
    int             new_mem_flag;

    long            len_offset, ptr_offset;
    
} t_o_daemon;

t_class *o_daemon_class;

short getMemFlag(t_o_daemon *x)
{
    return (short)(*x->mem_ptr);
}

long getLen(t_o_daemon *x)
{
    return (long)(*(x->mem_ptr + x->len_offset));
}

char *getPtr(t_o_daemon *x)
{
    return (x->mem_ptr + x->ptr_offset);
}

void o_daemon_checkmem( t_o_daemon *x)
{
    sem_wait( x->m_sem );
 
    post("is new %i", getMemFlag(x) );
    post("size %ld", getLen(x) );
    post("bundle %s", getPtr(x) );

    t_osc_bundle_u *bndl = osc_bundle_s_deserialize( getLen(x), getPtr(x) );
    if( bndl )
    {
        t_osc_bndl_it_u *it = osc_bndl_it_u_get(bndl);
        while( osc_bndl_it_u_hasNext(it) )
        {
            t_osc_msg_u *msg = osc_bndl_it_u_next(it);
            post("%s\n", osc_message_u_getAddress(msg) );
        }
        osc_bndl_it_u_destroy(it);
        
        osc_bundle_u_free(bndl);
    }
    
    sem_post( x->m_sem );
    
}

void o_daemon_setNewBundle(t_o_daemon *x, long len, char *ptr)
{
    x->new_mem_flag = 1;
    *x->mem_ptr = 1;
    *(x->mem_ptr + x->len_offset) = len;
    memcpy(x->mem_ptr + x->ptr_offset, ptr, len);
}

void o_daemon_fullPacket(t_o_daemon *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR

    if( len >= MAXBUNDLESIZE )
        return;
    
    //or sem_timedwait?
    
    sem_wait( x->m_sem );
    o_daemon_setNewBundle(x, len, ptr); // sets flag to 1
    sem_post( x->m_sem );
    
    long t = gettime();
    t_osc_bundle_s *out_bndl = NULL;
    
    while( x->new_mem_flag == 1 && (gettime() - t) < 100 )
    {
        sem_wait(x->m_sem);
        
        x->new_mem_flag = getMemFlag(x);
        
        if( x->new_mem_flag == 2 )
        {
            out_bndl = osc_bundle_s_alloc( getLen(x), getPtr(x) );
        }
        
        sem_post(x->m_sem);
    }
    
    if( out_bndl )
    {
        omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(out_bndl), osc_bundle_s_getPtr(out_bndl) );
        
        osc_bundle_s_free( out_bndl );
    }
    
    // blocking or asyc callback from daemon?
    // unlock
}

OMAX_DICT_DICTIONARY(t_o_daemon, x, o_daemon_fullPacket);

void o_daemon_doc(t_o_daemon *x)
{
    omax_doc_outletDoc(x->outlet);
}

void o_daemon_assist(t_o_daemon *x, void *b, long io, long num, char *buf)
{
    omax_doc_assist(io, num, buf);
}

void o_daemon_free(t_o_daemon *x)
{
    
    sem_post( x->m_sem );
    sem_unlink( x->sem_name->s_name );
    // or close?
    
    int rc = shmdt( x->mem_ptr );
    if (rc==-1)
    {
       object_error((t_object*)x,"free: shmdt() failed\n");
    }
    
    struct shmid_ds shmid_struct;
    rc = shmctl( x->shm_id, IPC_RMID, &shmid_struct);
    if (rc==-1)
    {
        object_error((t_object*)x, "free: shmctl() failed\n");
    }
    
    
    if( x->error_bndl )
        osc_bundle_u_free(x->error_bndl);
    
    
    critical_free(x->lock);
    
}


void *o_daemon_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_o_daemon *x = NULL;
    x = (t_o_daemon *)object_alloc(o_daemon_class);
	if(x)
    {
        
        x->new_mem_flag = 0;
        x->len_offset = sizeof(short);
        x->ptr_offset = sizeof(short) + sizeof(long);
        
        if( argc != 1 && atom_gettype(argv) != A_LONG )
        {
            object_error((t_object*)x, "missing required argument: reference ID integer");
            return NULL;
        }
        
        x->key_id = atom_getlong(argv);
        
        char buf[20];
        sprintf( buf, "/%d",  x->key_id );
        x->sem_name = gensym(buf);
        
        x->m_sem = sem_open( buf, O_CREAT, 0666, 0 );
        if( x->m_sem == (void*)-1 )
        {
            object_error((t_object*)x, "sem_open failure");
            return NULL;
        }
        sem_post( x->m_sem );

        x->sh_mem_key = ftok("/dev/null", x->key_id );
        if ( x->sh_mem_key == (key_t)-1 )
        {
            object_error((t_object*)x, "sh_mem_key %d: name generation failed ", x->key_id );
            return NULL;
        }
        
        // find exsiting or create shared memory and semaphore
        // start polling thread?
        x->shm_id = shmget( x->sh_mem_key, MAXBUNDLESIZE, IPC_CREAT | 0666 );
        if ( x->shm_id < 0)
        {
            object_error((t_object*)x,"shmget");
            return NULL;
        }
        
        x->mem_ptr = shmat( x->shm_id, NULL, 0 );
        if ( x->mem_ptr == (void *)-1)
        {
            object_error((t_object*)x,"shmat");
            return NULL;
        }
        
        x->error_outlet = outlet_new((t_object *)x, "FullPacket");
        x->outlet = outlet_new((t_object *)x, "FullPacket");

		critical_new(&(x->lock));

    }
	return x;
}

int main(void)
{
	t_class *c = class_new("o.daemon", (method)o_daemon_new, (method)o_daemon_free, sizeof(t_o_daemon), 0L, A_GIMME, 0);
	class_addmethod(c, (method)o_daemon_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)o_daemon_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)o_daemon_doc, "doc", 0);

    class_addmethod(c, (method)o_daemon_checkmem, "bang", A_CANT, 0);
    
    class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);

	class_register(CLASS_BOX, c);
	o_daemon_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	return 0;
}
