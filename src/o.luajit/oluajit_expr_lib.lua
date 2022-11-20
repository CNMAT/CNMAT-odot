--[[
    to do:
        make metatable functions for tables
        then bind the metatable when creating the tables in c++

--]]

local module = {}

function mapFn(val_, fn_)
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

-- maybe move second order functions to separate file? i.e. these that use mapFns
function scale(in_val, in_min, in_max, out_min, out_max)
    local in_range = in_max - in_min;
    if in_range == 0 then
        in_range = 1
    end

    return mapFn( in_val, 
        function(x) 
            return (( (x - in_min) / in_range) * (out_max - out_min)) + out_min 
        end 
    )
end


function wrap(in_val, x_min, x_max)
    local range = x_max - x_min;

    return mapFn( in_val, 
        function(x)
            return math.fmod( math.fmod((x - x_min), range) + range, range) + x_min; 
        end
    ) 
end

function clip(in_val, min, max)

    return mapFn( in_val, 
        function(x)
            return math.min(math.max(x, min), max)
        end
    )
end

function scale_clip(in_val, in_min, in_max, out_min, out_max)
    local in_range = in_max - in_min;
    if in_range == 0 then
        in_range = 1
    end

    return mapFn( in_val, 
        function(x) 
            return clip( (( (x - in_min) / in_range) * (out_max - out_min)) + out_min, out_min, out_max)
        end 
    )
end

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

metaFn = {}
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

return {
    metaFn = metaFn,
}