#define OUNLESS
#if defined (OUNLESS)
#ifdef OMAX_PD_VERSION
#define OMAX_DOC_NAME "ounless"
#else
#define OMAX_DOC_NAME "o.unless"
#endif
#define OMAX_DOC_SHORT_DESC "Passes the bundle through if the result of the expression is false or zero."
#define OMAX_DOC_LONG_DESC "o.unless behaves like o.if with only the right-most outlet (i.e. the \"else\" outlet)."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing addresses that the expression will be applied to."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Input OSC packet if the expression returns false or zero."}
#define OMAX_DOC_SEEALSO (char *[]){"o.if", "o.cond", "o.when", "o.expr", "expr", "jit.expr"}
#endif

#include "../o.expr/o.expr.c"
