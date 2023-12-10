#include "LuaWrapper.hpp"

using namespace std;

int LuaWrapper::loadFile(string& filename)
{
    int iErr = luaL_loadfile(L, filename.c_str() );
    if( !iErr )
    {
        std::cout << "loaded " << filename << std::endl;
        /*
         call lua file main which puts functions in global table
         */
        iErr = lua_pcall (L, 0, LUA_MULTRET, 0);
        if( iErr ){
            std::string err = "error evaluating file  " + filename + "\n";
            
            err += "lua error: ";
            err += lua_tostring(L, -1);
            error_cb(err);
            lua_pop(L, 1);
        }
    }
    else
    {
        std::string err = "error loading file " + filename;
        error_cb(err);
    }

    return iErr;
}


void LuaWrapper::callFunction(const char* fnName, int nargs, int nreturns )
{
    // Push the function name onto the stack
    // std::cout << "callFunction " << fnName << std::endl;
    lua_pushstring (L, fnName );
    lua_gettable (L, LUA_GLOBALSINDEX);
    lua_insert(L, -1 - nargs);
    if( lua_pcall (L, nargs, nreturns, 0) != 0 )
    {
        std::string err = "lua error: ";
        err += lua_tostring(L, -1);
        error_cb(err);
        lua_pop(L, 1);
    }
}

void LuaWrapper::evalString(const char* str)
{
    if( luaL_dostring(L, str) != 0 )
    {
        std::string err = "lua error: ";
        err += lua_tostring(L, -1);
        error_cb(err);
        lua_pop(L, 1);
    }
}


void LuaWrapper::setMetatable(const char* tableName)
{
    // assumes top of stack is table to bind metatable to
    lua_pushstring(L, tableName);
    lua_gettable(L, LUA_GLOBALSINDEX);
    lua_setmetatable(L, -2);
}


template <typename T>
void LuaWrapper::tableAddVector(const char* key, std::vector<T> vec)
{
    lua_pushstring(L, key ); // set osc address
    
    int len = vec.size();
    
    lua_createtable(L, len, 0); // array of values

    if constexpr ( std::is_same<T, std::string>::value )
    {
        for(int i = 0; i < len; i++)
        {
            lua_pushnumber(L, i+1); // key starts at 1
            lua_pushstring(L, vec[i] );
            lua_rawset(L, -3); // set indexed table to string address
        }
    }
    else
    {
        for(int i = 0; i < len; i++)
        {
            lua_pushnumber(L, i+1); // key starts at 1
            lua_pushnumber(L, vec[i] );
            lua_rawset(L, -3); // set indexed table to string address

        }

    }
        
    lua_rawset(L, -3); // points to array, and pops key and value

}

void LuaWrapper::bndl2table(t_osc_bndl_s *bndl)
{
    
    lua_newtable(L); // could count messages here, but just saving time for now
    
    // iter bundle messages
    auto it = osc_bndl_it_s_get( osc_bundle_s_getLen(bndl), osc_bundle_s_getPtr(bndl) );
    while(osc_bndl_it_s_hasNext(it))
    {
        t_osc_msg_s *m = osc_bndl_it_s_next(it);
        
        lua_pushstring(L, osc_message_s_getAddress(m) ); // set osc address

        int nargs = osc_message_s_getArgCount(m);
        
        if( nargs > 1 )
            lua_createtable(L, nargs, 0); // array of values

        int count = 1;

        // iter message atoms
        t_osc_msg_it_s *m_it = osc_msg_it_s_get(m);
        while(osc_msg_it_s_hasNext(m_it))
        {
            if( nargs > 1 )
                lua_pushnumber(L, count++); // key starts at 1

            t_osc_atom_s *at = osc_msg_it_s_next(m_it);
            
            switch (osc_atom_s_getTypetag( at ))
            {
                case 'd':
                case 'f':
                case 'c':
                case 'u':
                case 'i': // signed 32-bit int
                case 'h': // signed 64-bit int
                case 'C':
                case 'U':
                case 'I': // unsigned 32-bit int
                case 'H': // unsigned 64-bit int
                    lua_pushnumber(L, osc_atom_s_getDouble(at) );
                    break;
                case 's': // string
                    {
                        size_t strLen = osc_atom_s_getStringLen(at);
                        char *strPtr = NULL;
                        osc_atom_s_getString(at, strLen, &strPtr);
                        lua_pushstring(L, strPtr );
                        osc_mem_free(strPtr);
                        break;
                    }
                case 'T': // true
                    lua_pushboolean(L, 1);
                    break;
                case 'F': // false
                    lua_pushboolean(L, 0);
                    break;
                case 'N': // NULL
                    lua_pushnil(L);
                    break;
                case OSC_BUNDLE_TYPETAG:
                {
                    t_osc_bndl_s *sub = osc_atom_s_getBndl(at);
                    bndl2table( sub );
                    osc_bundle_s_free(sub);

                }
                    break;
                case OSC_TIMETAG_TYPETAG:
                    lua_pushnumber(L, osc_timetag_timetagToFloat( osc_atom_s_getTimetag(at) ) );
                    break;
                default:
                    lua_pushnil(L);
                    break;
            }
            if( nargs > 1 )
                lua_rawset(L, -3); // points to array, and pops key and value
        }
        
        lua_rawset(L, -3); // points to osc address table
        osc_msg_it_s_destroy(m_it);
    }
    
    osc_bndl_it_s_destroy(it);
}

void LuaWrapper::valToMsg(int index, t_osc_msg_u* msg)
{
    switch( lua_type(L, index) )
    {
        case LUA_TNUMBER:
            osc_message_u_appendDouble(msg, lua_tonumber(L, index) );
            break;
        case LUA_TSTRING:
            osc_message_u_appendString(msg, lua_tostring(L, index) );
            break;
        case LUA_TNIL:
            osc_message_u_appendNil(msg);
            break;
        case LUA_TTABLE:
        {
            t_osc_bndl_u* sub = table2bundle(false); // not poping table, since it get popped in this function below (still true in this helper func?)
            osc_message_u_appendBndl_u(msg, sub);
            break;
        }
        default:
            osc_message_u_appendString(msg, "unhandled_type" );
            break;
    }
}

string LuaWrapper::keyToAddr(int index)
{
    string addr;
    switch( lua_type(L, index) )
    {
        case LUA_TNUMBER:
            addr = "/" + to_string(lua_tonumber(L, index));
            break;
        case LUA_TSTRING:
        {
            addr = (char *)lua_tostring(L, -2); //note string memory is owned by lua
            if( !addr.starts_with("/") )
                addr = "/" + addr;
        }
            break;
        case LUA_TNIL:
            addr = "/~nil";
            break;
        default:
            addr = "/??";
            break;
    }
    return addr;
}

t_osc_bundle_u* LuaWrapper::table2bundle(bool poptable)
{
    t_osc_bundle_u* ret = osc_bundle_u_alloc();
    
    if( lua_type(L, -1) != LUA_TTABLE )
    {
        std::string err = "return table error: top of stack is not table";
        error_cb(err);
        return ret;
    }
    /* table is in the stack at index 't' */
    lua_pushnil(L);  /* first key */
    while (lua_next(L, -2) != 0) // note, might not be in the same order
    {
        if( lua_type(L, -1) == LUA_TTABLE )
        {
            string addr = keyToAddr(-2);
            t_osc_msg_u* msg = osc_message_u_allocWithAddress((char *)addr.c_str());
            
            size_t len = lua_objlen(L, -1);
//            printf("%s:\tobjlen:%ld\n", key, len);

            if( len > 0 )
            {
                // list of values with numeric indexes
                for( int i = 1; i < len+1; i++ ) // lua is 1 indexed
                {
                    lua_rawgeti(L, -1, i);
                    
                    valToMsg(-1, msg);
                    lua_pop(L,1);
                }
            }
            else
            {
                t_osc_bndl_u* sub = table2bundle(false); // not poping table, since it get popped in this function below
                osc_message_u_appendBndl_u(msg, sub);
            }
            
            osc_bundle_u_addMsg(ret, msg);
            

        }
        else
        {
            
            string addr = keyToAddr(-2);
            t_osc_msg_u* msg = osc_message_u_allocWithAddress((char *)addr.c_str());
            
            valToMsg(-1, msg);
            osc_bundle_u_addMsg(ret, msg);

        }
        
        /* removes 'value'; keeps 'key' for next iteration, for lua_next(L, -2) */
        lua_pop(L, 1);

    }
    
    if( poptable )
        lua_pop(L, 1); // << removes table from stack
    
    return ret;
}


void LuaWrapper::printstack(const char * tag)
{
    int top=lua_gettop(L);
    printf("[%s stack ]:\t", tag);

      for (int i=1; i <= top; i++) {
        //printf("%d\t%s\t", i, luaL_typename(L,i));
        switch (lua_type(L, i)) {
          case LUA_TNUMBER:
            printf("%g (number) \t",lua_tonumber(L,i));
            break;
          case LUA_TSTRING:
            printf("%s (string)\t",lua_tostring(L,i));
            break;
          case LUA_TBOOLEAN:
            printf("%s\t", (lua_toboolean(L, i) ? "true" : "false"));
            break;
          case LUA_TNIL:
            printf("%s\t", "nil");
            break;
          case LUA_TTABLE:
              printf("table\t");
                break;
        case LUA_TFUNCTION:
                printf("function\t");
                  break;
        default:
            printf("?\t"); // lua_topointer(L,i))
            break;
        }
      }
    printf("\n");
}
