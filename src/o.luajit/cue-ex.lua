lib = require("oluajit_module")

--[[

procCue API
/cueIDX -- cue to recall
/time -- current time, timetag from o.timetag

--]]

cues = {}

currentCue = 0
startTime = 0

function getSortedKeys (t, f)
    local a = {}
    for n in pairs(t) do table.insert(a, n) end
    table.sort(a, f)
    return a
end

function pairsByKeys (t, f)
    local a = getSortedKeys(t,f)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
    end
    return iter
end

function list_iter (t)
    local i = 0
    local n = #t
    return function ()
        i = i + 1
        if i <= n then
            return t[i]
        end
    end
end

function getPhase(a,b,t)
    return (t-a) / (b-a)
end

function seqLookup(seqTimes, time)
    if seqTimes[1] > time then
        return -1
    end

    local i = 0
    local n = #seqTimes
    while i <= n do
        i = i + 1
        if seqTimes[i] == nil then
            return nil
        elseif seqTimes[i+1] == nil then
            return i
        elseif time >= seqTimes[i] and time < seqTimes[i+1] then
            return i
        end
    end

    return -111
end



cues[1] = function( bndl, isNew, elapsed )
    -- setmetatable(bndl, lib.metatable) -- needed for scalars
    if isNew then
        bndl["/new"] = 1
    end
    
    bndl["/elapsed"] = elapsed

    local seq = {}
    seq[1.1] = {
        hz=100,
        amp=2
    }
    seq[1.2] = 2
    seq[1.3] = 3
    seq[0.0] = {
        {
            hz=1000,
            etc="stuff"
        },
        {
            hz=1030,
            etc="other stuff"
        }
    }

    local sorted = getSortedKeys(seq)
    local idx = seqLookup(sorted, bndl["/startTime"])

    bndl["/seq"] = seq
    bndl["/idx"] = idx
    return bndl
end

function procCue( bndl )
    if bndl["/cueIDX"] ~= nil then
        local cueIDX = bndl["/cueIDX"]

        local isNew = cueIDX ~= currentCue
        currentCue = cueIDX

        -- safety check
        if cues[ cueIDX ] == nil then
            bndl["/error"] = "no cue at this idx"
            return bndl
        end

        --[[
        -- could add off func for end of cue
        -- but this won't work because we don't have a direct call to C++
        -- only returning a bundle
        if cues[ currentCue ] ~= nil then
            cues[ currentCue ]( bndl, -1, elapsed )
        end
        --]]

        local elapsed = 0

        if bndl["/time"] ~= nil then
            local time = bndl["/time"]

            if isNew then
                startTime = time
            end

            elapsed = time - startTime
        end

        return cues[ cueIDX ]( bndl, isNew, elapsed )
    end
end