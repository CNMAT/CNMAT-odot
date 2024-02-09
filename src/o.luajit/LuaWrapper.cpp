#include "LuaWrapper.hpp"


using namespace std;

// stack is already unwound when pcall is finished, so to get full error report
// we will have to push a c callback function to the stack and point to it with pcall
void LuaWrapper::printError(const char *msg)
{
    std::string err = "lua error: ";
    if(msg)
        err = string(msg);
        
    err += lua_tostring(L, -1); // error string (note, only call this fuction if there is an error!)
    error_cb(err);

    lua_remove(L, -1); // Remove error/"msg" from stack.
}

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
            printError(err.c_str());
        }
    }
    else
    {
        std::string err = "error loading file " + filename;
        printError(err.c_str());
    }

    return iErr;
}

static int pcall_error_handler(lua_State *L)
{
    const char * msg = lua_tostring(L, -1);
    luaL_traceback(L, L, msg, 2); // pushes trace to stack, retreaved in printError()
    return 1;
};

void LuaWrapper::callFunction(const char* fnName, int nargs, int nreturns )
{
    // usage: args should be already on top of stack
    
    // Push the function name onto the stack before the args
    lua_pushstring (L, fnName );
    lua_gettable (L, LUA_GLOBALSINDEX);
    lua_insert(L, -1 - nargs);

    lua_pushcfunction( L, pcall_error_handler );
    // move it before function and arguments
    lua_insert( L, -2 - nargs );

    if( lua_pcall (L, nargs, nreturns, -2 - nargs) != 0 )
    {
        printError();
    }
    
    // function is still on stack here, but we wait to pop it until
    // after the return value has been retreaved.
    // caller should next call clearStack() after getting the return value via table2bundle()
}

void LuaWrapper::evalString(const char* str)
{
    if( luaL_dostring(L, str) != 0 )
    {
        printError("lua string evaluation error: ");
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

void LuaWrapper::bndl2table(long len, char* ptr)
{
    lua_newtable(L); // could count messages here, but just saving time for now
    
    // iter bundle messages
    auto it = osc_bndl_it_s_get( len, ptr );
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
            if( nargs == 0 )
                printf("this shouldn't happen %s nargs %d\n", osc_message_s_getAddress(m), nargs);
            
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
        
        if( nargs == 0 )
            lua_pushnil(L);

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
        {
            /*
            double f = lua_tonumber(L, index);
            if( f == (int32_t)f )
                osc_message_u_appendInt32(msg, (int32_t)f);
            else
                osc_message_u_appendDouble(msg, f );
            */
            
            // all numbers are doubles for now, but addresses are checked for ints
            osc_message_u_appendDouble(msg, lua_tonumber(L, index) );
        }
            
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
        case LUA_TBOOLEAN:
            osc_message_u_appendBool(msg, lua_toboolean(L, index) );
            break;
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
        {
            double f = lua_tonumber(L, index);
            if( f == (long)f )
                addr = "/" + to_string((long)f);
            else
            {
                addr = "/" + to_string(f);
                std::size_t found = addr.find_last_not_of("0");
                if (found!=std::string::npos)
                    addr.erase(found+1);
            }
                
        }
            break;
        case LUA_TSTRING:
        {
            addr = string( (const char *)lua_tostring(L, index) ); //note string memory is owned by lua
            if( !addr.starts_with("/") ){
                addr = "/" + addr;
            }
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
    
   // printf("size %ld\n", getSerializedSizeInBytes() );
    
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


/**
 libo utills
 */
#define OSC_HEADER_SIZE 16 // bundle\0 + 8 byte timetag.
#define OSC_IDENTIFIER "#bundle\0"
#define OSC_IDENTIFIER_SIZE 8
#define OSC_EMPTY_HEADER "#bundle\0\0\0\0\0\0\0\0\0"

#define OSC_ID OSC_IDENTIFIER
#define OSC_ID_SIZE OSC_IDENTIFIER_SIZE



#define OSC_BYTE_SWAP16(x) \
    ((((x) & 0xff00) >> 8) | \
     (((x) & 0x00ff) << 8))

#define OSC_BYTE_SWAP32(x) \
    ((((x) & 0xff000000) >> 24) | \
     (((x) & 0x00ff0000) >> 8) | \
     (((x) & 0x0000ff00) << 8) | \
     (((x) & 0x000000ff) << 24))

#define OSC_BYTE_SWAP64(x) \
    ((((x) & 0xff00000000000000LL) >> 56) | \
     (((x) & 0x00ff000000000000LL) >> 40) | \
     (((x) & 0x0000ff0000000000LL) >> 24) | \
     (((x) & 0x000000ff00000000LL) >> 8)  | \
     (((x) & 0x00000000ff000000LL) << 8)  | \
     (((x) & 0x0000000000ff0000LL) << 24) | \
     (((x) & 0x000000000000ff00LL) << 40) | \
     (((x) & 0x00000000000000ffLL) << 56))

#define OSC_BYTE_SWAP128(x) \
    (uint128_t){OSC_BYTE_SWAP64(((x).l2)), OSC_BYTE_SWAP64(((x).l1))}

#ifdef BYTE_ORDER
#define OSC_BYTE_ORDER BYTE_ORDER
#else
#ifdef __BYTE_ORDER
#define OSC_BYTE_ORDER __BYTE_ORDER
#endif
#endif

#ifdef LITTLE_ENDIAN
#define OSC_LITTLE_ENDIAN LITTLE_ENDIAN
#else
#ifdef __LITTLE_ENDIAN
#define OSC_LITTLE_ENDIAN __LITTLE_ENDIAN
#endif
#endif

// need to handle the case where these are not defined

#if OSC_BYTE_ORDER == OSC_LITTLE_ENDIAN
#define hton16(x) OSC_BYTE_SWAP16(x)
#define ntoh16(x) OSC_BYTE_SWAP16(x)
#define hton32(x) OSC_BYTE_SWAP32(x)
#define ntoh32(x) OSC_BYTE_SWAP32(x)
#define hton64(x) OSC_BYTE_SWAP64(x)
#define ntoh64(x) OSC_BYTE_SWAP64(x)
#define hton128(x) OSC_BYTE_SWAP128(x)
#define ntoh128(x) OSC_BYTE_SWAP128(x)

#define htonf32(x) OSC_BYTE_SWAP32(*((uint32_t *)&x))
#define ntohf32(x) OSC_BYTE_SWAP32(*((uint32_t *)&x))
#define htonf64(x) OSC_BYTE_SWAP64(*((uint64_t *)&x))
#define ntohf64(x) OSC_BYTE_SWAP64(*((uint64_t *)&x))

#else

#define hton16(x) (x)
#define ntoh16(x) (x)
#define hton32(x) (x)
#define ntoh32(x) (x)
#define hton64(x) (x)
#define ntoh64(x) (x)
#define hton128(x) (x)
#define ntoh128(x) (x)

#define htonf32(x) (x)
#define ntohf32(x) (x)
#define htonf64(x) (x)
#define ntohf64(x) (x)

#endif

size_t osc_util_getPaddedStringLen(char *s)
{
    if(!s){
        return 0;
    }
    size_t n = strlen(s);
    n = (n + 4) & 0xfffffffc;
    return n;
}

size_t osc_util_getPaddedStringLen(const string& s)
{
    size_t n = s.length();
    n = (n + 4) & 0xfffffffc;
    return n;
}


size_t osc_util_getPaddingForNBytes(size_t n)
{
    return (n + 4) & 0xfffffffc;
}

void LuaWrapper::inputOSC( long len, char * ptr )
{

    lua_newtable(L); // could count messages here, but just saving time for now

    string buf(ptr, len);
    long _n = OSC_HEADER_SIZE;

    while( _n < len )
    {
        size_t msg_size = ntoh32(*((int32_t *)(ptr + _n)));

        size_t addr_start = _n + 4;
        size_t addr_end = buf.find_first_of('\0', addr_start);
        string addr = buf.substr(addr_start, addr_end-addr_start);

        lua_pushstring(L, addr.c_str() ); // set osc address

        size_t typetags_start = addr_start + osc_util_getPaddedStringLen(addr);
        size_t typetags_end = buf.find_first_of('\0', typetags_start);
        string typetags = buf.substr(typetags_start, typetags_end-typetags_start);

        size_t data_start = typetags_start + osc_util_getPaddedStringLen(typetags);
        size_t bytes_to_next = 0;

        size_t natoms = typetags.length() - 1;

        if( natoms > 1 )
            lua_createtable(L, natoms, 0); // array of values

        int count = 1;
    //    printf("typetagstart %ld tags %s natoms %ld datastart %ld\n", typetags_start, typetags.c_str(), natoms, data_start);

        char * dataPtr = ptr + data_start;

        for( size_t i = 0; i < natoms; i++)
        {
            dataPtr += bytes_to_next;

            if( natoms > 1 )
                lua_pushnumber(L, count++); // key starts at 1
            
            switch ( typetags[i+1] )
            {
                case 'f':
                {
                    uint32_t ui_ptr = ntoh32(*((uint32_t *)(dataPtr)));
                    lua_pushnumber(L, *((float *)&ui_ptr) );

                    bytes_to_next = 4;
                }
                break;
                case 'd':
                {
                    uint64_t ui_ptr = ntoh64(*((uint64_t *)(dataPtr)));
                    double d = *((double *)&ui_ptr);
                    lua_pushnumber(L, d );
                    bytes_to_next = 8;
                }
                break;
                case 'i':
                {
                    lua_pushnumber(L, (int32_t)ntoh32(*((int32_t *)(dataPtr))));
                    bytes_to_next = 4;
                }
                break;
                case 'h':
                    lua_pushnumber(L, (int64_t)ntoh64(*((int64_t *)(dataPtr))) );
                    bytes_to_next = 8;
                break;
                case 's':
                    {
                        size_t str_start = dataPtr - ptr;
                        size_t str_end = buf.find_first_of('\0', str_start);
                        string str = buf.substr(str_start, str_end - str_start);
                        lua_pushstring(L, str.c_str() );
                        bytes_to_next = osc_util_getPaddedStringLen(str);
                    }
                    break;
                case 'c':
                {
                    lua_pushnumber(L, (int32_t)ntoh32(*((int32_t *)(dataPtr))));
                    string str = {(char)ntoh32(*((int32_t *)(dataPtr)))};
                    lua_pushstring(L, str.c_str() );
                    bytes_to_next = 4;
                }
                    break;
//                    case 'C':
//                        osc_atom_u_setUInt8(atom_u, osc_atom_s_getUInt8(a));
//                        break;
//                    case 'u':
//                        osc_atom_u_setInt16(atom_u, osc_atom_s_getInt16(a));
//                        break;
//                    case 'U':
//                        osc_atom_u_setUInt16(atom_u, osc_atom_s_getUInt16(a));
//                        break;

//                    case 'I':
//                        osc_atom_u_setUInt32(atom_u, osc_atom_s_getUInt32(a));
//                        break;
//                    case 'H':
//                        osc_atom_u_setUInt64(atom_u, osc_atom_s_getUInt64(a));
//                        break;
                case 'T':
                    lua_pushboolean(L, 1);
                    break;
                case 'F':
                    lua_pushboolean(L, 0);
                    break;
                case 'N':
                    lua_pushnil(L);
                    break;
                case OSC_BUNDLE_TYPETAG:
                    inputOSC( (long)ntoh32(*((int32_t *)(dataPtr))), dataPtr + 4 );
                    break;
                case OSC_TIMETAG_TYPETAG:
                    lua_pushnumber(L, osc_timetag_timetagToFloat( osc_timetag_decodeFromHeader(dataPtr) ) );
                    break;
//                    case 'b':
//                        osc_atom_u_setBlob(atom_u, a->data);
//                        break;
                default:
                    printf("unhandled input %ld type %c %d\n", i, typetags[i], typetags[i] );
                break;

            }
            
            if( natoms > 1 )
                lua_rawset(L, -3); // points to array, and pops key and value
        }


        if( natoms == 0 )
            lua_pushnil(L);

        lua_rawset(L, -3); // points to osc address table

        _n += msg_size + 4;
    }
}



int32_t LuaWrapper::getElementSizeInBytes(int index, bool inList)
{
    switch( lua_type(L, index) )
    {
        case LUA_TNUMBER:
            // all numbers are doubles for now, but addresses are checked for ints
            return 8;
        case LUA_TSTRING:
        {
            string l_str = lua_tostring(L, index);
            size_t len = l_str.length();
            int32_t plen = osc_util_getPaddingForNBytes(len);
            return plen;
        }
        case LUA_TTABLE:
        {
            return getSerializedSizeInBytes(inList) + 4;
        }
    // nothing to do for T, F, or N
        case LUA_TNIL:
        case LUA_TBOOLEAN:
        default:
            return 0;
    }
}


int32_t LuaWrapper::getSerializedSizeInBytes(bool inList)
{
    int32_t _n = OSC_HEADER_SIZE;

    if( lua_type(L, -1) != LUA_TTABLE )
        return _n;

    if( lua_objlen(L, -1) > 0 ) // this is a list, but not with an address
    {
        string err = "list found at top of stack, OSC requires lists to be assigned to addresses";
        valid = false;
        error_cb(err);
        return 0;
    }
    
    lua_pushnil(L);  /* first key */
    while( (lua_next(L, -2) != 0) && valid )
    {
        _n += 4;

        if( lua_type(L, -1) == LUA_TTABLE )
        {
            string addr = keyToAddr(-2);
            _n += osc_util_getPaddingForNBytes( addr.size() );

            size_t len = lua_objlen(L, -1);
            _n += osc_util_getPaddingForNBytes( len + 1 );

            if( len > 0 ) // list
            {
                if( inList )
                {
                    string err = "list in list at address : " + addr;
                    error_cb(err);
                    valid = false;
                    return 0;
                }
                
                
                lua_pushnil(L);
                while (lua_next(L, -2) != 0)
                {
                    // test for list within list and extra keys in list
                    
                    // key test
                    if( lua_type(L, -2) == LUA_TNUMBER )
                    {
                        double f = lua_tonumber(L, -2);
                        if( (f != (long)f ) || (f < 1) || (f > len) )
                        {
                            string err = "non-index numeric key " + to_string(f) + " in list at address: " + addr;
                            err += "\n please restructure table to not mix list and non-list keys.";
                            error_cb(err);
                            valid = false;
                            return 0;
                        }
                    }
                    else
                    {
                        string list_key;
                        if( lua_type(L, -2) == LUA_TSTRING )
                            list_key = string( lua_tostring(L, -2) );
                        
                        string err = "non number key " + list_key + " found in list at address: " + addr;
                        err += "\n please restructure table to not mix list and non-list keys.";
                        error_cb(err);
                        valid = false;
                        return 0;
                    }
                    
                    _n += getElementSizeInBytes(-1, true);
                    if(!valid) {
                        string err = "list in list found at: " + addr;
                        err += "\n please restructure table for OSC parsing.";

                        error_cb(err);
                        return 0;
                    }
                    
                    lua_pop(L,1);
                }

                /*
                // list of values with numeric indexes
                for( int i = 1; i < len+1; i++ ) // lua is 1 indexed
                {
                    lua_rawgeti(L, -1, i);
                    //valToMsg(-1, msg);
                    _n += getElementSizeInBytes(-1);
                    
                    lua_pop(L,1);
                }*/
            }
            else // key/value pairs
            {
                _n += getSerializedSizeInBytes(inList) + 4;
            }
            
        }
        else
        {
            _n += 4;

            string addr = keyToAddr(-2);
            _n += osc_util_getPaddingForNBytes( addr.size() );
            long nn = getElementSizeInBytes(-1, inList);
            _n += nn;
            //printf("debug not table addr %s size %ld\n", addr.c_str(), nn);

        }
        
        // removes 'value'; keeps 'key' for next iteration, for lua_next(L, -2)
        lua_pop(L, 1);

    }
    // this function leaves the table on the top of the stack ready to serialize next
    
    return _n;
}

void printbytes(char *buf, long len)
{
    for(int i = 0; i < len; i++){
        if(buf[i] == '\0'){
            printf("%05d       %-14s%-14d0x%x\n", i, "'\\0'", buf[i], buf[i]);
        }else if(buf[i] < 32 || buf[i] > 126){
            printf("%05d       %-14s%-14d0x%x\n", i, "''", buf[i], buf[i]);
        } else {
            char b[32];
            sprintf(b, "'%c'", buf[i]);
            printf("%05d       %-14s%-14d0x%x\n", i, b, buf[i], buf[i]);
        }
    }
    printf("\n");
}



int32_t LuaWrapper::serializeValueForKey(char *buf,
                                  size_t remaining_size,
                                  const char * address,
                                  int index  )
{
    int32_t _n = 0;
    size_t addresslen = strlen(address);
    size_t padded_address_len = osc_util_getPaddingForNBytes(addresslen);
    
    size_t len = 1;
    bool isList = false;

    if( lua_type(L, index) == LUA_TTABLE )
    {
        len = lua_objlen(L, index);
        isList = len > 0;
        len = len > 0 ? len : 1; // greater than 0 if list, otherwise single element
    }

    size_t padded_typetag_len = osc_util_getPaddingForNBytes(len + 1);
    size_t num_bytes_before_data = 4 + padded_address_len + padded_typetag_len;

    if(remaining_size < num_bytes_before_data){
        return 0;
    }
    _n += num_bytes_before_data;

    char *ptr = buf;
    ptr += 4;

    memcpy(ptr, address, addresslen);
    ptr += padded_address_len;

    char *ttptr = ptr;
    ptr += padded_typetag_len;
    *ttptr++ = ',';

    if( isList )
    {
        lua_pushnil(L);
        while (lua_next(L, -2) != 0)
        {
            ptr = buf + _n;
            _n += serializeItem(ptr, ttptr, -1);
            ttptr++;
            lua_pop(L,1);
        }
        lua_pop(L,1);
    }
    else
    {
        ptr = buf + _n;
        _n += serializeItem(ptr, ttptr, -1);
        ttptr++;
        lua_pop(L,1);
    }

    *((int32_t *)buf) = hton32(_n - 4);

    return _n;
}


int32_t LuaWrapper::serializeItem(char *ptr, char *ttptr, int index)
{
    switch( lua_type(L, index) )
    {
        case LUA_TNUMBER:
        {
            *ttptr = 'd';
            
            // all numbers are doubles for now, but addresses are checked for ints
            double d = lua_tonumber(L, index);
            *((int64_t *)ptr) = hton64(*((int64_t *)(&d)));
            return 8;
        }
        case LUA_TSTRING:
        {
            *ttptr = 's';

            const char * str = lua_tostring(L, index) ;
            size_t s_len = strlen(str);
            int32_t plen = (int32_t)osc_util_getPaddingForNBytes(s_len);
            memset(ptr, '\0', plen);
            memcpy(ptr, str, s_len);
            return plen;
        }
        case LUA_TTABLE:
        {
            *ttptr = OSC_BUNDLE_TYPETAG;

            int32_t sub_table_size = (int32_t)getSerializedSizeInBytes();

            *((int32_t *)ptr) = hton32(sub_table_size);

            char * buf_ptr = (char *)malloc(sub_table_size);
            serializeIntoBuffer(buf_ptr, sub_table_size, false);

            memcpy(ptr + 4, buf_ptr, sub_table_size );

            free(buf_ptr);

            return sub_table_size + 4;
        }
        case LUA_TNIL:
            *ttptr = 'N';
        case LUA_TBOOLEAN:
            if( lua_toboolean(L, index) )
                *ttptr = 'T';
            else
                *ttptr = 'F';
        default:
            return 0;
    }

}

void LuaWrapper::serializeIntoBuffer(char *ptr, size_t size, bool poptable )
{
    size_t _n = 0;

    memset(ptr, '\0', size);
    memcpy(ptr, OSC_EMPTY_HEADER, OSC_HEADER_SIZE);
    _n += OSC_HEADER_SIZE;

    
    if( lua_type(L, -1) != LUA_TTABLE )
    {
        std::string err = "output error: top of stack is not table, missing return call ?";
        error_cb(err);
        return;
    }
    
    lua_pushnil(L);  // first key
    while (lua_next(L, -2) != 0)
    {
        
        string addr = keyToAddr(-2);
        
        _n += serializeValueForKey(ptr + _n,
                             size - _n,
                             addr.c_str(),
                             -1 // table index
                           );
        // removes 'value'; keeps 'key' for next iteration, for lua_next(L, -2)
        //lua_pop(L, 1);

    }
    
    if( poptable )
        lua_pop(L, 1);


    // printf("serialized _n %ld \n", _n);
    // maybe return this just to make sure it's the same
}

std::string LuaWrapper::getSerializedString()
{
    valid = true;
    size_t len = getSerializedSizeInBytes();
    
    string buf;
    
    if( valid )
    {
        buf.resize(len);
        serializeIntoBuffer(buf.data(), len, false);
    }
    
    return buf;
}
