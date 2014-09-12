//TODO: fix decoding, using slip here is wrong, there is no 192 start/end byte in normal UDP!

/* x_net_oudpreceive.c 20060424. Martin Peach did it based on x_net.c. x_net.c header follows: */
/* Copyright (c) 1997-1999 Miller Puckette.
 * For information on usage and redistribution, and for a DISCLAIMER OF ALL
 * WARRANTIES, see the file, "LICENSE.txt," in Pd-Extended distribution.  */

/*
  Written by Matt Wright, Adrian Freed, Andy Schmeder, John MacCallum
 
  The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 1996,97,98,99,2000,01,02,03,04,05, 2014
  The Regents of the University of California (Regents).  

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

#define OMAX_DOC_NAME "o.udp.receive"
#define OMAX_DOC_SHORT_DESC "Decodes SLIP stream via UDP and converts it into an OSC packet"
#define OMAX_DOC_LONG_DESC "Decodes a SLIP stream via UDP and converts it into an OSC packet."
#define OMAX_DOC_INLETS_DESC (char *[]){"Bytes (int or list)"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"FullPacket"}
#define OMAX_DOC_SEEALSO  (char *[]){"o.slip.encode"}

#include "odot_version.h"

#ifdef OMAX_PD_VERSION
    #include "m_pd.h"
    #include "s_stuff.h"
    #include <string.h>
#else
    #include "ext.h"
    #include "ext_obex.h"
    #include "ext_obex_util.h"
    #include "ext_critical.h"
#endif

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#else
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>
#include <stdio.h>
#include <errno.h>
#endif

#include "osc.h"
#include "osc_mem.h"
#include "osc_serial.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "o.h"

t_class *oudpreceive_class;

t_symbol *ps_gimme, *ps_OSCTimeTag, *ps_FullPacket, *ps_OSCBlob;

#define MAXSLIPBUF 2048
#define MAX_UDP_RECEIVE 65536L // longer than data in maximum UDP packet


typedef struct oudp {
	t_object ob;
	void *outlet;  
  // udpreceive
    t_outlet        *x_addrout;
    int             x_connectsocket;
    int             x_multicast_joined;
    long            x_total_received;
    t_atom          x_addrbytes[5];
    char            x_msginbuf[MAX_UDP_RECEIVE];
    char            x_addr_name[256]; // a multicast address or 0

  // slip.decode
	char slipibuf[MAXSLIPBUF]; // buffer used to write the new packet
	int icount;
	short istate; // initialize to 0
	t_critical lock;
} t_oudpreceive;

void *oudp_new(long arg);
//void oudp_assist(t_oudpreceive *x, void *b, long m, long a, char *s);

//void oudp_send(t_oudpreceive *x);

void oudp_readtypestrings(t_oudpreceive *x, int yesno);
void oudp_writetypestrings(t_oudpreceive *x, int yesno);
void oudp_printcontents(t_oudpreceive *x);

void oudp_accumulateMessage(t_oudpreceive *x, char *messageName, short argc, t_atom *argv);
int oudp_stringSubstitution(char *target, char *format, short *argcp, t_atom **argvp);
void oudp_sendBuffer(t_oudpreceive *x);
void oudp_sendData(t_oudpreceive *x, short size, char *data);

// SLIP codes
#define END             0300    // indicates end of packet 
#define ESC             0333    // indicates byte stuffing 
#define ESC_END         0334    // ESC ESC_END means END data byte 
#define ESC_ESC         0335    // ESC ESC_ESC means ESC data byte

  
int oudp_decode(t_oudpreceive *x, unsigned char c)
{
    post("%s %x %c", __func__, c, c);
	critical_enter(x->lock);
	int t; 
	switch(x->istate)
		{
		case 0: // waiting for packet to start
			x->istate = 1;
			if(c==END){
				break;
			}
		case 1: // packet has started
			switch(c){
			case END:
				if((x->icount > 0)){ // it was the END byte
#ifdef untestedDEBUGOUTPUT
					// full packet process		
					char stringbuf[4096];
					int j=0;
					int i;
					for(p=0;i<x->icount && i<4095;++i)
						{
							char c = x->slipibuf[i];
							if(c=='/' || c=='#' || (c>='a' && c<='z')  || (c>='A' && c<='Z') || (c<='9' && c>='0') )
								stringbuf[j++] = c;
							else
								stringbuf[j++] = '*';
						}
					stringbuf[j++] = '\0';
					object_post((t_object *)x, "o.udp.receive: packet %d %s", x->icount, stringbuf);
#endif
					// ParseOSCPacket(x, x->slipibuf, x->icount, true);
					t = x->icount;
					x->icount = 0;
					x->istate = 0;
	      
					if((t % 4) == 0){
						char buf[t];
						memcpy(buf, x->slipibuf, t);
	critical_exit(x->lock);
						omax_util_outletOSC(x->outlet, t, buf);
                        OSC_MEM_INVALIDATE(buf);
						//oudp_sendData(x, t, x->slipibuf);
						return 0;
					}else{
    critical_exit(x->lock);
						//object_error((t_object *)x, "bad packet: not a multiple of 4 length");
						return 0;
					}
				}
				x->istate = 0;
				break;
			case ESC:
				x->istate = 2;
				break;
	  
				// otherwise, just stick it in the packet	 buffer	
			default:
				if(x->icount < MAXSLIPBUF){
					x->slipibuf[(x->icount)++] = c; 
				}else{
					x->istate = 3;
				}
				break;
			}
			break;
		case 2: // process escapes
			switch(c){
			case ESC_END:
				if(x->icount<MAXSLIPBUF){
					x->slipibuf[(x->icount)++] = END;
					x->istate = 1;
				}
				else
					x->istate = 3;
	  
				break;
			case ESC_ESC:
				if(x->icount<MAXSLIPBUF){
					x->slipibuf[(x->icount)++] = ESC;
					x->istate = 1;
				}
				else
					x->istate = 3;
				break;
			default:
				object_post((t_object *)x, "o.udp.receive: ESC not followed by ESC_END or ESC_ESC.");
				x->istate = 3;
			}
			break;
		case 3:   // error state: hunt for END character (this should probably be a hunt for a non escaped END character..
			if(c == END){
				x->icount = 0;
				x->istate = 0;
			}
			break;
      
		}

	critical_exit(x->lock);
	return 1;
}

//----------------- udpreceive ------------

static void udpreceive_sock_err(t_oudpreceive *x, char *err_string)
{
    /* prints the last error from errno or WSAGetLastError() */
#ifdef _WIN32
    LPVOID  lpMsgBuf;
    DWORD   dwRetVal = WSAGetLastError();
    int     len = 0, i;
    char    *cp;
    
    if (len = FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS
                             , NULL, dwRetVal, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPSTR)&lpMsgBuf, 0, NULL))
    {
        cp = (char *)lpMsgBuf;
        for(i = 0; i < len; ++i)
        {
            if (cp[i] < 0x20)
            { /* end string at first weird character */
                cp[i] = 0;
                break;
            }
        }
        pd_error(x, "%s: %s (%d)", err_string, lpMsgBuf, dwRetVal);
        LocalFree(lpMsgBuf);
    }
#else
    pd_error(x, "%s: %s (%d)", err_string, strerror(errno), errno);
#endif
}

    
static void udpreceive_read(t_oudpreceive *x, int sockfd)
{
    int                 i, read = 0;
    struct sockaddr_in  from;
    socklen_t           fromlen = sizeof(from);
    t_atom              output_atom;
    long                addr;
    unsigned short      port;
    
    read = recvfrom(sockfd, x->x_msginbuf, MAX_UDP_RECEIVE, 0, (struct sockaddr *)&from, &fromlen);
#ifdef DEBUG
    post("udpreceive_read: read %lu x->x_connectsocket = %d",
         read, x->x_connectsocket);
#endif
    /* get the sender's ip */
    addr = ntohl(from.sin_addr.s_addr);
    port = ntohs(from.sin_port);
    
    x->x_addrbytes[0].a_w.w_float = (addr & 0xFF000000)>>24;
    x->x_addrbytes[1].a_w.w_float = (addr & 0x0FF0000)>>16;
    x->x_addrbytes[2].a_w.w_float = (addr & 0x0FF00)>>8;
    x->x_addrbytes[3].a_w.w_float = (addr & 0x0FF);
    x->x_addrbytes[4].a_w.w_float = port;
    outlet_anything(x->x_addrout, gensym("from"), 5L, x->x_addrbytes);
    
    if (read < 0)
    {
        udpreceive_sock_err(x, "udpreceive_read");
        sys_closesocket(x->x_connectsocket);
        return;
    }
    
    if((read % 4) == 0){
        char buf[read];
        memcpy(buf, x->x_msginbuf, read);
        critical_exit(x->lock);
        omax_util_outletOSC(x->outlet, read, buf);
        OSC_MEM_INVALIDATE(buf);
        //oudp_sendData(x, t, x->slipibuf);
    }else{
        critical_exit(x->lock);
        //object_error((t_object *)x, "bad packet: not a multiple of 4 length");
    }
    
    /*
    if (read > 0)
    {
        for (i = 0; i < read; ++i)
        {
            oudp_decode(x, (unsigned char)x->x_msginbuf[i]);
        }
        oudp_decode(x, END);
        
        
        x->x_total_received += read;
        SETFLOAT(&output_atom, read);
        outlet_anything(x->x_addrout, gensym("received"), 1, &output_atom);
    }*/
}

static int udpreceive_new_socket(t_oudpreceive *x, char *address, int port)
{
    // return nonzero if successful in creating and binding a socket
    int                 sockfd;
    int                 intarg;
    int                 multicast_joined = 0;
    struct sockaddr_in  server;
    struct hostent      *hp;
#if defined __APPLE__ || defined _WIN32
    struct ip_mreq      mreq;
#else
    struct ip_mreqn     mreq;
#endif
    
    if (x->x_connectsocket >= 0)
    {
        // close the existing socket first
        sys_rmpollfn(x->x_connectsocket);
        sys_closesocket(x->x_connectsocket);
    }
    /* create a socket */
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
#ifdef DEBUG
    post("udpreceive_new: socket %d port %d", sockfd, portno);
#endif
    if (sockfd < 0)
    {
        udpreceive_sock_err(x, "udpreceive: socket");
        return 0;
    }
    server.sin_family = AF_INET;
    if (address[0] == 0) server.sin_addr.s_addr = INADDR_ANY;
    else
    {
        hp = gethostbyname(address);
        if (hp == 0)
        {
            pd_error(x, "udpreceive: bad host?\n");
            return 0;
        }
        memcpy((char *)&server.sin_addr, (char *)hp->h_addr, hp->h_length);
    }
    /* enable delivery of all multicast or broadcast (but not unicast)
     * UDP datagrams to all sockets bound to the same port */
    intarg = 1;
    if (setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR,
                   (char *)&intarg, sizeof(intarg)) < 0)
        udpreceive_sock_err(x, "udpreceive: setsockopt (SO_REUSEADDR) failed");
    
    /* assign server port number */
    server.sin_port = htons((u_short)port);
    
    /* if a multicast address was specified, join the multicast group */
    /* hop count defaults to 1 so we won't leave the subnet*/
    if (0xE0000000 == (ntohl(server.sin_addr.s_addr) & 0xF0000000))
    {
        server.sin_addr.s_addr = INADDR_ANY;
        /* first bind the socket to INADDR_ANY */
        if (bind(sockfd, (struct sockaddr *)&server, sizeof(server)) < 0)
        {
            udpreceive_sock_err(x, "udpreceive: bind");
            sys_closesocket(sockfd);
            return 0;
        }
        /* second join the multicast group */
        memcpy((char *)&server.sin_addr, (char *)hp->h_addr, hp->h_length);
        
#if defined __APPLE__ || defined _WIN32
        mreq.imr_multiaddr.s_addr = server.sin_addr.s_addr;
        mreq.imr_interface.s_addr = INADDR_ANY;/* can put a specific local IP address here if host is multihomed */
#else
        mreq.imr_multiaddr.s_addr = server.sin_addr.s_addr;
        mreq.imr_address.s_addr = INADDR_ANY;
        mreq.imr_ifindex = 0;
#endif //__APPLE__ || _WIN32
        if (setsockopt(sockfd, IPPROTO_IP, IP_ADD_MEMBERSHIP,
                       (char *)&mreq, sizeof(mreq)) < 0)
            udpreceive_sock_err(x, "udpreceive: setsockopt IP_ADD_MEMBERSHIP");
        else
        {
            multicast_joined = 1;
            post ("udpreceive: added to multicast group");
        }
    }
    else
    {
        /* name the socket */
        if (bind(sockfd, (struct sockaddr *)&server, sizeof(server)) < 0)
        {
            udpreceive_sock_err(x, "udpreceive: bind");
            sys_closesocket(sockfd);
            return 0;
        }
    }
    x->x_multicast_joined = multicast_joined;
    x->x_connectsocket = sockfd;
    x->x_total_received = 0L;
    sys_addpollfn(x->x_connectsocket, (t_fdpollfn)udpreceive_read, x);
    return 1;
}

static void udpreceive_status(t_oudpreceive *x)
{
    t_atom output_atom;
    
    SETFLOAT(&output_atom, x->x_multicast_joined);
    outlet_anything( x->x_addrout, gensym("multicast"), 1, &output_atom);
    SETFLOAT(&output_atom, x->x_total_received);
    outlet_anything( x->x_addrout, gensym("total"), 1, &output_atom);
}

static void udpreceive_port(t_oudpreceive *x, t_float portno)
{
    int result = udpreceive_new_socket(x, x->x_addr_name, (int)portno);
}


//----------- o.udp.receive setup
    
    
void oudp_doc(t_oudpreceive *x)
{
	omax_doc_outletDoc(x->outlet);
}

static void oudpreceive_free(t_oudpreceive *x)
{
    if (x->x_connectsocket >= 0)
    {
        sys_rmpollfn(x->x_connectsocket);
        sys_closesocket(x->x_connectsocket);
    }
    
    critical_free(x->lock);
}

#ifdef OMAX_PD_VERSION

void *oudpreceive_new(t_symbol *s, int argc, t_atom *argv)
{
	t_oudpreceive *x;
    
	x = (t_oudpreceive *)object_alloc(oudpreceive_class);
	if(!x)
		return NULL;
    
    int i, result = 0, portno = 0;
    
    x->x_addr_name[0] = '\0';
    for (i = 0; i < 5; ++i)
    {
        x->x_addrbytes[i].a_type = A_FLOAT;
        x->x_addrbytes[i].a_w.w_float = 0;
    }
    
    
#ifdef DEBUG
    post("udpreceive_new:argc is %d s is %s", argc, s->s_name);
#endif
    for (i = 0; i < argc ;++i)
    {
        if (argv[i].a_type == A_FLOAT)
        { // float is taken to be a port number
#ifdef DEBUG
            post ("argv[%d] is a float: %f", i, argv[i].a_w.w_float);
#endif
            portno = (int)argv[i].a_w.w_float;
        }
        else if (argv[i].a_type == A_SYMBOL)
        { // symbol is taken to be an ip address (for multicast)
#ifdef DEBUG
            post ("argv[%d] is a symbol: %s", i, argv[i].a_w.w_symbol->s_name);
#endif
            atom_string(&argv[i], x->x_addr_name, 256);
        }
    }
#ifdef DEBUG
    post("Setting port %d, address %s", portno, x->addr);
#endif
    
    
    x->outlet = outlet_new(&x->ob, NULL); // << output received bundle
    x->x_addrout = outlet_new(&x->ob, &s_anything);
    
    x->x_connectsocket = -1; // no socket
    result = udpreceive_new_socket(x, x->x_addr_name, portno);
    
    // ------- from slip.decode ---------
    
	x->icount = 0;
	x->istate = 0;
    
	critical_new(&(x->lock));
    
	return x;
}

int setup_o0x2eudp0x2ereceive(void)
{
	t_class *c = class_new( gensym(OMAX_DOC_NAME), (t_newmethod)oudpreceive_new,(t_method)oudpreceive_free, (short)sizeof(t_oudpreceive),0L, A_GIMME, 0);
    
    class_addmethod(c, (t_method)udpreceive_status, gensym("status"), 0);
    class_addmethod(c, (t_method)udpreceive_port, gensym("port"), A_DEFFLOAT, 0);
    
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
	class_addmethod(c, (t_method)oudp_doc, gensym("doc"), 0);
    
//    class_addfloat(c, slipbyte);
//	class_addmethod(c, (t_method)sliplist, gensym("list"), A_GIMME, 0);
    
	class_addmethod(c, (t_method)oudp_printcontents, gensym("printcontents"), 0);
    
	// remove this if statement when we stop supporting Max 5

//	finder_addclass("Devices","slipOSC");
    
//	class_register(CLASS_BOX, c);
	oudpreceive_class = c;
    
	ODOT_PRINT_VERSION;
	return 0;
}
    
#else

void oudp_assist(t_oudpreceive *x, void *b, long m, long a, char *dst) {
	omax_doc_assist(m, a, dst);
}


int main (void)
{  
	t_class *c = class_new(OMAX_DOC_NAME, (method) oudp_new,(method) myobject_free,(short)sizeof(t_oudpreceive),0L,A_GIMME, 0);
  
	class_addmethod(c, (method)oudp_assist, "assist", A_CANT,0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)oudp_doc, "doc", 0);

	class_addmethod(c, (method)slipbyte, "int", A_LONG, 0);
	class_addmethod(c, (method)sliplist, "list", A_GIMME, 0);
  
	class_addmethod(c, (method)oudp_printcontents, "printcontents", 0);

	finder_addclass("Devices","slipOSC");

	class_register(CLASS_BOX, c);
	oudp_class = c;

	ODOT_PRINT_VERSION;
	return 0;
}

void *oudp_new(long arg) {
	t_oudpreceive *x;
  
	x = (t_oudpreceive *) object_alloc(oudp_class);
	if(!x){
		return NULL;
	}
  
	x->outlet = outlet_new(x, NULL);

	x->icount = 0;
	x->istate = 0;
  
	critical_new(&(x->lock));
  
	return x;
}

#endif

#define MAX_ARGS_TO_oudp_MSG 1024
#define PRINTABLE(c) ((char) (c>= 0x20 && c <= 0x7e ? c : 'û'))
#define isprint(c) ((c) >= 0x20 && (c) <= 0x7e)

void oudp_printcontents (t_oudpreceive *x) {
	char *m, buf[100], *p;
	int n, i;
  
	m = x->slipibuf;
	n = x->icount;
  
	object_post((t_object *)x, "oudp_printcontents: buffer %p, size %ld", m, (long) n);
  
	if (n % 4 != 0) {
		object_post((t_object *)x, "Hey, the size isn't a multiple of 4!");
	} else {
		for (i = 0; i < n; i += 4) {
			p = buf;
      
			p += sprintf(p, "  %x", m[i]);
			if (isprint(m[i])) {
				p += sprintf(p, "  (%c)", m[i]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			p += sprintf(p, "  %x", m[i+1]);
			if (isprint(m[i+1])) {
				p += sprintf(p, "  (%c)", m[i+1]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			p += sprintf(p, "  %x", m[i+2]);
			if (isprint(m[i+2])) {
				p += sprintf(p, "  (%c)", m[i+2]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			p += sprintf(p, "  %x", m[i+3]);
			if (isprint(m[i+3])) {
				p += sprintf(p, "  (%c)", m[i+3]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			*p = '\0';
			object_post((t_object *)x, buf);	    		 
		}
	}
}


