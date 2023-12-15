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

function getSortedKeys2 (t, f)
    local a = {}
    for n in pairs(t) do
        if type(n) == 'number' then table.insert(a, n) end
    end
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
            etc="stuff",
            dur=1
        },
        {
            hz=1030,
            dur=2,
            etc="other stuff"
        }
    }

    seq[2] = {
        test=1,
        foo=2
    }

    local sorted = getSortedKeys(seq)

    local idx = seqLookup(sorted, bndl["/startTime"])

    function getEventPhase(_idx, t)
        local seq_time = sorted[_idx]
        local event = seq[seq_time]
        -- if event is table (actually should always be a table)
        -- then check for dur keyword and calc phase
        -- if not then calc phase to next point

        if type(event) == 'table' then
            for i,v in ipairs(event) do
                if type(v) == 'table' then
                    --subbundle
                    if v.dur ~= nil then
                        v.phase = getPhase(seq_time, seq_time + v.dur, t)
                    elseif sorted[i+1] ~= nil then
                        v.phase = getPhase(seq_time, sorted[i+1], t)
                    end
                    v.idx = i
                end
            end
            event.table = true
        elseif sorted[_idx+1] ~= nil then
            event = {
				val=event,
				phase = getPhase(seq_time, sorted[_idx+1], t)
			}
        end
        return event
    end

    bndl["/seq"] = sorted
    bndl.event = getEventPhase(idx, bndl["/startTime"] )--seq[sorted[idx]]


    if type(bndl.event) == 'table' then
        for i,v in ipairs(bndl.event) do
            v.id = i
        end
    end
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