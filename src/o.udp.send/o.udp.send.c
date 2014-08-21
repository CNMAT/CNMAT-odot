/* udpsend.c 20060424. Martin Peach did it based on x_net.c. x_net.c header follows: */
/* Copyright (c) 1997-1999 Miller Puckette.
 * For information on usage and redistribution, and for a DISCLAIMER OF ALL
 * WARRANTIES, see the file, "LICENSE.txt," in this distribution.  */

/*
 
 Written by Matt Wright, Adrian Freed, Andy Schmeder, John MacCallum, Rama Gottfried
 
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

#define OMAX_DOC_NAME "o.udp.send"
#define OMAX_DOC_SHORT_DESC "o.udp.send encodes an OSC packet and outputs a stream of bytes over a UDP connect"
#define OMAX_DOC_LONG_DESC "SLIP encodes an OSC packet and outputs a stream of bytes over a UDP connect."
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Error Messages"}
#define OMAX_DOC_SEEALSO  (char *[]){"o.udp.send"}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
    #include "m_pd.h"
    #include <stdio.h>
    #include <string.h>
#else
    #include "ext.h"
    #include "ext_obex.h"
    #include "ext_obex_util.h"
    #include "ext_critical.h"
    #include "omax_dict.h"
#endif

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#include <iphlpapi.h> // for interface addresses
#else
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>
#include <sys/ioctl.h> // for SIOCGIFCONF
#include <net/if.h> // for SIOCGIFCONF
#include <arpa/inet.h>
#include <errno.h>
#include <unistd.h>
#endif // _WIN32
#ifdef __APPLE__
#include <ifaddrs.h> // for getifaddrs
#endif // __APPLE__



#include "osc.h"
#include "osc_mem.h"
#include "osc_serial.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "o.h"

t_class *oudpsend_class;

t_symbol *ps_gimme, *ps_OSCTimeTag, *ps_FullPacket, *ps_OSCBlob;

#define MAXSLIPBUF 2048

typedef struct oudpsend {
	t_object ob;
	void *outlet;
    
	char slipibuf[MAXSLIPBUF]; // buffer used to write the new packet
	int icount;
	short istate; // initialize to 0
	t_critical lock;
    
    int             x_fd; /* the socket */
    unsigned int    x_multicast_loop_state;
    unsigned int    x_multicast_ttl; /* time to live for multicast */
    
} t_oudpsend;

void oudpsend_assist(t_oudpsend *x, void *b, long m, long a, char *s);

void oudpsend_send(t_oudpsend *x);

void oudpsend_bang(t_oudpsend *x);
void oudpsend_readtypestrings(t_oudpsend *x, int yesno);
void oudpsend_writetypestrings(t_oudpsend *x, int yesno);
void oudpsend_printcontents(t_oudpsend *x);

void oudpsend_accumulateMessage(t_oudpsend *x, char *messageName, short argc, t_atom *argv);
int oudpsend_stringSubstitution(char *target, char *format, short *argcp, t_atom **argvp);
void oudpsend_sendBuffer(t_oudpsend *x);
void oudpsend_sendData(t_oudpsend *x, short size, char *data);

// SLIP codes
#define END             0300    // indicates end of packet
#define ESC             0333    // indicates byte stuffing
#define ESC_END         0334    // ESC ESC_END means END data byte
#define ESC_ESC         0335    // ESC ESC_ESC means ESC data byte


// ---------- udpsend

static void udpsend_sock_err(t_oudpsend *x, char *err_string)
{
    /* prints the last error from errno or WSAGetLastError() */
#ifdef _WIN32
    void            *lpMsgBuf;
    unsigned long   errornumber = WSAGetLastError();
    int             len = 0, i;
    char            *cp;
    
    if (len = FormatMessageA((FORMAT_MESSAGE_ALLOCATE_BUFFER|FORMAT_MESSAGE_FROM_SYSTEM|FORMAT_MESSAGE_IGNORE_INSERTS)
                             , NULL, errornumber, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPSTR)&lpMsgBuf, 0, NULL))
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
        pd_error(x, "%s: %s (%d)", err_string, lpMsgBuf, errornumber);
        LocalFree(lpMsgBuf);
    }
#else
    pd_error(x, "%s: %s (%d)", err_string, strerror(errno), errno);
#endif
}

static void udpsend_disconnect(t_oudpsend *x)
{
    if (x->x_fd >= 0)
    {
#ifdef _WIN32
        closesocket(x->x_fd);
#else
        close(x->x_fd);
#endif
        x->x_fd = -1;
        outlet_float(x->ob.ob_outlet, 0);
    }
}

static void udpsend_connect(t_oudpsend *x, t_symbol *hostname, t_floatarg fportno)
{
    struct sockaddr_in  server;
    struct hostent      *hp;
    int                 sockfd;
    int                 portno = fportno;
    int                 broadcast = 1;/* nonzero is true */
    unsigned char       multicast_loop_state;
    unsigned char       multicast_ttl;
    unsigned int        size;
    
    if (x->x_fd >= 0)
    {
        pd_error(x, "udpsend: already connected");
        return;
    }
    
    /* create a socket */
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
#ifdef DEBUG
    fprintf(stderr, "udpsend_connect: send socket %d\n", sockfd);
#endif
    if (sockfd < 0)
    {
        udpsend_sock_err(x, "udpsend socket");
        return;
    }
    /* Based on zmoelnig's patch 2221504:
     Enable sending of broadcast messages (if hostname is a broadcast address)*/
#ifdef SO_BROADCAST
    if( 0 != setsockopt(sockfd, SOL_SOCKET, SO_BROADCAST, (const void *)&broadcast, sizeof(broadcast)))
    {
        udpsend_sock_err(x, "couldn't switch to broadcast mode");
    }
#endif /* SO_BROADCAST */
    
    /* connect socket using hostname provided in command line */
    server.sin_family = AF_INET;
    hp = gethostbyname(hostname->s_name);
    if (hp == 0)
    {
        post("udpsend: bad host?\n");
        return;
    }
    memcpy((char *)&server.sin_addr, (char *)hp->h_addr, hp->h_length);
    
    if (0xE0000000 == (ntohl(server.sin_addr.s_addr) & 0xF0000000))
        post ("udpsend: connecting to a multicast address");
    size = sizeof(multicast_loop_state);
    getsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_LOOP, &multicast_loop_state, &size);
    size = sizeof(multicast_ttl);
    getsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_TTL, &multicast_ttl, &size);
    x->x_multicast_loop_state = multicast_loop_state;
    x->x_multicast_ttl = multicast_ttl;
    /* assign client port number */
    server.sin_port = htons((u_short)portno);
    
    post("udpsend: connecting to port %d", portno);
    /* try to connect. */
    if (connect(sockfd, (struct sockaddr *) &server, sizeof (server)) < 0)
    {
        udpsend_sock_err(x, "udpsend connect");
#ifdef _WIN32
        closesocket(sockfd);
#else
        close(sockfd);
#endif
        return;
    }
    x->x_fd = sockfd;
    outlet_float(x->ob.ob_outlet, 1);
}

static void udpsend_set_multicast_loopback(t_oudpsend *x, t_floatarg loop_state)
{
    int             sockfd = x->x_fd;
    unsigned char   multicast_loop_state = loop_state;
    unsigned int    size;
    
    if (x->x_fd < 0)
    {
        pd_error(x, "udpsend_set_multicast_loopback: not connected");
        return;
    }
    if (setsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_LOOP,
                   &multicast_loop_state, sizeof(multicast_loop_state)) < 0)
        udpsend_sock_err(x, "udpsend setsockopt IP_MULTICAST_LOOP");
    getsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_LOOP, &multicast_loop_state, &size);
    x->x_multicast_loop_state = multicast_loop_state;
}

static void udpsend_set_multicast_ttl(t_oudpsend *x, t_floatarg ttl_hops)
{
    int             sockfd = x->x_fd;
    unsigned char   multicast_ttl = ttl_hops;
    unsigned int    size;
    
    if (x->x_fd < 0)
    {
        pd_error(x, "udpsend_set_multicast_ttl: not connected");
        return;
    }
    if (setsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_TTL,
                   &multicast_ttl, sizeof(multicast_ttl)) < 0)
        udpsend_sock_err(x, "udpsend setsockopt IP_MULTICAST_TTL");
    getsockopt(sockfd, IPPROTO_IP, IP_MULTICAST_TTL, &multicast_ttl, &size);
    x->x_multicast_ttl = multicast_ttl;
}

static void udpsend_set_multicast_interface (t_oudpsend *x, t_symbol *s, int argc, t_atom *argv)
{
#ifdef _WIN32
    int                 i, n_ifaces = 32;
    PMIB_IPADDRTABLE    pIPAddrTable;
    DWORD               dwSize;
    IN_ADDR             IPAddr;
    int                 if_index = -1;
    int                 found = 0;
    t_symbol            *interfacename = gensym("none");
    struct hostent      *hp = 0;
    struct sockaddr_in  server;
    
    if (x->x_fd < 0)
    {
        pd_error(x, "udpsend_set_multicast_interface: not connected");
        return;
    }
    switch (argv[0].a_type)
    {
        case A_FLOAT:
            if_index = (int)atom_getfloat(&argv[0]);
            break;
        case A_SYMBOL:
            interfacename = atom_getsymbol(&argv[0]);
            break;
        default:
            pd_error(x, "udpsend_set_multicast_interface: argument not float or symbol");
            return;
    }
    if (if_index == -1)
    {
        hp = gethostbyname(interfacename->s_name); // if interface is a dotted or named IP address (192.168.0.88)
    }
    if (hp != 0) memcpy((char *)&server.sin_addr, (char *)hp->h_addr, hp->h_length);
    else // maybe interface is its index (1) (names aren't available in _WIN32)
    {
        /* get the list of interfaces, IPv4 only */
        dwSize = sizeof(MIB_IPADDRTABLE)*n_ifaces;
        if ((pIPAddrTable = (MIB_IPADDRTABLE *) getbytes(dwSize)) == NULL)
        {
            post("udpsend: unable to allocate %lu bytes for GetIpAddrTable", dwSize);
            return;
        }
        if (GetIpAddrTable(pIPAddrTable, &dwSize, 0))
        {
            udpsend_sock_err(x, "udpsend_set_multicast_interface: GetIpAddrTable");
            return;
        }
        
        n_ifaces = pIPAddrTable->dwNumEntries;
        post("udpsend: %d interface%s available:", n_ifaces, (n_ifaces == 1)?"":"s");
        for (i = 0; i < n_ifaces; i++)
        {
            IPAddr.S_un.S_addr = (u_long) pIPAddrTable->table[i].dwAddr;
            post("[%d]: %s", pIPAddrTable->table[i].dwIndex, inet_ntoa(IPAddr));
            if (pIPAddrTable->table[i].dwIndex == if_index)
            {
                server.sin_addr = IPAddr;
                found = 1;
            }
        }
        
        if (pIPAddrTable)
        {
            freebytes(pIPAddrTable, dwSize);
            pIPAddrTable = NULL;
        }
        if (! found)
        {
            post("udpsend_set_multicast_interface: bad host name? (%s)\n", interfacename->s_name);
            return;
        }
    }
    if (setsockopt(x->x_fd, IPPROTO_IP, IP_MULTICAST_IF, (const char *)&server.sin_addr, sizeof(struct in_addr)) == SOCKET_ERROR)
        udpsend_sock_err(x, "udpsend setsockopt IP_MULTICAST_IF");
    else post("udpsend multicast interface is %s", inet_ntoa(server.sin_addr));
    
#elif defined __APPLE__
    int                 if_index = -1;
    int                 found = 0;
    t_symbol            *interfacename = gensym("none");
    struct ifaddrs      *ifap;
    int                 i = 0;
    int                 n_ifaces = 0;
    struct hostent      *hp = 0;
    struct sockaddr_in  server;
    struct sockaddr     *sa;
    char                ifname[IFNAMSIZ]; /* longest possible interface name */
    
    if (x->x_fd < 0)
    {
        pd_error(x, "udpsend_set_multicast_interface: not connected");
        return;
    }
    switch (argv[0].a_type)
    {
        case A_FLOAT:
            if_index = (int)atom_getfloat(&argv[0]);
            break;
        case A_SYMBOL:
            interfacename = atom_getsymbol(&argv[0]);
            break;
        default:
            pd_error(x, "udpsend_set_multicast_interface: argument not float or symbol");
            return;
    }
    if (if_index == -1)
    {
        hp = gethostbyname(interfacename->s_name); // if interface is a dotted or named IP address (192.168.0.88)
    }
    if (hp != 0) memcpy((char *)&server.sin_addr, (char *)hp->h_addr, hp->h_length);
    else // maybe interface is its name (eth0) or index (1)
    { // scan all the interfaces to get the IP address of interface
        if (getifaddrs(&ifap)) udpsend_sock_err(x, "udpsend getifaddrs");
        i = found = n_ifaces = 0;
        while (NULL != ifap)
        {
            sa = ifap->ifa_addr;
            if (AF_INET == sa->sa_family)
            {
                ++n_ifaces;
                strncpy (ifname, ifap->ifa_name, IFNAMSIZ);
                post("[%d]: %s: %s", i, ifname, inet_ntoa(((struct sockaddr_in *)sa)->sin_addr));
                if((i == if_index) || ((if_index == -1) && (!strncmp(interfacename->s_name, ifname, IFNAMSIZ))))
                { // either the index or the name match
                    server.sin_addr = ((struct sockaddr_in *)sa)->sin_addr;
                    found = 1;
                }
            }
            i++;
            ifap = ifap->ifa_next; // next record or NULL
        }
        freeifaddrs(ifap);
        post ("udpsend: %d interfaces", n_ifaces);
        if (!found) return;
    }
    if (setsockopt(x->x_fd, IPPROTO_IP, IP_MULTICAST_IF, (const char *)&server.sin_addr, sizeof(struct in_addr)))
        udpsend_sock_err(x, "udpsend setsockopt IP_MULTICAST_IF");
    else post("udpsend multicast interface is %s", inet_ntoa(server.sin_addr));
    return;
#else // __linux__
    struct sockaddr_in  server;
    struct sockaddr     *sa;
    struct hostent      *hp = 0;
    struct ifconf       ifc;
    int                 n_ifaces = 32, i, origbuflen, found = 0;
    char                ifname[IFNAMSIZ]; /* longest possible interface name */
    t_symbol            *interface = gensym("none");
    int                 if_index = -1;
    
    if (x->x_fd < 0)
    {
        pd_error(x, "udpsend_set_multicast_interface: not connected");
        return;
    }
    switch (argv[0].a_type)
    {
        case A_FLOAT:
            if_index = (int)atom_getfloat(&argv[0]);
            break;
        case A_SYMBOL:
            interface = atom_getsymbol(&argv[0]);
            break;
        default:
            pd_error(x, "udpsend_set_multicast_interface: argument not float or symbol");
            return;
    }
    if (if_index == -1)
    {
        hp = gethostbyname(interface->s_name); // if interface is a dotted or named IP address (192.168.0.88)
    }
    if (hp != 0) memcpy((char *)&server.sin_addr, (char *)hp->h_addr, hp->h_length);
    else // maybe interface is its name (eth0) or index (1)
    { // scan all the interfaces to get the IP address of interface
        // find the number of interfaces
        origbuflen = n_ifaces * sizeof (struct ifreq);// save maximum length for free()
        ifc.ifc_len = origbuflen; // SIOCGIFCONF changes it to valid length
        ifc.ifc_buf = (char*)getzbytes(origbuflen);
        if (ifc.ifc_buf != NULL)
        { //
            if (ioctl(x->x_fd, SIOCGIFCONF, &ifc) < 0) // get list of interfaces
                udpsend_sock_err(x, "udpsend_set_multicast_interface: getting list of interfaces");
            else
            {
                n_ifaces = ifc.ifc_len/sizeof(struct ifreq);
                post("udpsend: %d interface%s available:", n_ifaces, (n_ifaces == 1)?"":"s");
                for(i = 0; i < n_ifaces; i++)
                {
                    sa = (struct sockaddr *)&(ifc.ifc_req[i].ifr_addr);
                    strncpy (ifname, ifc.ifc_req[i].ifr_name, IFNAMSIZ);
                    post("[%d]: %s: %s", i, ifname, inet_ntoa(((struct sockaddr_in *)sa)->sin_addr));
                    if
                        (
                         (i == if_index) ||
                         ((if_index == -1) && (!strncmp(interface->s_name, ifname, IFNAMSIZ)))
                         )
                    {
                        server.sin_addr = ((struct sockaddr_in *)sa)->sin_addr;
                        found = 1;
                    }
                }
            }
        }
        freebytes(ifc.ifc_buf, origbuflen);
        
        if (! found)
        {
            post("udpsend_set_multicast_interface: bad host name? (%s)\n", interface->s_name);
            return;
        }
    }
    if (setsockopt(x->x_fd, IPPROTO_IP, IP_MULTICAST_IF, &server.sin_addr, sizeof(struct in_addr)) < 0)
        udpsend_sock_err(x, "udpsend_set_multicast_interface: setsockopt");
    else post("udpsend multicast interface is %s", inet_ntoa(server.sin_addr));
#endif // _WIN32
}

static void udpsend_send(t_oudpsend *x, t_symbol *s, int argc, t_atom *argv)
{
#define BYTE_BUF_LEN 65536 // arbitrary maximum similar to max IP packet size
    static char    byte_buf[BYTE_BUF_LEN];
    int            d;
    int            i, j;
    unsigned char  c;
    float          f, e;
    char           *bp;
    int            length, sent;
    int            result;
    static double  lastwarntime;
    static double  pleasewarn;
    double         timebefore;
    double         timeafter;
    int            late;
    char           fpath[FILENAME_MAX];
    FILE           *fptr;
    
#ifdef DEBUG
    post("s: %s", s->s_name);
    post("argc: %d", argc);
#endif
    for (i = j = 0; i < argc; ++i)
    {
        if (argv[i].a_type == A_FLOAT)
        {
            f = argv[i].a_w.w_float;
            d = (int)f;
            e = f - d;
            if (e != 0)
            {
                pd_error(x, "udpsend_send: item %d (%f) is not an integer", i, f);
                return;
            }
            c = (unsigned char)d;
            if (c != d)
            {
                pd_error(x, "udpsend_send: item %d (%f) is not between 0 and 255", i, f);
                return;
            }
#ifdef DEBUG
            post("udpsend_send: argv[%d]: %d", i, c);
#endif
            byte_buf[j++] = c;
        }
        else if (argv[i].a_type == A_SYMBOL)
        {
            
            atom_string(&argv[i], fpath, FILENAME_MAX);
#ifdef DEBUG
            post ("udpsend fname: %s", fpath);
#endif
            fptr = sys_fopen(fpath, "rb");
            if (fptr == NULL)
            {
                post("udpsend: unable to open \"%s\"", fpath);
                return;
            }
            rewind(fptr);
#ifdef DEBUG
            post("udpsend: d is %d", d);
#endif
            while ((d = fgetc(fptr)) != EOF)
            {
                byte_buf[j++] = (char)(d & 0x0FF);
#ifdef DEBUG
                post("udpsend: byte_buf[%d] = %d", j-1, byte_buf[j-1]);
#endif
                if (j >= BYTE_BUF_LEN)
                {
                    post ("udpsend: file too long, truncating at %lu", BYTE_BUF_LEN);
                    break;
                }
            }
            fclose(fptr);
            fptr = NULL;
            post("udpsend: read \"%s\" length %d byte%s", fpath, j, ((d==1)?"":"s"));
        }
        else
        {
            pd_error(x, "udpsend_send: item %d is not a float or a file name", i);
            return;
        }
    }
    
    length = j;
    if ((x->x_fd >= 0) && (length > 0))
    {
        for (bp = byte_buf, sent = 0; sent < length;)
        {
            timebefore = sys_getrealtime();
            result = send(x->x_fd, byte_buf, length-sent, 0);
            timeafter = sys_getrealtime();
            late = (timeafter - timebefore > 0.005);
            if (late || pleasewarn)
            {
                if (timeafter > lastwarntime + 2)
                {
                    post("udpsend blocked %d msec",
                         (int)(1000 * ((timeafter - timebefore) + pleasewarn)));
                    pleasewarn = 0;
                    lastwarntime = timeafter;
                }
                else if (late) pleasewarn += timeafter - timebefore;
            }
            if (result <= 0)
            {
                udpsend_sock_err(x, "udpsend send");
                udpsend_disconnect(x);
                break;
            }
            else
            {
                sent += result;
                bp += result;
            }
        }
    }
    else pd_error(x, "udpsend: not connected");
}

// ---------- slip.encode

void oudpsend_FullPacket(t_oudpsend *x, t_symbol *msg, short argc, t_atom *argv) {
    OMAX_UTIL_GET_LEN_AND_PTR
    char *byte_buf = ptr;
    int sent;
    char *bp = NULL;
    int            result;
    static double  lastwarntime;
    static double  pleasewarn;
    double         timebefore;
    double         timeafter;
    int            late;

    if ((x->x_fd >= 0) && (len > 0))
    {
        for (bp = byte_buf, sent = 0; sent < len;)
        {
            timebefore = sys_getrealtime();
            result = send(x->x_fd, byte_buf, len-sent, 0);
            timeafter = sys_getrealtime();
            late = (timeafter - timebefore > 0.005);
            if (late || pleasewarn)
            {
                if (timeafter > lastwarntime + 2)
                {
                    post("udpsend blocked %d msec",
                         (int)(1000 * ((timeafter - timebefore) + pleasewarn)));
                    pleasewarn = 0;
                    lastwarntime = timeafter;
                }
                else if (late) pleasewarn += timeafter - timebefore;
            }
            if (result <= 0)
            {
                udpsend_sock_err(x, "udpsend send");
                udpsend_disconnect(x);
                break;
            }
            else
            {
                sent += result;
                bp += result;
            }
        }
    }
    else pd_error(x, "udpsend: not connected");
    
}

void oudpsend_doc(t_oudpsend *x)
{
    omax_doc_outletDoc(x->outlet);
}


void oudpsend_free(t_oudpsend *x)
{
    udpsend_disconnect(x);
    critical_free(x->lock);
}
    
#ifdef OMAX_PD_VERSION

void *oudpsend_new(t_symbol *s, int argc, t_atom *argv) {
    t_oudpsend *x;
    
    x = (t_oudpsend *)object_alloc(oudpsend_class);
    if(!x){
        return NULL;
    }
    
    x->outlet = outlet_new(&x->ob, NULL);
    
    x->x_fd = -1;
    
    x->icount = 0;
    x->istate = 0;
    
    critical_new(&(x->lock));
    
    if(argc == 2 && atom_gettype(argv) == A_SYMBOL && atom_gettype(argv+1) == A_FLOAT)
    {
        t_symbol *ss = atom_getsym(argv);
        if (ss == gensym("localhost")) {
            ss = gensym("127.0.0.1");
        }
        udpsend_connect(x, ss, atom_getfloat(argv+1));
    }
    
    return x;
}

int setup_o0x2eudp0x2esend(void)
{
    t_class *c = class_new( gensym(OMAX_DOC_NAME), (t_newmethod)oudpsend_new,(t_method)oudpsend_free, (short)sizeof(t_oudpsend),0L, A_GIMME, 0);
    
    class_addmethod(c, (t_method)udpsend_connect, gensym("connect"), A_SYMBOL, A_FLOAT, 0);
    class_addmethod(c, (t_method)udpsend_set_multicast_ttl, gensym("multicast_ttl"), A_DEFFLOAT, 0);
    class_addmethod(c, (t_method)udpsend_set_multicast_loopback, gensym("multicast_loopback"), A_DEFFLOAT, 0);
    class_addmethod(c, (t_method)udpsend_set_multicast_interface, gensym("multicast_interface"), A_GIMME, 0);
    class_addmethod(c, (t_method)udpsend_disconnect, gensym("disconnect"), 0);
    class_addmethod(c, (t_method)udpsend_send, gensym("send"), A_GIMME, 0);
    class_addlist(c, (t_method)udpsend_send);

    class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    class_addmethod(c, (t_method)oudpsend_doc, gensym("doc"), 0);
    
    class_addmethod(c, (t_method)oudpsend_printcontents, gensym("printcontents"), 0);
    class_addmethod(c, (t_method)oudpsend_FullPacket, gensym("FullPacket"), A_GIMME, 0);
    
    
    //	finder_addclass("Devices","slipOSC");
    
    //	class_register(CLASS_BOX, c);
    oudpsend_class = c;
    
    ODOT_PRINT_VERSION;
    return 0;
}
    
#else

OMAX_DICT_DICTIONARY(t_oudpsend, x, oudpsend_FullPacket);


void oudpsend_assist(t_oudpsend *x, void *b, long m, long a, char *dst) {
    omax_doc_assist(m, a, dst);
}


int main (void)
{
    t_class *c = class_new(OMAX_DOC_NAME, (method) oudpsend_new,(method) myobject_free,(short)sizeof(t_oudpsend),0L,A_DEFLONG,0);
    
    class_addmethod(c, (method)oudpsend_assist, "assist", A_CANT,0);
    class_addmethod(c, (method)odot_version, "version", 0);
    class_addmethod(c, (method)oudpsend_doc, "doc", 0);
    
    class_addmethod(c, (method)oudpsend_printcontents, "printcontents", 0);
    class_addmethod(c, (method)oudpsend_FullPacket, "FullPacket", A_LONG, A_LONG, 0);
    
    // remove this if statement when we stop supporting Max 5
    if(omax_dict_resolveDictStubs()){
        class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
    }
    
    finder_addclass("Devices","slipOSC");
    
    class_register(CLASS_BOX, c);
    oudpsend_class = c;
    
    ODOT_PRINT_VERSION;
    return 0;
}

void *oudpsend_new(long arg) {
    t_oudpsend *x;
    
    x = (t_oudpsend *) object_alloc(oudpsend_class);
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

#define MAX_ARGS_TO_oudpsend_MSG 1024

#define PRINTABLE(c) ((char) (c>= 0x20 && c <= 0x7e ? c : 'û'))
#define isprint(c) ((c) >= 0x20 && (c) <= 0x7e)

void oudpsend_printcontents (t_oudpsend *x) {
    char *m, buf[100], *p;
    int n, i;
    
    m = x->slipibuf;
    n = x->icount;
    
    object_post((t_object *)x, "oudpsend_printcontents: buffer %p, size %ld", m, (long) n);
    
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
    
    
