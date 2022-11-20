local module = {}

-- step not implemented yet
 module.aseq = function( from, to, step )
    local ret = {}
    for i=from,to do
        table.insert(ret, i)
    end
    return ret
end

module.mapFn = function(val_, fn_)
    if type(val_) == 'table' then
        local out = {}
        for i,v in ipairs(val_) do
            out[i] = fn_(v)
        end
        return out
    else
        return fn_(val_)
    end
end

module.scale = function(in_val, in_min, in_max, out_min, out_max)
    local in_range = in_max - in_min;
    if in_range == 0 then
        in_range = 1
    end

    return module.mapFn( in_val, 
        function(x) 
            return (( (x - in_min) / in_range) * (out_max - out_min)) + out_min 
        end 
    )
end


module.wrap = function(in_val, x_min, x_max)
    local range = x_max - x_min;

    return module.mapFn( in_val, 
        function(x)
            return math.fmod( math.fmod((x - x_min), range) + range, range) + x_min; 
        end
    ) 
end

module.clip = function(in_val, min, max)

    return module.mapFn( in_val, 
        function(x)
            return math.min(math.max(x, min), max)
        end
    )
end

module.scale_clip = function(in_val, in_min, in_max, out_min, out_max)
    local in_range = in_max - in_min;
    if in_range == 0 then
        in_range = 1
    end

    return module.mapFn( in_val, 
        function(x) 
            return clip( (( (x - in_min) / in_range) * (out_max - out_min)) + out_min, out_min, out_max)
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
    local refHz = 440.
    if a4 ~= nil then
        refHz = a4
    end

    return module.mapFn(in_val, function(x)
        return a4 * math.pow(2., (x - 69.) / 12.) ;
    end)
end

module.mtof = function(in_val, a4)
    local refHz = 440.
    if a4 ~= nil then
        refHz = a4
    end

    return module.mapFn(in_val, function(x)
        return 69.0 + (12.0 * math.log( x / a4, 2. ));
    end)
end

module.obj2string = function(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. obj2string(v) .. ','
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

function metaMapFn(a, b, fn_)
    local out = {}

    local type2 = type(b)
    if type2 == 'table' then --indexwise
        local shorterTab = #a < #b and a or b
        for i,v in ipairs(shorterTab) do
            out[i] = fn_( a[i], b[i] ) --assumes that the arrays have the same indexes
        end
    else --scalar
        for i,v in ipairs(a) do
            out[i] = fn_( a[i], b )
        end
    end

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

module.metatable = metaFn





return module