#define OWHEN
#if defined (OWHEN)
#define OMAX_DOC_NAME "o.when"
#define OMAX_DOC_SHORT_DESC "Passes the bundle through if the result of the expression is true or non-zero"
#define OMAX_DOC_LONG_DESC "o.when behaves like o.if with only the left-most outlet (i.e. the \"then\" outlet)"
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing addresses that the expression will be applied to"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Input OSC packet if the expression returns true or non-zero"}
#define OMAX_DOC_SEEALSO (char *[]){"o.if", "o.cond", "o.unless", "o.expr.codebox", "expr", "jit.expr"}
#endif

#include "../o.expr/o.expr.c"
