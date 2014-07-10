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
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
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

typedef struct _osvg{
	t_object ob;
	void *outlet;
	char *buffer;
	long buffer_len;
	long buffer_pos;
	t_critical lock;
    
    xmlTextReader   *reader;
    short           f_open;
    
} t_osvg;

void *osvg_class;
t_symbol *ps_nothing;

void osvg_fullPacket_(t_osvg *x, long len, long ptr);

/*
int iterateXML(t_osvg *x, xmlTextReader *reader)
{
    
    while(xmlTextReaderRead(reader)){
        
        switch (xmlTextReaderNodeType(reader)) {
            case XML_READER_TYPE_ELEMENT:
                
                xmlTypeRouting(x, reader, NULL);
                
                continue;
                
                
            case XML_READER_TYPE_TEXT:{ //actually svg's don't really use the text part
                char *val = (char *)xmlTextReaderConstValue(reader);
                post("      text value:  %s", val);
            } continue;
        }
    }
    xmlFreeTextReader(reader);
    xmlCleanupParser();
    return 1;
}

 
 
 */
/*
void processNode(t_osvg *x, xmlTextReaderPtr reader, char **parent_prefixPtr)
{
    char *name = NULL;
    
    name = (char *)xmlTextReaderConstName(reader);
    if (name == NULL)
        name = (char *)xmlStrdup(BAD_CAST "--");
    
    char *parent_prefix = NULL;
    if(parent_prefixPtr != NULL)
        parent_prefix = *parent_prefixPtr;
    
    int parentlen = (parent_prefix != NULL) ? strlen(parent_prefix) : 0;
    
    int namelen = strlen(name);
    int prefixlen = namelen + parentlen + 1;
    
    char *prefix = (char *)malloc(prefixlen * sizeof(char));
    
    if(parent_prefix != NULL)
        strcpy(prefix, parent_prefix);
    
    prefix[parentlen] = '/';
    strcpy(prefix + (parentlen+1), (char *)name);
    
    //    post("prefix %s", prefix);
    
    char *attrname = NULL;
    char *val = NULL;
    
    char tmp[prefixlen];
    strcpy(tmp, prefix);
    int node_type = xmlTextReaderNodeType(reader);
    switch (node_type) {
        case XML_READER_TYPE_ELEMENT:
        {
            while (xmlTextReaderMoveToNextAttribute(reader))
            {
                attrname = (char *)xmlTextReaderConstName(reader);
                val = (char *)xmlTextReaderConstValue(reader);
                
                if(!strcmp(attrname, "id") && val != NULL)
                {
                    post("pre realloc prefix %s", prefix);
                    
                    prefix = (char *)realloc(prefix, sizeof(char) * (strlen(val) + prefixlen + 2));
                    if(!prefix)
                    {
                        object_error((t_object *)x, "failed to realloc prefix!");
                        return;
                    }
                    memset(prefix, '\0', sizeof(char) * (strlen(val) + prefixlen + 2));
                    strcpy(prefix, tmp);
                    
                    prefix[prefixlen] = '/';
                    
                    strcpy(prefix+prefixlen+1, val);
                    prefixlen = strlen(prefix);
                    
                }
                else
                {
                    char address[prefixlen + 2 + strlen(attrname)];
                    
                    strcpy(address, prefix);
                    address[prefixlen] = '/';
                    strcpy(address+(prefixlen+1), attrname);
                    // send to o.collect here
                    
                    post("............................ %s %s", address, val);
                    
                }
                
            }
        } break;
        case XML_READER_TYPE_TEXT:
        {
            val = (char *)xmlTextReaderConstValue(reader);
            post(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TEXT %s num value:  %s", prefix, val);
        } break;
            
    }
    
    xmlTextReaderMoveToElement(reader);
    
    long pdepth = xmlTextReaderDepth(reader);//log depth
    xmlTextReaderRead(reader);
    
    //while(xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) xmlTextReaderRead(reader);
    if(parent_prefix)
    {
        post("parent %s pdepth %d this depth %d", prefix, pdepth, xmlTextReaderDepth(reader));
        //goto freeThese;
    }
    
    int count = 0;
    
    while(xmlTextReaderDepth(reader) > pdepth && count < 2)
    {
        if(xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT)
        {
            post("system - checking layer %d", xmlTextReaderDepth(reader));
            critical_enter(x->lock);
            processNode(x, reader, &prefix);
            critical_exit(x->lock);
            //xmlTextReaderMoveToElement(reader);
        }
        xmlTextReaderRead(reader);
        count++;
    }
    
freeThese:
    if(prefix)
    {
        free(prefix);
        prefix = NULL;
    }
    
    
    
}
*/

void osvg_fullPacket_impl(t_osvg *x, long len, char *ptr)
{
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(len == OSC_HEADER_SIZE){
		// empty bundle
		return;
	}
	critical_enter(x->lock);
	if(x->buffer_pos + len > x->buffer_len){
		char *tmp = (char *)osc_mem_resize(x->buffer, x->buffer_pos + len);
		if(!tmp){
			object_error((t_object *)x, "Out of memory...sayonara max...");
			critical_exit(x->lock);
			return;
		}
		x->buffer = tmp;
		memset(x->buffer + x->buffer_pos, '\0', len);
		x->buffer_len = x->buffer_pos + len;
	}
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, ptr);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		t_osc_msg_ar_s *match = NULL;
		osc_bundle_s_lookupAddress(x->buffer_pos, x->buffer, osc_message_s_getAddress(m), &match, 1);
		if(!match){
			long l = osc_message_s_getSize(m) + 4;
			memcpy(x->buffer + x->buffer_pos, osc_message_s_getPtr(m), l);
			x->buffer_pos += l;
		}else{
			// this function can resize its buffer, but we don't have to worry about that
			// since we already resized it above to accommidate the entire bundle
			int i;
			for(i = 0; i < osc_message_array_s_getLen(match); i++){
				t_osc_msg_s *mm = osc_message_array_s_get(match, i);
				osc_bundle_s_replaceMessage(&(x->buffer_len),
                                            &(x->buffer_pos),
                                            &(x->buffer),
                                            mm,
                                            m);
			}
			osc_message_array_s_free(match);
		}
	}
	osc_bndl_it_s_destroy(it);
	critical_exit(x->lock);
}

void osvg_fullPacket(t_osvg *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
    osvg_fullPacket_impl(x, len, ptr);
}

void osvg_anything(t_osvg *x, t_symbol *msg, int argc, t_atom *argv)
{
	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	t_osc_msg_u *msg_u = NULL;
	t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, msg, argc, argv);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		if(bndl_u){
			osc_bundle_u_free(bndl_u);
		}
		return;
	}
	osc_bundle_u_addMsg(bndl_u, msg_u);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl_u, &len, &buf);
	if(bndl_u){
		osc_bundle_u_free(bndl_u);
	}
    
	osvg_fullPacket_impl(x, len, buf);
	if(buf){
		osc_mem_free(buf);
	}

}

void osvg_bang(t_osvg *x){
    critical_enter(x->lock);
    int len = x->buffer_pos;
    char outbuf[len];
    memcpy(outbuf, x->buffer, len);
    memset(x->buffer + OSC_HEADER_SIZE, '\0', len - OSC_HEADER_SIZE);
    x->buffer_pos = OSC_HEADER_SIZE;
    critical_exit(x->lock);
    omax_util_outletOSC(x->outlet, len, outbuf);
}

void osvg_parsePath(t_osvg *x, char *pathstr, char *prefix)
{
    // NOTE: current S and C parsing is not SVG complient, it should allow for an unknown number of segments
    // there should always be a prefix!
    if(!prefix)
        return;
    
    //post("%s", prefix);
    
    int prefixLen = strlen(prefix);
    char address[prefixLen+1025];

    t_symbol *msg;
    t_atom out[6];
    
    char type, prev_type;
    char postfix[4];
    postfix[0] = '/';
    postfix[2] = '/';
    
    //post("d = %s", pathstr);
    if(strlen(pathstr) < 1) return;
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
    for(q = 0; q < pathstrLen; q++){
        char ch = pathstr[q];
        
        switch (ch) {
            case 'M': case 'm':{
                //                pathstarted = true;
                type = ch;
                double moveto[2];
                ch = pathstr[++q];
                long lcount = 0;
                while(ch_idx < pathstrLen  && q < pathstrLen &&
                      (isdigit(ch) || isspace(ch) || ch == ',' || ch == '.' || ch == '-' || ch == '\n')){
                    if(ch == ','){
                        moveto[lcount++] = strtod(chunk, NULL);
                        //                        post("float before , %f", t_moveto.x);
                        memset(chunk, '\0', sizeof(char) * pathstrLen);
                        ch_idx = 0;
                        ch = pathstr[++q];
                    } else if(ch == '-'){
                        moveto[lcount++] = strtod(chunk, NULL);
                        //                       post("float before - %f", t_moveto.x);
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
                
                snprintf(address, prefixLen+1024, "%s/d/%ld/%c", prefix, pcount, type);
                msg = gensym(address);
                

                atom_setfloat(out, moveto[0]);
                atom_setfloat(out+1, moveto[1]);
                osvg_anything(x, msg, 2, out);
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
                
                snprintf(address, prefixLen+1024, "%s/d/%ld/%c", prefix, pcount, type);
                msg = gensym(address);
                atom_setfloat(out, lineto[0]);
                atom_setfloat(out+1, lineto[1]);
                osvg_anything(x, msg, 2, out);
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
                
                snprintf(address, prefixLen+1024, "%s/d/%ld/%c", prefix, pcount, type);
                msg = gensym(address);
                atom_setfloat(out, pt[0]);
                atom_setfloat(out+1, pt[1]);
                osvg_anything(x, msg, 2, out);
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

                    int bidx;
                    if(islower(type))
                    {
                        for (bidx = 0; bidx < 3; bidx++)
                        {
                            
                            bpts[bidx * 2] += prev_pt[0];
                            bpts[(bidx * 2)+1] += prev_pt[1];
                            
                            atom_setfloat(out+(bidx*2), bpts[bidx*2]);
                            atom_setfloat(out+1+(bidx*2), bpts[(bidx*2)+1]);
                        }
                        type = toupper(type);
                    }
                    else
                    {
                        //post("upper? %c", type);
                        for (bidx = 0; bidx < 6; bidx++)
                            atom_setfloat(out+bidx, bpts[bidx]);
                    }
                    
                    snprintf(address, prefixLen+1024, "%s/d/%ld/%c", prefix, pcount, type);
                    msg = gensym(address);

                    osvg_anything(x, msg, 6, out);
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
                    

                    atom_setfloat(out, prev_ctrl_Ptr[0]);
                    atom_setfloat(out+1, prev_ctrl_Ptr[1]);
                    
                    int bidx;

                    if(islower(type))
                    {
                        for (bidx = 0; bidx < 2; bidx++)
                        {
                            spts[bidx * 2] += prev_pt[0];
                            spts[(bidx * 2)+1] += prev_pt[1];
                            
                            atom_setfloat(out+2+(bidx*2), spts[bidx*2]);
                            atom_setfloat(out+2+1+(bidx*2), spts[(bidx*2)+1]);
                        }
                        type = toupper(type);
                    }
                    else
                    {
                        for (bidx = 0; bidx < 4; bidx++)
                            atom_setfloat(out+2+bidx, spts[bidx]);
                    }
                    
                    
                    // NOTE: S is converted to type C for easy of parsing later

                    snprintf(address, prefixLen+1024, "%s/d/%ld/%c", prefix, pcount, type);
                    msg = gensym(address);
                    
                    osvg_anything(x, msg, 6, out);
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
                
                snprintf(address, prefixLen+1024, "%s/d/%ld/%c", prefix, pcount, type);
                msg = gensym(address);
                atom_setfloat(out, origin_pt[0]);
                atom_setfloat(out+1, origin_pt[1]);
                osvg_anything(x, msg, 2, out);

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


void processNode(t_osvg *x, xmlTextReaderPtr reader, char *parent_prefix);
void processNode(t_osvg *x, xmlTextReaderPtr reader, char *parent_prefix)
{
    char *name = NULL;
    
    name = (char *)xmlTextReaderConstName(reader);
    if (name == NULL)
        name = (char *)xmlStrdup(BAD_CAST "--");
    
    int parentlen = (parent_prefix != NULL) ? strlen(parent_prefix) : 0;
    
    int namelen = strlen(name);
    int prefixlen = namelen + parentlen + 1;
    
    //char *prefix = (char *)malloc(prefixlen * sizeof(char));
    
    char prefix[prefixlen];
    char *prefixPtr = NULL;
    
    if(parent_prefix != NULL)
        strcpy(prefix, parent_prefix);
    
    prefix[parentlen] = '/';
    strcpy(prefix + (parentlen+1), (char *)name);
    
    prefixPtr = prefix;
//    post("parentprefix %s", parent_prefix);
    
//    post("prefix %s", prefixPtr);
    
    char *attrname = NULL;
    char *val = NULL;
    char *prefix_w_id = NULL;
    
    int node_type = xmlTextReaderNodeType(reader);
    t_symbol *msg;
    t_atom out_val;
    
    
    switch (node_type) {
        case XML_READER_TYPE_ELEMENT:
        {
            while (xmlTextReaderMoveToNextAttribute(reader))
            {
                attrname = (char *)xmlTextReaderConstName(reader);
                val = (char *)xmlTextReaderConstValue(reader);
                
                if(!strcmp(attrname, "id") && val != NULL)
                {
                    //post("id %s %s", attrname, val);

                    int idlen = strlen(val);
                    prefix_w_id = (char *)malloc((idlen + prefixlen + 2) * sizeof(char));
                    memset(prefix_w_id, '\0', ((idlen + prefixlen + 2) * sizeof(char)));
                    
                    strcpy(prefix_w_id, prefix);
                    prefix_w_id[prefixlen] = '/';
                    
                    strcpy(prefix_w_id+prefixlen+1, val);
                    
                    prefixlen = strlen(prefix_w_id);
                    prefixPtr = prefix_w_id;

                                            // also send id to o.collect
                        char namePrefix[prefixlen+5];
                        strcpy(namePrefix, prefix_w_id);
                        strcpy(namePrefix+prefixlen, "/type");
                        
                        msg = gensym(namePrefix);
                        atom_setsym(&out_val, gensym(name));
                        
                        //post("test %s %s", msg->s_name, name);
                        osvg_anything(x, msg, 1, &out_val);

                    
                    // also send id to o.collect
                    char idPrefix[prefixlen+3];
                    strcpy(idPrefix, prefix_w_id);
                    strcpy(idPrefix+prefixlen, "/id");
                    
                    msg = gensym(idPrefix);
                    atom_setsym(&out_val, gensym(val));
                    
                    osvg_anything(x, msg, 1, &out_val);


                }
                else if(!strcmp(name, "path") && !strcmp(attrname, "d"))
                {
                    osvg_parsePath(x, val, prefixPtr);
                }
                else
                {
                    char address[prefixlen + 2 + strlen(attrname)];
                    strcpy(address, prefixPtr);
                    address[prefixlen] = '/';
                    strcpy(address+(prefixlen+1), attrname);
                    // send to o.collect here
                    msg = gensym(address);
                    
                    char *p = val;
                    errno = 0;
                    double d = strtod(val, &p);
                    if(errno == 0 && p != val )
                        atom_setfloat(&out_val, d);
                    else
                        atom_setsym(&out_val, gensym(val));
                    
                    osvg_anything(x, msg, 1, &out_val);
                    
                    //post("............................ %s %s", address, val);
                    
                }
                
            }
        } break;
        case XML_READER_TYPE_TEXT:
        {
            val = (char *)xmlTextReaderConstValue(reader);
            msg = gensym(prefixPtr);
            atom_setsym(&out_val, gensym(val));
            osvg_anything(x, msg, 1, &out_val);
            
            //attrname = (char *)xmlTextReaderConstName(reader);
            //post(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TEXT %s attr %s num value:  %s", prefixPtr, attrname, val);
        } break;
            
    }
    
    xmlTextReaderMoveToElement(reader);
    
    long pdepth = xmlTextReaderDepth(reader);//log depth
    xmlTextReaderRead(reader);
    
    /*
     //while(xmlTextReaderNodeType(reader) != XML_READER_TYPE_ELEMENT) xmlTextReaderRead(reader);
     if(parent_prefix)
     {
     post("parent %s pdepth %d this depth %d", prefixPtr, pdepth, xmlTextReaderDepth(reader));
     //return;
     }
     
     //int count = 0;
     */
    
    while(xmlTextReaderDepth(reader) > pdepth )
    {
        if(xmlTextReaderNodeType(reader) == XML_READER_TYPE_ELEMENT || xmlTextReaderNodeType(reader) == XML_READER_TYPE_TEXT)
        {
            //post("system - checking layer %d", xmlTextReaderDepth(reader));
            critical_enter(x->lock);
            processNode(x, reader, prefixPtr);
            critical_exit(x->lock);
        }
        xmlTextReaderRead(reader);
    }
    
    if(prefix_w_id)
        free(prefix_w_id);
    
}


void svglookup_doopen(t_osvg *x, t_symbol *s)
{
	short path;
	char filename[MAX_PATH_CHARS];
	u_int32_t type;
	
	if (s==ps_nothing) {
		if (open_dialog(filename,&path,&type,0L,0))
			return;
	} else {
		strcpy(filename,s->s_name);
		if (locatefile_extended(filename,&path,&type,&type,-1)) {
			object_error((t_object *)x, "%s: can't find file",filename);
			return;
		}
        post("%s %s", filename, s->s_name);
	}
    
    const char *file = s->s_name;

    critical_enter(x->lock);
    xmlTextReaderPtr reader;
    int ret;
    reader = xmlNewTextReaderFilename(file);
    
    if(reader == NULL){
		object_error((t_object *)x, "%s: error opening file",file);
		return;
	}
    
    x->reader = reader;
	x->f_open = TRUE;
    
    ret = xmlTextReaderRead(reader);
    while (ret == 1)
    {
        processNode(x, reader, NULL);
        ret = xmlTextReaderRead(reader);
    }
    
    xmlTextReaderRead(reader);
    if (ret != 0) {
        object_error((t_object *)x, "%s: failed to parse file",file);
    } else {
        osvg_bang(x);
    }
    
    xmlFreeTextReader(reader);
    x->f_open = FALSE;
    critical_exit(x->lock);

}

void osvg_open(t_osvg *x, t_symbol *s)
{
	defer_low(x,(method)svglookup_doopen,s,0,0L);
}

#ifndef OMAX_PD_VERSION

OMAX_DICT_DICTIONARY(t_osvg, x, osvg_fullPacket);

void osvg_clear(t_osvg *x)
{
	critical_enter(x->lock);
	x->buffer_pos = OSC_HEADER_SIZE;
	memset(x->buffer + OSC_HEADER_SIZE, '\0', x->buffer_len - OSC_HEADER_SIZE);
	critical_exit(x->lock);
}

void osvg_doc(t_osvg *x)
{
	omax_doc_outletDoc(x->outlet);
}

void osvg_assist(t_osvg *x, void *b, long io, long num, char *buf){
	omax_doc_assist(io, num, buf);
}
#endif

void osvg_free(t_osvg *x){
	if(x->buffer){
		free(x->buffer);
	}
	critical_free(x->lock);
    
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
int main(void){
	t_class *c = class_new("o.svg", (method)osvg_new, (method)osvg_free, sizeof(t_osvg), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)osvg_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)osvg_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)osvg_doc, "doc", 0);
	class_addmethod(c, (method)osvg_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)osvg_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)osvg_bang, "bang", 0);
    
    class_addmethod(c, (method)osvg_open, "open", A_DEFSYM, 0);

	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	osvg_class = c;

    ps_nothing = gensym("");

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
#endif
