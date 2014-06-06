#ifndef O_EXPR_H
#define O_EXPR_H

#include <node.h>
#include <node_buffer.h>
#include <string>
#include "osc_expr.h"
#include "osc_expr_parser.h"
#include "osc_error.h"

class o_expr : public node::ObjectWrap {
  public:
    static void Init( v8::Handle< v8::Object > target );

  private:
    o_expr();
    ~o_expr();

    static v8::Handle< v8::Value > New( const v8::Arguments& args );
    static v8::Handle< v8::Value > set( const v8::Arguments& args );
    static v8::Handle< v8::Value > eval( const v8::Arguments& args );
    t_osc_expr* expression;
};

#endif