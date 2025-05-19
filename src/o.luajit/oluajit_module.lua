local module = {}

module.print = function(msg)
    oluajit.max_print(module.obj2string(msg))
end

module.isEmpty = function(t)
    local next = next(t)
    return (next == nil)
end

module.isBound = function(v)
    return (v ~= nil)
end

-- step not implemented yet
 module.aseq = function( from, to, step )
    local ret = {}
    for i=from,to do
        table.insert(ret, i)
    end
     setmetatable(ret, module.metatable)
     return ret
end

module.nfill = function(n, v)
    local out = {}
    for i in n do
        table.insert(out, v)
    end
    setmetatable(out, module.metatable)
    return out
end



module.mapFn = function(val_, fn_)
    if type(val_) == 'table' then
        local out = {}
        for i,v in ipairs(val_) do
            out[i] = fn_(v)
        end
        setmetatable(out, module.metatable)
        return out
    else
        return fn_(val_)
    end
end

module.length = function(v)
    if type(v) == 'table' then
        return #v
    else
        return 1
    end
end

module.getByKey = function(t, k)
    if type(t) == 'table' then
        local out = {}

        if type(k) == 'table' then
            for i,v in ipairs(k) do
                out[i] = t[v]
            end
        else
            out[1] = t[k]
        end

        setmetatable(out, module.metatable)
        return out
    else
        return t -- or {t}
    end

    return module.mapFn( k,
            function(_k)
                return t[_k]
            end
    )
end

-- sort a list and return sorted idx
module.sortIDX = function(t)
    if type(t) == 'table' and #t ~= 0 then
        local sorted = {}
        for k, v in pairs(t) do
            table.insert(sorted,{k,v})
        end

        table.sort(sorted, function(a,b) return a[2] < b[2] end)

        local sortedIDX = {}
        for i, v in ipairs(sorted) do
            sortedIDX[i] = v[1]
        end

        setmetatable(sortedIDX, module.metatable)

        return sortedIDX
    else
        return 1
    end

end

-- sort a list and return sorted copy
module.sort = function(t)
    if type(t) == 'table' and #t ~= 0 then
        local sorted = {}

        for _, v in pairs(t) do
            table.insert(sorted, v)
        end

        table.sort(sorted, function(a,b) return a < b end)

        setmetatable(sorted, module.metatable)

        return sorted
    else
        return 1
    end

end

module.scale = function(in_val, in_min, in_max, out_min, out_max)

    local m = (out_max - out_min) / (in_max - in_min);
    local b = (out_min - (m * in_min));

    return module.mapFn( in_val,
        function(x) 
            return m * x + b
        end 
    )
end


module.deepCopy = function(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[module.deepCopy(orig_key)] = module.deepCopy(orig_value)
        end
        setmetatable(copy, module.deepCopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

---@return table out, unioned copy of a, overwritten by added values from b
module.union = function(a,b)
    if not a then
        return b
    elseif not b then
        return a
    end

    local out = module.deepCopy(a)
    if type(b) == 'table' then
        for k,v in pairs(b) do
            out[k] = v
        end
    end
    return out
end

module.slashify = function(t, sep2slash)
    local out = {}
    for k,v in pairs(t) do
        local addr = "/" .. string.gsub(k, sep2slash, "/")
        if type(v) == 'table' then
            out[addr] = module.slashify(v, sep2slash)
        else
            out[addr] = v
        end
    end
    return out
end

module.wrap = function(in_val, x_min, x_max)
    local range = x_max - x_min;

    return module.mapFn( in_val, 
        function(x)
            return math.fmod( math.fmod((x - x_min), range) + range, range) + x_min; 
        end
    ) 
end

module.int32 = function(in_val)
    return module.mapFn( in_val,
            function(x)
                return math.floor( x );
            end
    )
end

module.sign = function(in_val)
    return module.mapFn( in_val,
            function(x)
                if x < 0 then
                    return -1
                elseif x > 0 then
                    return 1
                else
                    return 0
                end
            end
    )
end



module.clip = function(in_val, min, max)

    local _min = math.min(min, max)
    local _max = math.max(min, max)

    return module.mapFn( in_val, 
        function(x)
            return math.min(math.max(x, _min), _max)
        end
    )
end

module.fold = function(in_val, lo1, hi1)
    return module.mapFn( in_val,
            function( v )
                local lo
                local hi
                if(lo1 == hi1) then
                    return lo1
                end

                if (lo1 > hi1) then
                    hi = lo1;
                    lo = hi1;
                else
                    lo = lo1;
                    hi = hi1;
                end

                local range = hi - lo;
                local numWraps = 0;
                if(v >= hi) then
                    v = v - range;
                    if(v >= hi) then
                        numWraps = math.floor((v - lo)/range);
                        v = v - range * numWraps;
                    end
                    numWraps = numWraps + 1
                elseif v < lo then
                    v = v + range;
                    if(v < lo) then
                        numWraps = math.floor((v - lo)/range);
                        v = v - range * numWraps;
                    end
                    numWraps = numWraps - 1
                end

                if (math.abs(numWraps) % 2) == 1 then
                    v = hi + lo - v
                end
                return v
            end
    )
end

module.scale_clip = function(in_val, in_min, in_max, out_min, out_max)

    local m = (out_max - out_min) / (in_max - in_min);
    local b = (out_min - (m * in_min));

    return module.mapFn( in_val,
            function(x)
                return module.clip(m * x + b, out_min, out_max)
            end
    )
end

module.sum = function(val_)
    if type(val_) == 'table' then
        local out = {}
        for i,v in ipairs(val_) do
            out[i] = out[i] + v
        end
        return out
    else
        return val_
    end
end

module.round = function(in_val)
    return module.mapFn(in_val, function(x)
        return math.floor(x + 0.5)
    end)
end

module.mtof = function(in_val, a4)
    local refHz = a4 or 440.

    return module.mapFn(in_val, function(x)
        return refHz * math.pow(2., (x - 69.) / 12.) ;
    end)
end

module.ftom = function(in_val, a4)
    local refHz = a4 or 440.

    return module.mapFn(in_val, function(x)
        return 69.0 + (12.0 * math.log( x / refHz, 2. ));
    end)
end

module.obj2string = function(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. module.obj2string(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
 end

module.split = function(text, delim)
  -- returns an array of fields based on text and delimiter (one character only)
  -- from https://stackoverflow.com/questions/1426954/split-string-in-lua
  local result = {}
  local magic = "().%+-*?[]^$"

  if delim == nil then
      delim = "%s"
  elseif string.find(delim, magic, 1, true) then
      -- escape magic
      delim = "%"..delim
  end

  local pattern = "[^"..delim.."]+"
  for w in string.gmatch(text, pattern) do
      table.insert(result, w)
  end
  return result
end

module.find = function(k, l) 
  for i, v in ipairs(l) do
    if v == k then
      return i
    end
  end
  return nil
end


module.ntom = function(note)
    local names_lower = {"c", "c#", "db", "d", "d#", "eb", "e", "f", "f#", "gb", "g", "g#", "ab", "a", "a#", "bb", "b" }
    local names_upper = {"C", "C#", "Db", "D", "D#", "Eb", "E", "F", "F#", "Gb", "G", "G#", "Ab", "A", "A#", "Bb", "B" }	
    local names_step = {0, 1, 1, 2, 3, 3, 4, 5, 6, 6, 7, 8, 8, 9, 10, 10, 11}

    return module.mapFn(note, function(n)
        local tok = module.split(n, ":")

        local letter = tok[1]

        local idx = module.find(letter, names_lower)

        if idx == nil then
            idx = module.find(letter, names_upper)
            if idx == nil then
                return nil
            end
        end

        local step = names_step[ idx ]
        local oct = 0
        local cents = 0

        if #tok == 2 then
            local minus = module.split(tok[2], "-")
            if #minus == 2 then
                oct = tonumber(minus[1])
                cents = tonumber( "-"..minus[2] )
            else
                local plus = module.split(tok[2], "+")
                if #plus == 2 then
                    oct = tonumber(plus[1])
                    cents = tonumber(plus[2])
                else
                    oct = tonumber(tok[2])
                end
            end
        end
        if oct == nil or oct == '' then
            return n
        end
        return step + (12*(oct+1)) + (cents * 0.01)
    end)
end



-- Metatable setup

local function metaMapFn(a, b, fn_)
    local out = {}

    local a_tab = type(a) == 'table' and a or setmetatable({a}, module.metatable)
    local type2 = type(b)
    if type2 == 'table' then --indexwise
        local shorterTab = #a_tab < #b and a_tab or b
        for i,v in ipairs(shorterTab) do
            out[i] = fn_( a_tab[i], b[i] ) --assumes that the arrays have the same indexes
        end
    else --scalar
        for i,v in ipairs(a_tab) do
            out[i] = fn_( a_tab[i], b )
        end
    end
    setmetatable(out, module.metatable)
    return out
end

local metaFn = {}
-- metaFn.__index = metaFn
-- do this above if assigning other methods, accessible via tablename:methodname()
-- https://www.ibm.com/docs/en/db2-warehouse?topic=metatables-operator

metaFn.__add = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x + y
    end)
end

metaFn.__sub = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x - y
    end)
end

metaFn.__mul = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x * y
    end)
end

metaFn.__div = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x / y
    end)
end

metaFn.__pow = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return math.pow(x, y)
    end)
end

metaFn.__mod = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return math.fmod(x, y)
    end)
end

metaFn.__eq = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x == y
    end)
end

metaFn.__lt = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x < y
    end)
end

metaFn.__le = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x <= y
    end)
end

metaFn.__ge = function(a,b)
    return metaMapFn(a,b, function(x,y)
        return x >= y
    end)
end

module.metatable = metaFn


module.setMetatable = function(t)
    if type(t) == 'table' then
        for k, v in pairs(t) do
            module.setMetatable(v)
        end
        return setmetatable(t, module.metatable)
    else
        return t
    end
end


local function linearInterp(a,b,t)
    return a + ((b - a) * t)
end

-- interpolate all matching addresses
module.interpolate = function(a, b, t)
    if type(a) == 'table' and type(b) == 'table' then
        module.setMetatable(a)
        module.setMetatable(b)

        if #a > 0 and #b > 0 then
            return linearInterp(a, b, t)
        else
            local out = {}
            for k,v in pairs(a) do
                if b[k] ~= nil then
                    out[k] = module.interpolate(v, b[k], t)
                else
                    out[k] = v -- include, but don't interpolate things not in table b
                end
            end
            return out
        end
    elseif type(a) == 'function' or type(b) == 'function' then
        return a
    else
        return linearInterp(a,b,t)
    end

end

module.getFunctions = function(bndl)
    local out = {}
    for key, item in pairs(module) do
        if type(item) == "function" then
            table.insert(out, key)
        end
    end
    return {
        moduleFunctions = module.sort(out)
    }
end

return module