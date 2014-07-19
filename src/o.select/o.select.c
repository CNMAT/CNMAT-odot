#define SELECT
#ifdef SELECT
#define OMAX_DOC_NAME "o.select"
#define OMAX_DOC_SHORT_DESC "Dispatch OSC messages according to an address hierarchy preserving the address"
#define OMAX_DOC_LONG_DESC "o.select does pattern matching on addresses contained in OSC packets.  All messages in a bundle with addresses that match an address specified as an argument to o.select are bundled together and sent out the corresponding outlet with their addresses kept intact."
#define OMAX_DOC_SEEALSO (char *[]){"o.route", "o.atomize", "OSC-route", "route", "routepass"}
#endif
#include "../o.route/o.route.c"
