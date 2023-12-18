#pragma once

#include <string>
#include <iostream>
#include <chrono>
#include "lua.hpp"

#include "osc.h"

#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_mem.h"

class LuaWrapper
{
public:
    
    LuaWrapper()
    {
        L = lua_open();
        luaL_openlibs(L);
    }
    
    ~LuaWrapper()
    {
        lua_close(L);
    }
    
    inline void reset()
    {
        lua_close(L);
        L = lua_open();
        luaL_openlibs(L);
    }
    
    int loadFile(std::string& filename);
    inline int loadFile(const char* filename){
        std::string filestring(filename);
        return loadFile(filestring);
    }
    
    void callFunction(const char* fnName, int nargs = 0, int nreturns = 0 );
    inline void callFunction(std::string& fnName, int nargs = 0, int nreturns = 0 ){
        callFunction(fnName.c_str(), nargs, nreturns);
    }
    
    void evalString(const char* str);

    inline void garbageCollection(){
        lua_gc(L, LUA_GCCOLLECT, 0);
    }
    void bndl2table(t_osc_bndl_s *bndl);
    void bndl2table(long len, char *ptr);

    void valToMsg(int index, t_osc_msg_u* msg);
    std::string keyToAddr(int index);
    
    // assumes table is top of stack >>
    t_osc_bundle_u *table2bundle(bool poptable = true);
    
   
    template <typename T>
    void tableAddVector(const char* key, std::vector<T> vec);
    
    template <typename T>
    inline void tableAddVector(std::string key, std::vector<T> vec){
        tableAddVector(key.c_str(), vec);
    }
    
    // assumes top of stack is table to bind metatable to
    void setMetatable(const char* tableName);
    inline void setMetatable(std::string tableName){
        setMetatable(tableName.c_str());
    }

    void setErrorCallback( std::function<void(std::string&)> fn )
    {
        error_cb = fn;
    }
    
    void printstack(const char * tag = "");

    lua_State* ptr(){ return L; }
    
    void printError(const char *msg = nullptr);
   

private:

    lua_State *L = NULL;
    void * parentRef = nullptr;
    std::function<void(std::string&)> error_cb = [](std::string& errStr){ printf("%s\n", errStr.c_str() ); };
    
};
