#define OIF
#if defined (OIF)
#define OMAX_DOC_NAME "o.if"
#define OMAX_DOC_SHORT_DESC "Route an OSC packet based on the results of an expression."
#define OMAX_DOC_LONG_DESC "o.if routs the incoming bundle out the left outlet if the result of the expression is true or non-zero, and out the right outlet otherwise."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing addresses that the expression will be applied to."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Input OSC FullPacket if the expression returns true or non-zero", "Input OSC FullPacket if the expression returns false or zero"}
#define OMAX_DOC_SEEALSO (char *[]){"o.expr", "o.cond", "o.when", "o.unless", "o.callpatch", "expr", "jit.expr"}
#endif

#include "../o.expr/o.expr.c"
