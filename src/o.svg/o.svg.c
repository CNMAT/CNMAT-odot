/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2011, The Regents of
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
NAME: o.svg
DESCRIPTION: SVG file to OSC bundle conversion
AUTHORS: Rama Gottfried
COPYRIGHT_YEARS: 2013
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
VERSINO 0.1: added autowatch
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 
 to do: change bundling process to be odot directly instead of using atoms to collection
 
 */


#define OMAX_DOC_NAME "o.svg"
#define OMAX_DOC_SHORT_DESC "Collect OSC messages to be bundled together"
#define OMAX_DOC_LONG_DESC "o.svg collects OSC and OSC-style Max messages to be bundled together and output on bang.  When the bundle is output, the internal buffer is cleared."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC messages to collect."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing all messages collected."}
#define OMAX_DOC_SEEALSO (char *[]){""}

#include <stdlib.h>
#include "odot_version.h"

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "string.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "omax_dict.h"
#endif

#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "omax_util.h"
#include "omax_doc.h"

#include "o.h"

//#include <libxml/parser.h>
//#include <libxml/tree.h>
//#include <libxml/xmlmemory.h>
#include <libxml/xmlreader.h>
#include "string.h"

#define OSVG_MAX_STRINGSIZE 1024

typedef struct _oxml
{
    const xmlChar    *type;
    long        count;
    struct _oxml *next;
} t_oxml_node;


typedef struct _osvg
{
	t_object        ob;
	void            *outlet;
	t_critical      lock;
    xmlTextReader   *reader;
    short           f_open;
    long            pdepth;
    
    t_oxml_node     *head;
    t_symbol        *sepattr;
    t_symbol        *f_name;
    
#ifndef OMAX_PD_VERSION
    long autowatch;
    void *filewatcher;
#endif
} t_osvg;

void *osvg_class;
t_symbol *ps_nothing;


// to do: add segment and total length approximation, and bounding box
// http://pomax.github.io/bezierinfo/



void osvg_parsePath(t_osvg *x, char *pathstr, t_osc_bndl_u *bndl)
{
    // NOTE: current S and C parsing is not SVG complient, it should allow for an unknown number of segments
    // there should always be a prefix!
    
    //post("%s", prefix);
    t_osc_msg_u *msg = NULL;
    if(strlen(pathstr) < 1)
        return;
    
    // start of path writing
    
    double totalpathlength = 0;
    long q;
    long pathstrLen = strlen(pathstr);
    char chunk[pathstrLen];
    memset(chunk, '\0', sizeof(char) * pathstrLen);
    long ch_idx = 0;
    //    Boolean pathstarted = false; //no longer checking for M, now assuming its always first
    
    double pt[2], prev_pt[2], prev_ctl_pt[2], origin_pt[2];
    long pcount = 0;
    char type, prev_type;
    char address[OSVG_MAX_STRINGSIZE];
    
    for(q = 0; q < pathstrLen; q++)
    {
        char ch = pathstr[q];
        
        switch (ch)
        {
            case 'M': case 'm':
            {
                //                pathstarted = true;
                type = ch;
                double moveto[2];
                ch = pathstr[++q];
                long lcount = 0;
                while(ch_idx < pathstrLen  && q < pathstrLen &&
                      (isdigit(ch) || isspace(ch) || ch == ',' || ch == '.' || ch == '-' || ch == '\n'))
                {
                    if(ch == ',')
                    {
                        moveto[lcount++] = strtod(chunk, NULL);
                        //                        post("float before , %f", t_moveto.x);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        ch = pathstr[++q];
                    }
                    else if(ch == '-')
                    {
                        moveto[lcount++] = strtod(chunk, NULL);
                        //                       post("float before - %f", t_moveto.x);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    }
                    else if(ch == ' ' || ch == '\n')
                    { //this newline handling is not right somehow
                        if(chunk[0] == '\0')
                        {
                            ch = pathstr[++q];
                        }
                        else
                        {
                            ch = ',';
                            //post("jump %s", chunk);
                        }
                        
                    }
                    else
                    {
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    }
                }
                
                char *remainer = chunk;
                errno = 0;
                double test = strtod(chunk, &remainer);
                if (lcount < 2 && errno == 0 && remainer != chunk)
                {
                    moveto[lcount] = test; //this is sometimes already done above
                }


                //post("M x %f y %f", moveto[0], moveto[1]);

                if(islower(type))
                {
                    moveto[0] += prev_pt[0];
                    moveto[1] += prev_pt[1];
                    type = toupper(type);
                }
                
                snprintf(address, OSVG_MAX_STRINGSIZE, "/%ld/%c", pcount, type);
                
                
                msg = osc_message_u_allocWithAddress(address);
                osc_message_u_appendDouble(msg, moveto[0]);
                osc_message_u_appendDouble(msg, moveto[1]);
                osc_bundle_u_addMsg(bndl, msg);

                pcount++;
                
                prev_pt[0] = moveto[0];
                prev_pt[1] = moveto[1];
                
                origin_pt[0] = moveto[0];
                origin_pt[1] = moveto[1];
                
                memset(chunk, '\0', sizeof(char) * pathstrLen);
                ch_idx = 0;
                q--;
                prev_type = type;
                type = '\0';
            } break;
            case 'l': case 'L':{
                //if(pathstarted){
                type = ch;
                double lineto[2];
                ch = pathstr[++q];
                long lcount = 0;
                while(ch_idx < pathstrLen  && q < pathstrLen &&
                      (isdigit(ch) || isspace(ch) || ch == ',' || ch == '.' || ch == '-' || ch == '\n') && lcount < 2){
                    if(ch == ',' || ch == ' '){
                        lineto[lcount++] = strtod(chunk, NULL);
//                        post("chunk %s lx %f", chunk, lineto[0]);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        ch = pathstr[++q];
                    } else if(ch == '-'){
                        lineto[lcount++] = strtod(chunk, NULL);
//                        post("chunk %s lx %f", chunk, lineto[0]);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    } else if(ch == ' ' || ch == '\n'){ //this newline handling is not right somehow
                        if(chunk[0] == '\0'){
                            ch = pathstr[++q];
                        } else {
                            ch = ',';
//                            post("jump %s", chunk);
                        }
                        
                    } else {
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    }
                }
                
                char *remainer = chunk;
                errno = 0;
                double test = strtod(chunk, &remainer);
                if (lcount < 2 && errno == 0 && remainer != chunk)
                {
                    lineto[lcount] = test; //this is sometimes already done above
                }
                
                //post("L prev pt x %f y %f lx %f ly %f", prev_pt[0],prev_pt[1],lineto[0],lineto[1]);
                if(islower(type))
                {
                    lineto[0] += prev_pt[0];
                    lineto[1] += prev_pt[1];
                    type = toupper(type);
                }
                
                snprintf(address, OSVG_MAX_STRINGSIZE, "/%ld/%c", pcount, type);
                msg = osc_message_u_allocWithAddress(address);
                osc_message_u_appendDouble(msg, lineto[0]);
                osc_message_u_appendDouble(msg, lineto[1]);
                osc_bundle_u_addMsg(bndl, msg);
                
                pcount++;
                
                //post("L x %f y %f", lineto[0], lineto[1]);
                memset(chunk, '\0', sizeof(char) * pathstrLen);

                ch_idx = 0;
                q--;
                //} else {
                //    post("strangely formated svg file");
                //}
                prev_type = type;
                type = '\0';
                
                prev_pt[0] = lineto[0];
                prev_pt[1] = lineto[1];
                
            } break;
            case 'v': case 'V': case 'h': case 'H':{
                //if(pathstarted){
                type = ch;
                double coord = 0;
                ch = pathstr[++q];
                
                //slightly different routine since there is only 1 number (this probably could be better generalized)
                while(ch_idx < pathstrLen  && q < pathstrLen &&
                      (isdigit(ch) || isspace(ch) || ch == ',' || ch == '.' || ch == '-' || ch == '\n')){
                    if(ch == ',' || ch == ' '){
                        ch_idx = 0;
                        ch = pathstr[++q];
                        break;
                    } else if(ch == '-'){
                        ch_idx = 0;
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    } else if(ch == ' ' || ch == '\n'){ //this newline handling is not right somehow
                        if(chunk[0] == '\0'){
                            ch = pathstr[++q];
                        } else {
                            ch = ',';
                            //post("jump %s", chunk);
                        }
                        
                    } else {
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    }
                }
                char *remainer = chunk;
                errno = 0;
                double test = strtod(chunk, &remainer);
                if (errno == 0 && remainer != chunk)
                {
                   coord = test;
                }
                
                memset(chunk, '\0', sizeof(char) * pathstrLen);
                
                
                if(type == 'v' ){
                    pt[0] = 0;
                    pt[1] = coord;
                } else if(type == 'V'){
                    pt[0] = prev_pt[0];
                    pt[1] = coord;
                } else if(type == 'h'){
                    pt[1] = 0;
                    pt[0] = coord;
                } else if (type == 'H'){
                    pt[1] = prev_pt[1];
                    pt[0] = coord;
                }
                
                if(islower(type))
                {
                    pt[0] += prev_pt[0];
                    pt[1] += prev_pt[1];
                    type = toupper(type);
                }
                
                snprintf(address, OSVG_MAX_STRINGSIZE, "/%ld/%c", pcount, type);
                msg = osc_message_u_allocWithAddress(address);
                osc_message_u_appendDouble(msg, pt[0]);
                osc_message_u_appendDouble(msg, pt[1]);
                osc_bundle_u_addMsg(bndl, msg);
                
                pcount++;
                
                prev_pt[0] = pt[0];
                prev_pt[1] = pt[1];
                
                ch_idx = 0;
                q--;
                /*} else {
                 post("strangely formated svg file");
                 }*/
                prev_type = type;
                type = '\0';
                
            } break;
                
            case 'c': case 'C': {
                //if(pathstarted){
                type = ch;
                //post("type input %c", type);
                //t_point t_bezier[3];
                double bpts[6];
                long ccount = 0;
                ch = pathstr[++q];
                while(ch_idx < pathstrLen  && q < pathstrLen &&
                      (isdigit(ch) || isspace(ch) || ch == ',' || ch == '.' || ch == '-' || ch == '\n')){
                    //while(ch_idx < eeLen && ch != 'l' && ch != 'L' && ch != 'c' && ch != 'C' && q < eeLen){
                    if(ch == ','){
                        bpts[ccount++] = strtod(chunk, NULL);
                        //post("%d %f", __LINE__, bpts[ccount-1]);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        ch = pathstr[++q];
                    } else if(ch == '-'){
                        if(ch_idx > 0){
                            bpts[ccount++] = strtod(chunk, NULL);
                            //post("%d %f", __LINE__,bpts[ccount-1]);
                            memset(chunk, '\0', sizeof(char) * pathstrLen);
                            ch_idx = 0;
                        }
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    } else if(ch == ' ' || ch == '\n'){ //this newline handling is not right somehow
                        if(chunk[0] == '\0'){
                            ch = pathstr[++q];
                        } else {
                            ch = ',';
                            //post("jump %s", chunk);
                        }
                        
                    } else {
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    }
                    //post("C/c string %s", chunk);
                }
                char *remainer = chunk;
                errno = 0;
                double test = strtod(chunk, &remainer);
                if (errno == 0 && remainer != chunk)
                {
                    bpts[ccount++] = test;
                }
               
                //post("%d %f", __LINE__  ,bpts[ccount-1]);
                
                //three bspline points (6 doubles)
                // should probably make everything absolute so it can be scaled easier
                
                
                
                if(ccount == 6){
                    snprintf(address, OSVG_MAX_STRINGSIZE, "/%ld/%c", pcount, type);
                    msg = osc_message_u_allocWithAddress(address);
                    
                    int bidx;
                    if(islower(type))
                    {
                        for (bidx = 0; bidx < 3; bidx++)
                        {
                            
                            bpts[bidx * 2] += prev_pt[0];
                            bpts[(bidx * 2)+1] += prev_pt[1];
                            
                            osc_message_u_appendDouble(msg, bpts[bidx*2]);
                            osc_message_u_appendDouble(msg, bpts[(bidx*2)+1]);
                        }
                        type = toupper(type);
                    }
                    else
                    {
                        //post("upper? %c", type);
                        for (bidx = 0; bidx < 6; bidx++)
                            osc_message_u_appendDouble(msg, bpts[bidx]);

                    }
                    
                    osc_bundle_u_addMsg(bndl, msg);
                    
                    
                    pcount++;
                    prev_ctl_pt[0] = bpts[2];
                    prev_ctl_pt[1] = bpts[3];
                    prev_pt[0] = bpts[4];
                    prev_pt[1] = bpts[5];

                } else {
                    post("tried to build a c format but wans't the right length it was %d", ccount  );
                }
                
                memset(chunk, '\0', sizeof(char) * pathstrLen);
                ch_idx = 0;
                q--;
                /*} else {
                 post("strangely formated svg file");
                 }*/
                prev_type = type;
                type = '\0';
            } break;
            case 's': case 'S': {

                type = ch;
                double spts[4];
                long scount = 0;
                ch = pathstr[++q];
                while(ch_idx < pathstrLen  && q < pathstrLen &&
                      (isdigit(ch) || isspace(ch) || ch == ',' || ch == '.' || ch == '-' || ch == '\n')){
                    
                    if(ch == ','){
                        spts[scount++] = strtod(chunk, NULL);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        ch = pathstr[++q];
                    } else if(ch == '-'){
                        if(ch_idx > 0){
                            spts[scount++] = strtod(chunk, NULL);
                            memset(chunk, '\0', sizeof(char) * pathstrLen);
                            ch_idx = 0;
                        }
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    } else if(ch == ' ' || ch == '\n'){ //this newline handling is not right somehow
                        if(chunk[0] == '\0'){
                            ch = pathstr[++q];
                        } else {
                            ch = ',';
                        }
                        
                    } else {
                        chunk[ch_idx] = ch;
                        chunk[++ch_idx] = '\0';
                        ch = pathstr[++q];
                    }
                }
                
                char *remainer = chunk;
                errno = 0;
                double test = strtod(chunk, &remainer);
                if (errno == 0 && remainer != chunk)
                {
                    spts[scount++] = test;
                }
                

                if(scount == 4){
                    //convert type: s to c, but still call it s -->> not done yet, need to use 2nd control point from previous C or if not C, use last point?
                    double prev_ctrl_Ptr[2];
                    
                    if (prev_type == 'C' || prev_type == 'S')
                    {
                        prev_ctrl_Ptr[0] = (-1 * (prev_ctl_pt[0] - prev_pt[0])) + prev_pt[0];
                        prev_ctrl_Ptr[1] = (-1 * (prev_ctl_pt[1] - prev_pt[1])) + prev_pt[1];
                        //post("deltaX %f deltaY %f reflectX %f reflectY %f", prev_ctl_pt[0] - prev_pt[0], prev_ctl_pt[1] - prev_pt[1], prev_ctrl_Ptr[0], prev_ctrl_Ptr[1]);
                        
                    }
                    else
                    {
                        prev_ctrl_Ptr[0] = prev_pt[0];
                        prev_ctrl_Ptr[1] = prev_pt[1];
                    }
                    
                    snprintf(address, OSVG_MAX_STRINGSIZE, "/%ld/%c", pcount, type);
                    msg = osc_message_u_allocWithAddress(address);
                    osc_message_u_appendDouble(msg, prev_ctrl_Ptr[0]);
                    osc_message_u_appendDouble(msg, prev_ctrl_Ptr[1]);
                    
                    int bidx;

                    if(islower(type))
                    {
                        for (bidx = 0; bidx < 2; bidx++)
                        {
                            spts[bidx * 2] += prev_pt[0];
                            spts[(bidx * 2)+1] += prev_pt[1];
                            
                            osc_message_u_appendDouble(msg, spts[bidx*2]);
                            osc_message_u_appendDouble(msg, spts[(bidx*2)+1]);
                        }
                        type = toupper(type);
                    }
                    else
                    {
                        for (bidx = 0; bidx < 4; bidx++)
                            osc_message_u_appendDouble(msg, spts[bidx]);

                    }
                    
                    
                    // NOTE: S is converted to type C for easy of parsing later
                    
                    osc_bundle_u_addMsg(bndl, msg);

                    
                    pcount++;
                    prev_ctl_pt[0] = spts[0];
                    prev_ctl_pt[1] = spts[1];
                    prev_pt[0] = spts[2];
                    prev_pt[1] = spts[3];

                    
                } else {
                    
                    post("tried to build a s format but wans't the right length, s count %d", scount);
                }

                memset(chunk, '\0', sizeof(char) * pathstrLen);
                ch_idx = 0;
                q--;
                /*} else {
                 post("strangely formated svg file");
                 }*/
                prev_type = type;
                type = '\0';
            } break;
            case 'z':
            case 'Z':
                type = (islower(ch)) ? toupper(ch) : ch;
                
                snprintf(address, OSVG_MAX_STRINGSIZE, "/%ld/%c", pcount, type);
                msg = osc_message_u_allocWithAddress(address);
                osc_message_u_appendDouble(msg, origin_pt[0]);
                osc_message_u_appendDouble(msg, origin_pt[1]);
                osc_bundle_u_addMsg(bndl, msg);
                
            break;
                
            case ' ': case '\n':{
                //post("skipping a space or newline");
            } break;
            default:
                post("no parsing implemented for %c", ch);

                break;
        }
    }
    
}

long oxml_addNode(t_oxml_node **head, const xmlChar *type)
{
    t_oxml_node *p = *head;

    if(!p)
    {
        p = (t_oxml_node *)calloc(1, sizeof(t_oxml_node));
        if(!p)
        {
            post("could not allocate memory (%d)", __LINE__  );
            return 0;
        }
        p->type = type;
        p->count = 1;
        p->next = NULL;
        *head = p;
//        post("new head");
        return 1;
    }
    else
    {
        while(p->next && p->type != type)
            p = p->next;
        
        if(!xmlStrcmp(p->type, type))
        {
//            post("found type %s", p->type);
            return (++p->count);
        }
        else
        {
//            post("new type");

            t_oxml_node *pn = (t_oxml_node *)calloc(1, sizeof(t_oxml_node));
            if(!pn)
            {
                post("could not allocate memory (%d)", __LINE__  );
                return 0;
            }
            pn->count = 1;
            pn->type = type;
            
            p->next = pn;
            return 1;
        }
    }
    post("error in type checking");
    return -1;
}

void oxml_free_nodes(t_oxml_node *head)
{
    t_oxml_node *temp;

    while(head != NULL)
    {
        temp = head;
        head = head->next;
        free(temp);
        temp = NULL;
    }
    
}

/* new version using xmlNode tree method, 
 this is better because we can do a fast run through a level to count duplicate names first, then go through a second time to parse children
 
 http://hamburgsteak.sandwich.net/writ/libxml2.txt
 
 */

static void oxml_generate_missing_ids(xmlNode *a_node)
{
    xmlNode *cur_node = NULL;
    t_oxml_node *head = NULL;
    
    //first iterate and count each type, store count in
    for (cur_node = a_node; cur_node; cur_node = cur_node->next)
    {
        bool has_id = false;
        if (cur_node->type == XML_ELEMENT_NODE)
        {
            char *name = (char *)cur_node->name;
            
            if (cur_node->properties)
            {
                xmlAttr *attr = cur_node->properties;
                while (attr)
                {
                    if(!xmlStrcmp(attr->name, (const xmlChar *)"id"))
                        has_id = true;
                    
                    attr = attr->next;
                }
                
                if(!has_id)
                {
                    long count = oxml_addNode(&head, cur_node->name);
                    if(count > 0)
                    {
                        long test = count, digits = 0;
                        while (test)
                        {
                            test /= 10;
                            digits++;
                        }
                        char genID[strlen(name) + digits + 1];
                        sprintf(genID, "%s/%ld", name, count);
                        xmlChar tag[] = "id";
                        xmlNewProp(cur_node, tag, (const xmlChar *)genID);
                    }
                    
                }
            }
            
        }
    }
    oxml_free_nodes(head);
}


static void oxml_process_branch(t_osvg *x, xmlNode *a_node, t_osc_bndl_u *bndl)
{

    oxml_generate_missing_ids(a_node);

    xmlNode *cur_node = NULL;
    xmlChar *val = NULL;
    
    t_osc_msg_u *msg = NULL;
    xmlChar *id = NULL;

    
    //then parse for data:
    for (cur_node = a_node; cur_node; cur_node = cur_node->next)
    {
        if (cur_node->type == XML_ELEMENT_NODE)
        {
            //get children first to retreive the sub bundle
            id = NULL;
            
            t_osc_bndl_u *n_bndl = osc_bundle_u_alloc();

            char *name = (char *)cur_node->name;
            msg = osc_message_u_allocWithAddress("/type");
            osc_message_u_appendString(msg, name);
            osc_bundle_u_addMsg(n_bndl, msg);
            

            if (cur_node->properties)
            {
                xmlAttr *attr = cur_node->properties;
                
                //get id first, have to iterate again unfortunately
                
                xmlAttr *attr_head = attr;
                
                while (attr)
                {
                    id = xmlGetProp(cur_node, attr->name);

                    if(!xmlStrcmp(attr->name, (const xmlChar *)"id") && id != NULL)
                    {
                        msg = osc_message_u_allocWithAddress("/id");
                        osc_message_u_appendString(msg, (char *)id);
                        osc_bundle_u_addMsg(n_bndl, msg);
                        break;

                    }
                    xmlFree(id);
                    id = NULL;
                    attr = attr->next;
                }

                attr = attr_head;
                
                while (attr)
                {
                    val = xmlGetProp(cur_node, attr->name);

//                    post("attr: %s %s", attr->name, val);

                    if(!xmlStrcmp(attr->name, (const xmlChar *)"path") || !xmlStrcmp(attr->name, (const xmlChar *)"d"))
                    {
                        t_osc_bndl_u *path_bndl = osc_bundle_u_alloc();
                        osvg_parsePath(x, (char *)val, path_bndl);
                        
                        char buf[strlen((char *)attr->name)+1];
                        sprintf(buf, "/%s", attr->name);
                        msg = osc_message_u_allocWithAddress(buf);
                        osc_message_u_appendBndl_u(msg, path_bndl);
                        osc_bundle_u_addMsg(n_bndl, msg);
                        
                    }
                    else if(xmlStrcmp(attr->name, (const xmlChar *)"id")) //(not id)
                    {
                        //un-labeled svg elements, line, rects, anything really

                        char buf[strlen((char *)attr->name)+1];
                        sprintf(buf, "/%s", attr->name);
                        msg = osc_message_u_allocWithAddress(buf);
                        
                        char *v = (char *)val;
                        char *p = (char *)val;
                        errno = 0;
                        double d = strtod(v, &p);
                        if(errno == 0 && p != v )
                            osc_message_u_appendDouble(msg, d);
                        else
                            osc_message_u_appendString(msg, (char *)val);
                        
                        osc_bundle_u_addMsg(n_bndl, msg);
                        
                    }

                    xmlFree(val);
                    val = NULL;
                    attr = attr->next;
                }
            }

            
            val = xmlNodeGetContent(cur_node);
            if(!xmlStrcmp(cur_node->name, (const xmlChar *)"text") && strlen((const char *)val))
                post("%s content %s %x %d", cur_node->name, val, val);
            
            xmlFree(val);
            val = NULL;
            
            
            if(cur_node->children)
            {
                oxml_process_branch(x, cur_node->children, n_bndl);
            }
            
        //we know there is always an id, because we made sure in the pre-processing loop, but just for safety:
            if(id)
            {
                
                if (x->sepattr != NULL)
                {
                    char *delim = x->sepattr->s_name;
                    int n_delims = strlen(delim);
                    int idlen = xmlStrlen(id);
                    
                    char idbuf[idlen+2];
                    idbuf[0] = '/';
                    idbuf[idlen+1] = '\0';

                    int i, j;
                    for (i = 0; i < idlen; i++)
                    {
                        for (j = 0; j < n_delims; j++)
                        {
                            if(id[i] == delim[j])
                            {
                                idbuf[i+1] = '/';
                                break;
                            }
                            else
                            {
                                idbuf[i+1] = id[i];
                            }
                        }
                    }
                    
                    if(idbuf[idlen] == '/')
                        idbuf[idlen] = '\0';
                    
                    msg = osc_message_u_allocWithAddress(idbuf);
                }
                else
                {
                    char idbuf[strlen((char *)id)+2];
                    idbuf[0] = '/';
                    strcpy(idbuf+1, (char *)id);
                    msg = osc_message_u_allocWithAddress(idbuf);
                }
                xmlFree(id);
                id = NULL;
            }
            else
            {
                msg = osc_message_u_allocWithAddress("/noid");
            }
            
            osc_message_u_appendBndl_u(msg, n_bndl);
            osc_bundle_u_addMsg(bndl, msg);
        }

    }
}

void oxml_parse_tree(t_osvg *x, const char *file)
{
    if(!file)
        return;
    
    xmlDoc *doc = NULL;
    xmlNode *root_element = NULL;

    critical_enter(x->lock);

    doc = xmlReadFile(file, NULL, 0);
    
    if (doc == NULL)
    {
        object_error((t_object *)x, "%s: failed to read file",file);
        return;
    }
    
    root_element = xmlDocGetRootElement(doc);
    if (root_element == NULL)
    {
        xmlFreeDoc(doc);
        object_error((t_object *)x, "%s: failed to parse file",file);
        return;
    }
    
    t_osc_bndl_u *bndl = osc_bundle_u_alloc();
    
    t_osc_msg_u *msg = osc_message_u_allocWithAddress("/file");
    osc_message_u_appendString(msg, file);
    osc_bundle_u_addMsg(bndl, msg);
    
    oxml_process_branch(x, root_element, bndl);
    
    long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl, &len, &buf);
	if(bndl)
    {
		osc_bundle_u_free(bndl);
	}
  
    omax_util_outletOSC(x->outlet, len, buf);

    if(buf)
    {
		osc_mem_free(buf);
	}
    
    xmlFreeDoc(doc);
    xmlCleanupParser();
    critical_exit(x->lock);
}

void osvg_bang(t_osvg *x)
{
    if(x->f_name)
        oxml_parse_tree(x, x->f_name->s_name);
}


void svglookup_doopen(t_osvg *x, t_symbol *s)
{
	short path = 0;
	char filename[MAX_PATH_CHARS] = "";
    t_fourcc type = FOUR_CHAR_CODE('svg ');
	t_fourcc types[2] = { FOUR_CHAR_CODE('svg '), FOUR_CHAR_CODE('TEXT') };
    char file[MAX_PATH_CHARS];
    
	if (s == ps_nothing)
    {
		if (open_dialog(filename, &path, &type, types, 2))
			return;
        
        path_toabsolutesystempath(path, filename, file);

	}
    else
    {
		strcpy(filename,s->s_name);
		if (locatefile_extended(filename, &path, &type, types, 2))
        {
			object_error((t_object *)x, "%s: can't find file",filename);
			return;
		}
        strcpy(file,s->s_name);
        post("%s %s", filename, s->s_name);
	}
    
    post("%s, %s", filename, file);

    
    x->filewatcher = filewatcher_new((t_object *)x, path, filename);
    if(x->autowatch && x->filewatcher)
        filewatcher_start(x->filewatcher);
    
    x->f_name = gensym(file);
    oxml_parse_tree(x, file);

}

void osvg_open(t_osvg *x, t_symbol *s)
{
	defer(x,(method)svglookup_doopen,s,0,0L);
}

#ifndef OMAX_PD_VERSION

void osvg_doc(t_osvg *x)
{
	omax_doc_outletDoc(x->outlet);
}

void osvg_assist(t_osvg *x, void *b, long io, long num, char *buf){
	omax_doc_assist(io, num, buf);
}
#endif

void osvg_free(t_osvg *x){
#ifndef OMAX_PD_VERSION
	critical_free(x->lock);
    
    if(x->filewatcher)
        object_free(x->filewatcher);
#endif
    oxml_free_nodes(x->head);

    //need to free proxy?
}



#ifdef OMAX_PD_VERSION
void *osvg_new(t_symbol *msg, short argc, t_atom *argv){
	t_osvg *x;
	if((x = (t_osvg *)object_alloc(osvg_class))){
		x->outlet = outlet_new((t_object *)x, NULL);
		x->buffer_len = 1024;
		if(argc){
			if(atom_gettype(argv) == A_LONG){
				//x->buffer_len = atom_getlong(argv);
				object_error((t_object *)x, "o.svg no longer takes an argument to specify its internal buffer size.");
				object_error((t_object *)x, "The buffer will expand as necessary.");
			}
		}
		x->buffer = (char *)osc_mem_alloc(x->buffer_len * sizeof(char));
		memset(x->buffer, '\0', x->buffer_len);
		x->buffer_pos = OSC_HEADER_SIZE;
		osc_bundle_s_setBundleID(x->buffer);
		critical_new(&(x->lock));
	}
    
	return(x);
}

int setup_o0x2ecollect(void){
	t_class *c = class_new(gensym("o.svg"), (t_newmethod)osvg_new, (t_method)osvg_free, sizeof(t_osvg), 0L, A_GIMME, 0);

	class_addmethod(c, (t_method)osvg_fullPacket, gensym("FullPacket"), A_GIMME, 0);
//	class_addmethod(c, (t_method)osvg_doc, "doc", 0);
//	class_addmethod(c, (t_method)osvg_assist, "assist", A_CANT, 0);
	class_addmethod(c, (t_method)osvg_anything, gensym("anything"), A_GIMME, 0);

    class_addbang(c, osvg_bang);

	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	osvg_class = c;
        
	ODOT_PRINT_VERSION;
	return 0;
}
#else

void osvg_filechanged(t_osvg *x, char *filename, short path)
{
    char file[MAX_PATH_CHARS];
    path_toabsolutesystempath(path, filename, file);

    //note I'm pretty sure this is always in main thread, otherwise better to defer probably
//    osvg_do_parse(x, file);
    oxml_parse_tree(x, file);

}

t_max_err osvg_separator_get(t_osvg *x, t_object *attr, long *argc, t_atom **argv)
{
    
    char alloc;
    atom_alloc(argc, argv, &alloc);
    if (x->sepattr != NULL)
        atom_setsym(*argv, x->sepattr);
    else
        atom_setsym(*argv, gensym("<none>"));
    
    return 0;
}


t_max_err osvg_separator_set(t_osvg *x, t_object *attr, long argc, t_atom *argv)
{
    
    x->sepattr = atom_getsym(argv);
    post("separators %s", x->sepattr->s_name);
    return 0;
}

t_max_err osvg_autowatch_get(t_osvg *x, t_object *attr, long *argc, t_atom **argv)
{
    
    char alloc;
    atom_alloc(argc, argv, &alloc);
    atom_setfloat(*argv, x->autowatch);
    
    return 0;
}


t_max_err osvg_autowatch_set(t_osvg *x, t_object *attr, long argc, t_atom *argv)
{
    long prev = x->autowatch;
    
    if(atom_gettype(argv) == A_LONG)
        x->autowatch = atom_getlong(argv) != 0;
    
    if(x->autowatch != prev)
    {
        if(x->autowatch && x->filewatcher)
        {
            filewatcher_start(x->filewatcher);
        }
        else if(x->filewatcher)
        {
            filewatcher_stop(x->filewatcher);
        }
    
    }
    post("autowatch %d", x->autowatch);
    
    return 0;
}

void *osvg_new(t_symbol *msg, short argc, t_atom *argv){
	t_osvg *x;
	if((x = (t_osvg *)object_alloc(osvg_class))){
		x->outlet = outlet_new((t_object *)x, NULL);
		critical_new(&(x->lock));
        x->autowatch = 0;
        x->filewatcher = NULL;
        x->pdepth = 0;
        x->head = NULL;
        x->sepattr = NULL;
        x->f_name = NULL;
        attr_args_process(x, argc, argv);
        
	}
    
	return(x);
}
int main(void){
	t_class *c = class_new("o.svg", (method)osvg_new, (method)osvg_free, sizeof(t_osvg), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)osvg_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)osvg_doc, "doc", 0);
	class_addmethod(c, (method)osvg_assist, "assist", A_CANT, 0);
//	class_addmethod(c, (method)osvg_anything, "anything", A_GIMME, 0);
    class_addmethod(c, (method)osvg_open, "open", A_DEFSYM, 0);
    class_addmethod(c, (method)osvg_filechanged, "filechanged", A_CANT, 0);
    class_addmethod(c, (method)osvg_bang, "bang", 0);

	class_addmethod(c, (method)odot_version, "version", 0);

    CLASS_ATTR_ATOM_LONG(c, "autowatch", 0L, t_osvg, autowatch);
    CLASS_ATTR_ACCESSORS(c, "autowatch", osvg_autowatch_get, osvg_autowatch_set)
    
    CLASS_ATTR_SYM(c, "separator", 0L, t_osvg, sepattr);
    CLASS_ATTR_ACCESSORS(c, "separator", osvg_separator_get, osvg_separator_set);
    
    
	class_register(CLASS_BOX, c);
	osvg_class = c;

    ps_nothing = gensym("");

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
#endif
