#include "oio_osc_util.h"
#include "oio_obj.h"

void oio_osc_util_makenice(char *buf){
	int i, n = strlen(buf);
	for(i = 0; i < n; i++){
		switch(buf[i]){
		case ' ':
		case '/':
		case '*':
		case '?':
			buf[i] = '-';
			break;
		case '[':
			buf[i] = '(';
			break;
		case ']':
			buf[i] = ')';
			break;
		}
	}
}

// these have to be implemented...
uint64_t oio_osc_util_machAbsoluteToNTP(uint64_t ma){
	return ma;
}

uint64_t oio_osc_util_NTPToMachAbsolute(uint64_t ntp){
	return ntp;
}
