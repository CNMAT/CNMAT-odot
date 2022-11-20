
lib = require("oluajit_module")

--[[
    adds message to input bndl (now a lua table)
    and returns table to max
--]] 
function fn1( bndl )
    bndl["/test"] = {1,2,3}
    return bndl
end


--[[
    generates new table, and assigns it to several sub-tables
    o.luajit will attach a / to the beginning (for now)
    and returns table to max
--]] 
function fn2( bndl ) 
    local a = {}
    for i = 1, 1000 do a[i] = i end
    local t = {}
    t["b"] = a
    t["c"] = a
    t["d"] = a
    local m = {}
    m.t = t
    return m
end


function metatableExample(bndl)
	local out = {}


    local a = {}
	local len = 1000
    for i = 1, len do a[i] = i end

    -- o.metatable provides scalar list handling, like o.expr.codebox
    setmetatable(a, lib.metatable)

	out.a = lib.scale(a, 1, len, 0., 1.)
    out.scaled = a * 5
	
	return out

end


function ntom(bndl)
    if bndl["/note"] ~= nil then
	    return { midi=lib.ntom(bndl["/note"]) }
    elseif bndl["/notes"] ~= nil then
        return { midi=lib.ntom(bndl["/notes"]) }
    end
end
