#pragma once

#include "lua.hpp"
#include "ext.h"

/*
 to do
 - handle different types for print func
    do that in lua probably
 - rename print func, rename api somehow?
 - add direct output handler like in js, output()
 - add file/line number to print function
    see https://stackoverflow.com/questions/2555856/current-line-number-in-lua
 - access to buffers? matrixes?
 
 */

extern "C" {

struct MaxAPIFuncStruct {
    void *max_object;
    void (*max_print)(void *x, const char *);
    int (*foo)(int a);
};

}

class LuaMaxFFI
{
public:
    
    // testing fuction in Lua
    static int foo(int a){
        return a + 1;
    }

    static void max_print(void *x, const char *str){
        object_post((t_object *)x, "%s\n", str);
    }
    
    LuaMaxFFI(){
        MaxAPI.foo = &foo;
        MaxAPI.max_print = &max_print;
    }
    
    ~LuaMaxFFI(){}
    
    void init(t_object *x, lua_State *L)
    {
        MaxAPI.max_object = x;
        lua_pushlightuserdata(L, &MaxAPI);
        lua_setglobal(L, "MaxAPIFuncStructPTR");
        
        const char* setupEval = R"(
            local ffi = require("ffi")

            ffi.cdef[[
            struct MaxAPIFuncStruct {
                void *max_object;
                void (*max_print)(void *x, const char *);
                int (*foo)(int a);
            };
            ]]

            MaxAPI = ffi.cast("struct MaxAPIFuncStruct *", MaxAPIFuncStructPTR)

            oluajit = oluajit or {}
            oluajit.max_print = function(str)
                local _str = type(str) == 'string' and str or tostring(str)
                local info = debug.getinfo(2, "Sl")
                _str = info.short_src .. ":" .. tostring(info.currentline) .. "\n" .. _str
                MaxAPI.max_print(MaxAPI.max_object, _str)
            end
        )";
        
        if( luaL_dostring(L, setupEval) != 0 )
        {
            object_error(x, "lua string evaluation error: ");
        }
    }

    
private:
    struct MaxAPIFuncStruct MaxAPI;

};
