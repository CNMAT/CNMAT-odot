#include "osc_match.h"
#include <stdio.h>
#include <string.h>

typedef struct _test{
	char *pattern;
	char *address;
	int return_code;
	int pmatch_len;
	int amatch_len;
} t_test;

#define FULLMATCH OSC_MATCH_ADDRESS_COMPLETE | OSC_MATCH_PATTERN_COMPLETE

#define E_WRONG_RET_VAL 1
#define E_P_TOO_LONG 2
#define E_P_TOO_SHORT 4
#define E_A_TOO_LONG 8
#define E_A_TOO_SHORT 16

t_test testar[] = {
	{"/wessel", "/wessel", FULLMATCH, 7, 7},
	{"/wesse?", "/wessel", FULLMATCH, 7, 7},
	{"/we?sel", "/wessel", FULLMATCH, 7, 7},
	{"/?essel", "/wessel", FULLMATCH, 7, 7},
	{"/?e?sel", "/wessel", FULLMATCH, 7, 7},
	{"/??????", "/wessel", FULLMATCH, 7, 7},
	{"/[wv]essel", "/wessel", FULLMATCH, 10, 7},
	{"/[a-z]essel", "/wessel", FULLMATCH, 11, 7},
	{"/we[as]sel", "/wessel", FULLMATCH, 10, 7},
	{"/[wv]e[as]sel", "/wessel", FULLMATCH, 13, 7},
	{"/[!a-uxyz]essel", "/wessel", FULLMATCH, 15, 7},
	{"/{w,v}essel", "/wessel", FULLMATCH, 11, 7},
	{"/we{a,s}sel", "/wessel", FULLMATCH, 11, 7},
	{"/{w,v}e{a,s}sel", "/wessel", FULLMATCH, 15, 7},
	{"/{wes,wea}sel", "/wessel", FULLMATCH, 13, 7},
	{"/{wessel,weasel,vessel}", "/wessel", FULLMATCH, 23, 7},
	{"/*", "/wessel", FULLMATCH, 2, 7},
	{"/w*", "/wessel", FULLMATCH, 3, 7},
	{"/*sel", "/wessel", FULLMATCH, 5, 7},
	{"/*ss*", "/wessel", FULLMATCH, 5, 7},
	{"/*ss*l", "/wessel", FULLMATCH, 6, 7},
	{"/*e?*l", "/wessel", FULLMATCH, 6, 7}
};

int main(int argc, char **argv)
{
	int numtests = sizeof(testar) / sizeof(t_test);
	int numfailures = 0;
	for(int i = 0; i < numtests; i++){
		t_test t = testar[i];
		int po = 0, ao = 0;
		int ret = osc_match(t.pattern, t.address, &po, &ao);
		if(ret != t.return_code || po != t.pmatch_len || ao != t.amatch_len){
			printf("FAIL:  osc_match(%s, %s)\n", testar[i].pattern, testar[i].address);
			numfailures++;
			if(ret != t.return_code){
				printf("expected return value of %d but got %d\n", t.return_code, ret);
			}else{
				if(po != t.pmatch_len){
					printf("expected pattern to match %d chars but it matched %d\n", po, t.pmatch_len);
				}else if(ao != t.amatch_len){
					printf("expected address to match %d chars but it matched %d\n", ao, t.amatch_len);
				}
			}
		}else{
			printf("PASS:  osc_match(%s, %s)\n", testar[i].pattern, testar[i].address);
		}
	}
	printf("%d/%d tests passed\n", numtests - numfailures, numtests);
	return 0;
}
