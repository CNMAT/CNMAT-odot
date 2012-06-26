// need sprintf, sscanf
#include <stdio.h>
#include <stdlib.h>

// need math.h
#include <math.h>

// need strcmp
#include <string.h>

// need htonl
#ifdef WIN_VERSION
#include <Winsock.h>
#else
#include <arpa/inet.h>
#endif

#include <time.h>

// crossplatform gettimeofday
#include "contrib/timeval.h"

// this is for windows which doesn't have
// strptime
#ifdef WIN_VERSION
#include "contrib/strptime.h"
#endif

#include "osc.h"
#include "osc_byteorder.h"

// own header
#include "osc_timetag.h"

// add or subtract

void osc_timetag_add(ntptime* a, ntptime* b, ntptime* r) {
  
  if((a->sign == 1 && b->sign == 1) || (a->sign == -1 && b->sign == -1)) {
    
    r->sec = a->sec + b->sec;
    r->frac_sec = a->frac_sec + b->frac_sec;
    
    if(r->frac_sec < a->frac_sec) { // rollover occurred
      r->sec += 1;
    }
    
    r->sign = a->sign;
    
  } else if((a->sign == 1 && b->sign == -1)) {
    
    if(a->sec > b->sec || (a->sec == b->sec && a->frac_sec >= b->frac_sec)) {
      
      r->sec = a->sec - b->sec;
      r->sign = 1;
      
      if(a->frac_sec >= b->frac_sec) {
	r->frac_sec = a->frac_sec - b->frac_sec;
      } else {
	if(r->sec == 0) {
	  r->frac_sec = b->frac_sec - a->frac_sec;
	  r->sign = -1;
	} else {
	  r->sec--;
	  r->frac_sec = a->frac_sec - b->frac_sec;
	}
      }
      
      
    } else {
      
      r->sec = b->sec - a->sec;
      
      if(a->frac_sec >= b->frac_sec) {
	r->frac_sec = a->frac_sec - b->frac_sec;
      } else {
	r->frac_sec = b->frac_sec - a->frac_sec;
      }
      
      r->sign = -1;
      
    }
    
  } else { // a.sign == -1 and b.sign == 1...
    osc_timetag_add(b, a, r);
  }
  
  r->type = TIME_STAMP;
  
}

int osc_timetag_cmp(ntptime* a, ntptime* b) {
  
  if(a->sec < b->sec || (a->sec == b->sec && a->frac_sec < b->frac_sec)) {
    return -1;
  }
  
  if(a->sec > b->sec || (a->sec == b->sec && a->frac_sec > b->frac_sec)) {
    return 1;
  }
  
  return 0;
  
}

int osc_timetag_is_immediate(char *buf){
	int offset = 0;
	if(!(strcmp(buf, "#bundle"))){
		offset = 8;
	}
	if(*(unsigned long long *)(buf + offset) == 0x100000000000000LL){
		return 1;
	}else{
		return 0;
	}
}

// conversion functions

// timegm is not portable.

static void osc_timetag_setenv(const char *name, const char *value){
#if !(defined _WIN32) || defined HAVE_SETENV
  	setenv(name, value, 1);
#else
  	int len = strlen(name) + 1 + strlen(value) + 1;
  	char str[len];
  	sprintf(str, "%s=%s", name, value);
  	putenv(str);
#endif
}

static void osc_timetag_unsetenv(const char *name){
#if !(defined _WIN32) || defined HAVE_SETENV
	unsetenv(name);
#else
    	int len = strlen(name) + 2;
  	char str[len];
  	sprintf(str, "%s=", name);
  	putenv(str);
#endif
}

time_t osc_timetag_timegm (struct tm *tm) {
	time_t ret;
	char *tz;

	tz = getenv("TZ");
#ifdef WIN_VERSION
	osc_timetag_setenv("TZ", "UTC");
#else
	osc_timetag_setenv("TZ", "");
#endif
	tzset();
	ret = mktime(tm);
	if (tz)
		osc_timetag_setenv("TZ", tz);
	else
		osc_timetag_unsetenv("TZ");
	tzset();
	return ret;
}

void osc_timetag_iso8601_to_ntp(char* s, ntptime* n) {
  
    struct tm t;
    float sec;
    char s1[20];
    
    // read out the fractions part
    sscanf(s, "%*d-%*d-%*dT%*d:%*d:%fZ", &sec);
    
    // null-terminate the string
    strncat(s1, s, 19);

    // parse the time
    strptime(s1, "%Y-%m-%dT%H:%M:%S", &t);
    
    osc_timetag_ut_to_ntp(osc_timetag_timegm(&t), n);
    n->frac_sec = (unsigned long int)(fmod(sec, 1.0) * 4294967295.0);

    n->sign = 1;
}

void osc_timetag_ntp_to_iso8601(ntptime* n, char* s) {
  
    time_t i;
    struct tm* t;
    char s1[24];
    char s2[10];
    double d;
    
    i = (time_t)osc_timetag_ntp_to_ut(n);
    d = osc_timetag_ntp_to_float(n);
    t = gmtime(&i);
    
    strftime(s1, 24, "%Y-%m-%dT%H:%M:%S", t);
    sprintf(s2, "%05fZ", fmod(d, 1.0));
    sprintf(s, "%s.%s", s1, s2+2);
}

void osc_timetag_float_to_ntp(double d, ntptime* n) {

    double sec;
    double frac_sec;

    if(d > 0) {
      n->sign = 1;
    } else {
      d *= -1;
      n->sign = -1;
    }
    
    frac_sec = fmod(d, 1.0);
    sec = d - frac_sec;
    
    n->sec = (unsigned long int)(sec);
    n->frac_sec= (unsigned long int)(frac_sec * 4294967295.0);
    n->type = TIME_STAMP;
}

double osc_timetag_ntp_to_float(ntptime* n) {
  if(n->sign == 1) {
    return ((double)(n->sec)) + ((double)((unsigned long int)(n->frac_sec))) / 4294967295.0;
  } else {
    return -1. * (((double)(n->sec)) + (((double)((unsigned long int)(n->frac_sec))) / 4294967295.0));
  }
}

void osc_timetag_ut_to_ntp(long int ut, ntptime* n) {

    struct timeval tv;
    struct timezone tz;
    
    gettimeofday(&tv, &tz); // this is just to get the timezone...
    
    n->sec = (unsigned long)2208988800UL + 
            (unsigned long)ut - 
            (unsigned long)(60 * tz.tz_minuteswest) +
            (unsigned long)(tz.tz_dsttime == 1 ? 3600 : 0);

    n->frac_sec = 0;
}

long int osc_timetag_ntp_to_ut(ntptime* n) {

    struct timeval tv;
    struct timezone tz;
    
    gettimeofday(&tv, &tz); // this is just to get the timezone...
    
    return n->sec - (unsigned long)2208988800UL + (unsigned long)(60 * tz.tz_minuteswest) - (unsigned long)(tz.tz_dsttime == 1 ? 3600 : 0);
}

void osc_timetag_now_to_ntp(ntptime* n) {

    struct timeval tv;
    struct timezone tz;

    gettimeofday(&tv, &tz);
    
    n->sec = (unsigned long)2208988800UL + 
        (unsigned long) tv.tv_sec - 
        (unsigned long)(60 * tz.tz_minuteswest) +
        (unsigned long)(tz.tz_dsttime == 1 ? 3600 : 0);
    
    n->frac_sec = (unsigned long)(tv.tv_usec * 4295); // 2^32-1 / 1.0e6

    n->sign = 1;
}

int osc_timetag_get(long n, long ptr, ntptime *r){
	if(strcmp((char *)ptr, "#bundle") != 0) {
		r = NULL;
		return 1;
        }
	char *data = (char *)ptr;
	if(n < 16){
		r = NULL;
		return 1;
	}
	r->sec = ntoh32(*((unsigned long *)(data + 8)));
	r->frac_sec = ntoh32(*((unsigned long *)(data + 12)));
	r->sign = 1;
	r->type = TIME_STAMP;
	return 0;
}

int osc_timetag_set(long n, long ptr, ntptime *r){
	if(strcmp((char *)ptr, "#bundle") != 0) {
		r = NULL;
		return 1;
        }
	char *data = (char *)ptr;
	if(n < 16){
		r = NULL;
		return 1;
	}
	*(unsigned long *)(data + 8) = hton32(r->sec);
	*(unsigned long *)(data + 12) = hton32(r->frac_sec);
	return 0;
}
