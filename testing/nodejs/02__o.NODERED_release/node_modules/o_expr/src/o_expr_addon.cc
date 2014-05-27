#include <node.h>
#include "o_expr.h"

using namespace v8;

void InitAll( Handle< Object > exports ) {
  o_expr::Init( exports );
}

NODE_MODULE( odot, InitAll )