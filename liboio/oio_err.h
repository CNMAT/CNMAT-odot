#ifndef __OIO_ERR_H__
#define __OIO_ERR_H__

#include <libgen.h>

typedef unsigned long t_oio_err;
#define OIO_ERR_NONE 0
#define OIO_ERR_DNF 1
#define OIO_ERR_MEM 2
#define OIO_ERR_NOHID 3
#define OIO_ERR_CFTYPE 4
#define OIO_ERR_OSCBNDL 5
#define OIO_ERR_OSCMSG 6
#define OIO_ERR_OSCTAG 7
#define OIO_ERR_NOPROP 8
#define OIO_ERR_NOSERV 9

typedef void (*t_oio_error_handler)(char *, unsigned long, t_oio_err, char *);

#define OIO_ERROR(error_code) oio_error(basename(__FILE__), __LINE__, error_code, oio_err_getString(error_code))

char *oio_err_getString(t_oio_err error_code);
void oio_error(char *filename, unsigned long linenum, unsigned char error_code, char *errstr);
void oio_err_setErrorHandler(t_oio_error_handler eh);

#endif //__OIO_ERR_H__
