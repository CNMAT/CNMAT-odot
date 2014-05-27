/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011-12, The Regents of
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
*/

/** 	\file osc_profile.h
	\author John MacCallum

*/

#ifndef __OSC_PROFILE_H__
#define __OSC_PROFILE_H__

#ifdef __cplusplus
extern "C" {
#endif

#if defined(__i386__) || defined(__X86__)

#include <unistd.h>
//#define RDTSC_CYCLES_PER_SECOND 2.261E09

inline unsigned long long osc_profile_rdtsc(void){
	unsigned hi, lo;
	__asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
	return ( (unsigned long long)lo)|( ((unsigned long long)hi)<<32 );
}

inline double osc_profile_getTime(){
	//output time in seconds
	unsigned long long tsc;
	tsc = osc_profile_rdtsc();
	return (double)tsc;
}

inline double osc_profile_getCyclesPerSecond(){
	double t1 = osc_profile_getTime();
        usleep(1000000);
        double t2 = osc_profile_getTime();
	//printf("%f - %f = %f (%f, %f)\n", t2, t1, t2 - t1, (t2 - t2) / 1000000., floor((t2 - t1) / 1000000.) * 1000000.);
	double cps = (t2 - t1);//floor((t2 - t1) / 10000000.) * 10000000.;
        return cps;
}

#ifdef __OSC_PROFILE__
static double osc_profile_rdtsc_cps = 0;
#define OSC_PROFILE_TIMER_START(varname) int varname##_line_start = __LINE__;	\
	if(osc_profile_rdtsc_cps == 0){\
		osc_profile_rdtsc_cps = osc_profile_getCyclesPerSecond(); \
	}\
	double varname##_start = osc_profile_getTime()

#define OSC_PROFILE_TIMER_STOP(varname) int varname##_line_stop = __LINE__;	\
	double varname##_stop = osc_profile_getTime()

#define OSC_PROFILE_TIMER_PRINTF(varname) printf("%s time elapsed: %f\" (%f ms).  (%s:%d--%d)\n", #varname, (varname##_stop - varname##_start) / osc_profile_rdtsc_cps, ((varname##_stop - varname##_start) / osc_profile_rdtsc_cps) * 1000, __PRETTY_FUNCTION__, varname##_line_start, varname##_line_stop);
#define OSC_PROFILE_TIMER_SNPRINTF(varname, bufname) char bufname [128]; snprintf(bufname, 128, "%s time elapsed: %f\" (%f ms).  (%s:%d--%d)", #varname, varname##_stop - varname##_start, (varname##_stop - varname##_start) / 1000., __PRETTY_FUNCTION__, varname##_line_start, varname##_line_stop);
#else
#define OSC_PROFILE_TIMER_START(varname)
#define OSC_PROFILE_TIMER_STOP(varname)
#define OSC_PROFILE_TIMER_PRINTF(varname)
#define OSC_PROFILE_TIMER_SNPRINTF(varname, bufname)
#endif

#else
// not on i386 or x86
#define OSC_PROFILE_TIMER_START(varname)
#define OSC_PROFILE_TIMER_STOP(varname)
#define OSC_PROFILE_TIMER_PRINTF(varname)
#define OSC_PROFILE_TIMER_SNPRINTF(varname, bufname)
#endif

#ifdef __cplusplus
}
#endif

#endif //  __OSC_PROFILE_H__
