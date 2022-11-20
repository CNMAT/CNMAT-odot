package.path = debug.getinfo(1).source:match("@?(.*/)") .. '?.lua;' .. package.path

require("test-script")

function fn1( bndl )
    bndl["/test"] = {1,2,3}
    return bndl
end

function fn2( bndl )
    local a = {}
    for i = 1, 1000 do a[i] = i end
    local t = {}
    t["b"] = a
    local m = {}
    m.t = t
    return m
end
