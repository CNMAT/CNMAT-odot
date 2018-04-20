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
#define OMAX_DOC_SHORT_DESC "Attaches to a shared memory file descriptor for IO to separate odot process"
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
#include <sys/sem.h>
#include <sys/shm.h>


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
    
    char            *mem_ptr;
    bool            new_mem_flag;

    long            len_offset, ptr_offset;
    
} t_o_daemon;

t_class *o_daemon_class;


void o_daemon_checkmem( t_o_daemon *x)
{
    post("is new %i", (bool)(*x->mem_ptr) );
    post("size %ld", (long)(*( x->mem_ptr + x->len_offset )) );
    post("bundle %s", (x->mem_ptr + x->ptr_offset) );
    
}

void o_daemon_setNewBundle(t_o_daemon *x, long len, char *ptr)
{
    *x->mem_ptr = true;
    *(x->mem_ptr + x->len_offset) = len;
    memcpy(x->mem_ptr + x->ptr_offset, ptr, len);
}

void o_daemon_fullPacket(t_o_daemon *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR

    if( len >= MAXBUNDLESIZE )
        return;
    
    // lock semaphore here
    
    t_osc_bndl_s *in_bndl = osc_bundle_s_alloc(len, ptr);

    o_daemon_setNewBundle(x, len, ptr);
   
    
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
    
    int rc = semctl( x->sem_id, 0, IPC_RMID );
    if (rc==-1)
    {
        object_error((t_object*)x, "free: semctl() remove failed\n");
    }
    
    rc = shmdt( x->mem_ptr );
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
        
        x->new_mem_flag = false;
        x->len_offset = sizeof(bool);
        x->ptr_offset = sizeof(bool) + sizeof(long);
        
        if( argc != 1 && atom_gettype(argv) != A_LONG )
        {
            object_error((t_object*)x, "missing required argument: reference ID integer");
            return NULL;
        }
        
        x->key_id = atom_getlong(argv);
        
        x->sh_mem_key = ftok("/dev/null", x->key_id );
        if ( x->sh_mem_key == (key_t)-1 )
        {
            object_error((t_object*)x, "sh_mem_key %d: name generation failed ", x->key_id );
            return NULL;
        }
        
        x->sem_key = ftok("/dev/null", x->key_id );
        if ( x->sem_key == (key_t)-1 )
        {
            object_error((t_object*)x, "sem_key %d: name generation failed ", x->key_id );
            return NULL;
        }
        
        x->sem_id = semget( x->sem_key, 1, IPC_CREAT |  0666  );
        if ( x->sem_id == -1 )
        {
            object_error((t_object*)x, "failed to init semaphore" );
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
