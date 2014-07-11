#define PAK
#ifdef PAK
#define OMAX_DOC_NAME "o.pak"
#define OMAX_DOC_SHORT_DESC "Bind data to addresses."
#define OMAX_DOC_LONG_DESC "o.pak takes a OSC addresses as arguments and creates an inlet for each one.  Anything sent into an inlet is bound to the corresponding address and the OSC packet is output with all other addresses bound to their most recent values."
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"o.pack", "pack", "pak"}
#endif

#include "../o.pack/o.pack.c"
