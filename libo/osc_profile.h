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

#include <unistd.h>

//#define RDTSC_CYCLES_PER_SECOND 2.261E09

static __inline__ unsigned long long osc_profile_rdtsc(void){
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
	double cps = floor((t2 - t1) / 10000000.) * 10000000.;
        return cps;
}

#ifdef __OSC_PROFILE__
#define RDTSC_CYCLES_PER_SECOND osc_profile_getCyclesPerSecond();
#define TIMER_START(varname, rdtsc_cps) int varname##_line_start = __LINE__;	\
	double varname##_start = osc_profile_getTime() / rdtsc_cps

#define TIMER_STOP(varname, rdtsc_cps) int varname##_line_stop = __LINE__;	\
	double varname##_stop = osc_profile_getTime() / rdtsc_cps

#define TIMER_PRINTF(varname) printf("%s time elapsed: %f\" (%f ms).  (%s:%d--%d)\n", #varname, varname##_stop - varname##_start, (varname##_stop - varname##_start) * 1000., __PRETTY_FUNCTION__, varname##_line_start, varname##_line_stop);
#define TIMER_SNPRINTF(varname, bufname) char bufname [128]; snprintf(bufname, 128, "%s time elapsed: %f\" (%f ms).  (%s:%d--%d)", #varname, varname##_stop - varname##_start, (varname##_stop - varname##_start) * 1000., __PRETTY_FUNCTION__, varname##_line_start, varname##_line_stop);
#else
#define RDTSC_CYCLES_PER_SECOND 0
#define TIMER_START(varname, rdtsc_cps)
#define TIMER_STOP(varname, rdtsc_cps)
#define TIMER_PRINTF(varname)
#define TIMER_SNPRINTF(varname, bufname)
#endif

#ifdef __cplusplus
}
#endif

#endif //  __OSC_PROFILE_H__
