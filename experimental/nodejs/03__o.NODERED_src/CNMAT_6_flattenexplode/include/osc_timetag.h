/** 	@file osc_timetag.h Utilities for manipulating OSC timetags
	@authors Andy Schmeder, John MacCallum
@{
*/
/*
Copyright (c) 2008.  The Regents of the University of California (Regents).
All Rights Reserved.

Permission to use, copy, modify, and distribute this software and its
documentation for educational, research, and not-for-profit purposes, without
fee and without a signed licensing agreement, is hereby granted, provided that
the above copyright notice, this paragraph and the following two paragraphs
appear in all copies, modifications, and distributions.  Contact The Office of
Technology Licensing, UC Berkeley, 2150 Shattuck Avenue, Suite 510, Berkeley,
CA 94720-1620, (510) 643-7201, for commercial licensing opportunities.

Written by Andy Schmeder and John MacCallum, The Center for New Music and 
Audio Technologies, University of California, Berkeley.

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

*/

#ifndef __OSC_TIMETAG_H__
#define __OSC_TIMETAG_H__

#include <stdint.h>

//#define OSC_TIMETAG_MSGSIZE_NTP 32
//#define OSC_TIME_RECORD "/osc/time/record\0\0\0\0,s\0\0"
//#define OSC_TIME_RECORD_LEN 24

enum {
	OSC_TIMETAG_NTP,
	OSC_TIMETAG_PTP
};

#define OSC_TIMETAG_SIZEOF_NTP 8
#define OSC_TIMETAG_SIZEOF_PTP 16 // correct?

#define OSC_TIMETAG_FORMAT OSC_TIMETAG_NTP

#if OSC_TIMETAG_FORMAT == OSC_TIMETAG_NTP
typedef struct _osc_timetag_ntptime{
	uint32_t sec;
	uint32_t frac_sec;
} t_osc_timetag_ntptime;
#define OSC_TIMETAG_SIZEOF OSC_TIMETAG_SIZEOF_NTP
//typedef uint64_t t_osc_timetag;
typedef t_osc_timetag_ntptime t_osc_timetag;
//#define OSC_TIMETAG_NULL 0
#define OSC_TIMETAG_NULL (t_osc_timetag){0, 0}
#define OSC_TIMETAG_IMMEDIATE (t_osc_timetag){0, 1}
#elif OSC_TIMETAG_FORMAT == OSC_TIMETAG_PTP
#define OSC_TIMETAG_SIZEOF OSC_TIMETAG_SIZEOF_NTP
#else
#error Unrecognized timetag format in osc_timetag.h!
#endif

// conversions 
void osc_timetag_fromISO8601(char *s, t_osc_timetag *t);
long osc_timetag_format(char *buf, long n, t_osc_timetag t);

// operations
t_osc_timetag osc_timetag_add(t_osc_timetag t1, t_osc_timetag t2);
t_osc_timetag osc_timetag_subtract(t_osc_timetag t1, t_osc_timetag t2);
int osc_timetag_compare(t_osc_timetag t1, t_osc_timetag t2);

t_osc_timetag osc_timetag_floatToTimetag(double d);
double osc_timetag_timetagToFloat(t_osc_timetag timetag);

int osc_timetag_isImmediate(t_osc_timetag timetag);

// generation
t_osc_timetag osc_timetag_now(void);

t_osc_timetag osc_timetag_decodeFromHeader(char *buf);
void osc_timetag_encodeForHeader(t_osc_timetag t, char *buf);

uint32_t osc_timetag_ntp_getSeconds(t_osc_timetag t);
uint32_t osc_timetag_ntp_getFraction(t_osc_timetag t);

#endif

/**@}*/
