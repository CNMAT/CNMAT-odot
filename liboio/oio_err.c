#include "oio_err.h"
#include <stdio.h>

char *const oio_errstr[] = {
	"",
	"Device not found",
	"Out of memory",
	"Couldn't get a HID Manager Ref",
	"Couldn't convert a CFType to a C type",
	"Bad OSC bundle",
	"Bad OSC message",
	"Unrecognized OSC type tag",
	"Couldn't look up property",
	"IOServiceMatching returned NULL"
};

t_oio_error_handler oio_error_handler;

char *oio_err_getString(unsigned long error_code){
	return oio_errstr[error_code];
}

void oio_error(char *filename, unsigned long linenum, unsigned char error_code, char *errstr){
	if(oio_error_handler){
		oio_error_handler(filename, linenum, error_code, errstr);
	}else{
		printf("%s(%lu): %s (%c)\n", filename, linenum, errstr, error_code);
	}
}

void oio_err_setErrorHandler(t_oio_error_handler eh){
	oio_error_handler = eh;
}
