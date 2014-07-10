#define ATOMIZE
#ifdef ATOMIZE
#define OMAX_DOC_NAME "o.atomize"
#define OMAX_DOC_SHORT_DESC "Dispatch OSC messages according to an address hierarchy and convert them to Max messages."
#define OMAX_DOC_SEEALSO (char *[]){"o.route", "o.select", "OSC-route", "OpenSoundControl", "route"}
#define OMAX_DOC_LONG_DESC "o.atomize does pattern matching on addresses contained in OSC packets.  All messages in a bundle with addresses that match an address specified as an argument to o.atomize are bundled together and sent out the corresponding outlet with their addresses kept in tact and as Max messages.  With no arguments, o.atomize simply iterates over the messages in a bundle sending them out as Max messages."
#endif
#include "../o.route/o.route.c"
