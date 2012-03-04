#include "osc.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "osc_bundle_u.h"
#include "osc_parser.h"
#include "osc_scanner.h"

#include <CoreServices/CoreServices.h>
#include <mach/mach.h>
#include <mach/mach_time.h>
#include <unistd.h>


int main(int len, char **argv){
	//char *st = "/foo bar 1.34 bloo /car\n/bar 66.6 [\n/bloo foo [\n/man oh man\n]\n] poop \n";
	//char *st = "/foo bar 1.34 bloo /car\n/bar 990.2 [\n/bloo 78 aaa \n/goo 999 666.666\n] barf \n";
	//char *st = "/foo bar 1.34 bloo \n /bar 66.6 44 slew\n";
	//char *st = "/foo bar 1.34 bloo\n";
	char *st = "/foo bar 1.34 $2 /car\n/bar 66.6 [\n/bloo $1 [\n/$3 oh man\n]\n] poop \n";
	//char *st = "/foo bar 1.34 $2 /car\n/bar [\n/bloo $1\n]\n";
	/*
	char *st = "/0/hztrans	0	255	\n/0/microtrans	0	3921.568604	\n/0/rev	0.289389		\n/0/steps	58		\n/0/interp_incr	67.613251		\n/0/dur	111.764709		\n/0/direction	1		\n/1/hztrans	255	0	\n/1/microtrans	3921.568604	0	\n/1/rev	0.064309		\n/1/steps	13		\n/1/interp_incr	-301.659119		\n/1/dur	27.450981		\n/1/direction	1		\n/2/hztrans	0	132.5	\n/2/microtrans	0	7547.169922	\n/2/rev	0.771704		\n/2/steps	154		\n/2/interp_incr	49.007595		\n/2/dur	577.358521		\n/2/direction	1		\n/3/hztrans	132.5	293.28125	\n/3/microtrans	7547.169922	3409.696289	\n/3/rev	0.128617		\n/3/steps	26		\n/3/interp_incr	-159.133606		\n/3/dur	144.507996		\n/3/direction	1		\n/4/hztrans	293.28125	247.34375	\n/4/microtrans	3409.696289	4042.956299	\n/4/rev	0.514469		\n/4/steps	103		\n/4/interp_incr	6.148155		\n/4/dur	383.494995		\n/4/direction	1		\n/5/hztrans	247.34375	438.75	\n/5/microtrans	4042.956299	2279.202393	\n/5/rev	0.032154		\n/5/steps	6		\n/5/interp_incr	-293.958984		\n/5/dur	19.848354		\n/5/direction	1		\n/6/hztrans	438.75	216.71875	\n/6/microtrans	2279.202393	4614.275391	\n/6/rev	0.482315		\n/6/steps	96		\n/6/interp_incr	24.323677		\n/6/dur	329.719421		\n/6/direction	1		\n/7/hztrans	216.71875	109.53125	\n/7/microtrans	4614.275391	9129.814453	\n/7/rev	0.064309		\n/7/steps	13		\n/7/interp_incr	347.349152		\n/7/dur	87.078819		\n/7/direction	1		\n/8/hztrans	109.53125	101.875	\n/8/microtrans	9129.814453	9815.951172	\n/8/rev	0.321544		\n/8/steps	64		\n/8/interp_incr	10.720886		\n/8/dur	605.921448		\n/8/direction	1		\n/9/hztrans	101.875	262.65625	\n/9/microtrans	9815.951172	3807.257568	\n/9/rev	0.128617		\n/9/steps	26		\n/9/interp_incr	-231.103592		\n/9/dur	180.106079		\n/9/direction	1		\n/10/hztrans	262.65625	500	\n/10/microtrans	3807.257568	2000	\n/10/rev	0.643087		\n/10/steps	129		\n/10/interp_incr	-14.009748		\n/10/dur	375.471771		\n/10/direction	1		\n/11/hztrans	500	209.0625	\n/11/microtrans	2000	4783.258789	\n/11/rev	0.257235		\n/11/steps	51		\n/11/interp_incr	54.5737		\n/11/dur	171.581482		\n/11/direction	1		\n/12/hztrans	209.0625	40.625	\n/12/microtrans	4783.258789	24615.384766	\n/12/rev	0.578778		\n/12/steps	116		\n/12/interp_incr	170.966599		\n/12/dur	1695.205322		\n/12/direction	1		\n/13/hztrans	40.625	285.625	\n/13/microtrans	24615.384766	3501.093994	\n/13/rev	0.064308		\n/13/steps	13		\n/13/interp_incr	-1624.17627		\n/13/dur	193.314255		\n/13/direction	1		\n/14/hztrans	285.625	63.59375	\n/14/microtrans	3501.093994	15724.81543	\n/14/rev	0.321544		\n/14/steps	64		\n/14/interp_incr	190.995651		\n/14/dur	609.117249		\n/14/direction	1		\n/15/hztrans	63.59375	469.375	\n/15/microtrans	15724.81543	2130.492676	\n/15/rev	0.289389		\n/15/steps	58		\n/15/interp_incr	-234.384872		\n/15/dur	524.601135		\n/15/direction	1		\n/16/hztrans	469.375	408.125	\n/16/microtrans	2130.492676	2450.229736	\n/16/rev	0.482315		\n/16/steps	96		\n/16/interp_incr	3.330594		\n/16/dur	219.714813		\n/16/direction	1		\n/17/hztrans	408.125	40.625	\n/17/microtrans	2450.229736	24615.384766	\n/17/rev	0.418006		\n/17/steps	84		\n/17/interp_incr	263.87088		\n/17/dur	1125.673218		\n/17/direction	1		\n/18/hztrans	40.625	216.71875	\n/18/microtrans	24615.384766	4614.275391	\n/18/rev	0.064309		\n/18/steps	13		\n/18/interp_incr	-1538.546875		\n/18/dur	199.993362		\n/18/direction	1		\n/19/hztrans	216.71875	86.5625	\n/19/microtrans	4614.275391	11552.34668	\n/19/rev	0.22508		\n/19/steps	45		\n/19/interp_incr	154.179367		\n/19/dur	360.279968		\n/19/direction	1		\n/20/hztrans	86.5625	232.03125	\n/20/microtrans	11552.34668	4309.76416	\n/20/rev	0.353698		\n/20/steps	71		\n/20/interp_incr	-102.008202		\n/20/dur	566.726257		\n/20/direction	1		\n/21/hztrans	232.03125	86.5625	\n/21/microtrans	4309.76416	11552.34668	\n/21/rev	0.032154		\n/21/steps	6		\n/21/interp_incr	1207.097046		\n/21/dur	43.965042		\n/21/direction	1		\n/22/hztrans	86.5625	0	\n/22/microtrans	11552.34668	0	\n/22/rev	0.643087		\n/22/steps	129		\n/22/interp_incr	-89.553078		\n/22/dur	750.902527		\n/22/direction	1		\n/23/hztrans	0	0	\n/23/microtrans	0	0	\n/23/rev	0.192926		\n/23/steps	39		\n/23/interp_incr	0		\n/23/dur	0		\n/23/direction	1		\n/24/hztrans	0	308.59375	\n";
/24/microtrans	0	3240.506348	\n
/24/rev	0		\n
/24/steps	0		\n
/24/interp_incr	0		\n
/24/dur	0		\n
/24/direction	1		\n
/25/hztrans	308.59375	0	\n
/25/microtrans	3240.506348	0	\n
/25/rev	0.096463		\n
/25/steps	19		\n
/25/interp_incr	-170.552963		\n
/25/dur	32.405064		\n
/25/direction	1		\n
/26/hztrans	0	262.65625	\n
/26/microtrans	0	3807.257568	\n
/26/rev	0.675241		\n
/26/steps	135		\n
/26/interp_incr	28.201908		\n
/26/dur	255.086273		\n
/26/direction	1		\n
/27/hztrans	262.65625	117.1875	\n
/27/microtrans	3807.257568	8533.333008	\n
/27/rev	0.064308		\n
/27/steps	13		\n
/27/interp_incr	363.54425		\n
/27/dur	77.850807		\n
/27/direction	1		\n
/28/hztrans	117.1875	170.78125	\n
/28/microtrans	8533.333008	5855.443848	\n
/28/rev	0.160772		\n
/28/steps	32		\n
/28/interp_incr	-83.684036		\n
/28/dur	231.559387		\n
/28/direction	1		\n
/29/hztrans	170.78125	0	\n
/29/microtrans	5855.443848	0	\n
/29/rev	1.414791		\n
/29/steps	283		\n
/29/interp_incr	-20.690615		\n
/29/dur	831.473022		\n
/29/direction	1		\n
/30/hztrans	0	500	\n
/30/microtrans	0	2000	\n
/30/rev	0.225081		\n
/30/steps	45		\n
/30/interp_incr	44.444443		\n
/30/dur	44		\n
/30/direction	1		\n";*/
	printf("parsing string: \n");
	printf("%s\n", st);
	t_osc_bndl_u *bndl = NULL;
	t_osc_parser_subst *substitutions = NULL;

	uint64_t        start;
	uint64_t        end;
	uint64_t        elapsed;
	Nanoseconds     elapsedNano;

	// Start the clock.

	start = mach_absolute_time();

	printf("parse string\n");
	long nsubs = 0;
	osc_parser_parseString(strlen(st), st, &bndl, &nsubs, &substitutions);
	printf("done\n");
	end = mach_absolute_time();

	// Calculate the duration.

	elapsed = end - start;

	// Convert to nanoseconds.

	// Have to do some pointer fun because AbsoluteToNanoseconds 
	// works in terms of UnsignedWide, which is a structure rather 
	// than a proper 64-bit integer.

	elapsedNano = AbsoluteToNanoseconds( *(AbsoluteTime *) &elapsed );
	printf("%f\n", *(uint64_t *)&elapsedNano * 10e-6);

	/*
	long len_s = 0;
	osc_bundle_getLen_s(bndl, &len_s);
	char bndl_s[len_s];
	osc_bundle_serializeWithBuffer(bndl, bndl_s);
	char *fmt = NULL;
	long fmtlen = 0, bufpos = 0;
	osc_bundle_formatBndl(len_s, bndl_s, &fmtlen, &bufpos, &fmt);
	*/
        long bufpos = 0;
	char *buf = NULL;
	printf("format %p\n", bndl);
	osc_bundle_u_format(bndl, &bufpos, &buf);
	printf("done\n");
	printf("%s", buf);
	//printf("%s", fmt);
}
