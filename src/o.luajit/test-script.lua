
local lib = require("oluajit_module")



function metatableExample(bndl)
	local out = {}

    local a = {}
	local len = 1000
    for i = 1, len do a[i] = i end

    -- setting a table's metatable to use the oluajit_module
	-- provides scalar list handling, like o.expr.codebox

	lib.setMetatable(a)

	-- we can now apply scalars to var a
	out.a = lib.scale(a, 1, len, 0., 1.)
    out.scaled = a * 5
	
	return out

end



-- adds message to input bndl (now a lua table)
-- and returns table to max
function fn1( bndl )
    bndl["/test"] = {1,2,3}
    bndl["/str"] = lib.obj2string(bndl)
    return bndl
end

function thru(input)
	return input
end

function getSize(input)

	for k,v in pairs(input) do
		input[k] = #v
	end

	return {
		input= input,
		size = #input
	}

end

--[[
    generates new table, and assigns it to several sub-tables
    o.luajit will attach a / to the beginning (for now)
    and returns table to max

	note: the max text editor sometimes does not correctly color code multiline comments like this
--]]

function fn2( bndl ) 
    local a = {}
    for i = 1, 1000 do a[i] = i end
    local t = {}
    t["a"] = a
    t["b"] = a
    t["c"] = a
    t["d"] = a
    local m = {}
    m.t = t
    return m
end



function ntom(bndl)
    if bndl["/note"] ~= nil then
	    return { midi=lib.ntom(bndl["/note"]) }
    elseif bndl["/notes"] ~= nil then
        return { midi=lib.ntom(bndl["/notes"]) }
    end
end

function testPrint(args)
	lib.print("hello out there!")
	return {}
end


function refTest(args)
	local t = {{},{}}
	local a = t[1]
	local b = t[2]
	a.foo = 1
	b.bar = 2
	return {
		t=t
	}
end

function getFunctions(b)
	return lib.getFunctions()
end