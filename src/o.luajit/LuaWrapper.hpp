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
    
    void evalString(const char* str);

    void callFunction(const char* fnName, int nargs = 0, int nreturns = 0 );
    inline void callFunction(std::string& fnName, int nargs = 0, int nreturns = 0 ){
        callFunction(fnName.c_str(), nargs, nreturns);
    }
    
    inline void clearStack(){ lua_settop(L, 0); }
    inline void garbageCollection(){ lua_gc(L, LUA_GCCOLLECT, 0); }
    
    void bndl2table(long len, char *ptr);
    inline void bndl2table(t_osc_bndl_s *bndl){
        bndl2table( osc_bundle_s_getLen(bndl), osc_bundle_s_getPtr(bndl) );
    }

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
   

    std::string getSerializedString();
    void serializeIntoBuffer(char *ptr, size_t size, bool poptable = true );
    int32_t serializeItem(char *ptr, char *ttptr, int index);

    int32_t getSerializedSizeInBytes(bool inList = false);
    int32_t getElementSizeInBytes(int index, bool inList = false);
    int32_t serializeValueForKey( char *buf, size_t remaining_size, const char * address, int index  );

    void inputOSC( long len, char * ptr );
    
private:

    lua_State *L = NULL;
    void * parentRef = nullptr;
    std::function<void(std::string&)> error_cb = [](std::string& errStr){ printf("%s\n", errStr.c_str() ); };
  
    bool valid = true;
    

};

