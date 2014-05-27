#if defined(_WIN32) && !defined(__CYGWIN__)
#ifndef __STRPTIME_H__
#define __STRPTIME_H__

char *strptime (const char *buf, const char *format, struct tm *timeptr);

#endif // __STRPTIME_H__
#endif
