#define OCOND
#if defined (OCOND)
#define OMAX_DOC_NAME "o.cond"
#define OMAX_DOC_SHORT_DESC "Route an OSC packet out an outlet based on the results of an expression."
#define OMAX_DOC_LONG_DESC "o.cond creates one outlet for each expression separated by a semicolon. The bundle will come out the outlet that corresponds to the first expression that evaluates to true or non-zero."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing addresses that the expression will be applied to."}
#define OMAX_DOC_SEEALSO (char *[]){"o.expr", "o.if", "o.when", "o.unless", "o.callpatch", "expr", "jit.expr"}
#endif

#include "../o.expr/o.expr.c"
