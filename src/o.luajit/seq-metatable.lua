lib = require("oluajit_module")

--[[

idea is to create sequencer class that handles lookup, with phase
this requires sorting the keys which will be times in floats

to do
make handler for case where multiple things happen at same time
[] overload to join them? or just make the user do that, maybe that is better,
so then you can just make an array of events at that time if you want


seq.times = {} table of times with event bundles
seq.times[0.] = {
    hz=1000,
    etc="stuff"
}

or

seq.times[0.] = {
    {
        hz=1000,
        etc="stuff"
    },
    {
        hz=1030,
        etc="other stuff"
    }
}

--]]

Seq = {}
function Seq:new(o)
    o = o or {}   -- create object if user does not provide one
    o.times = o.times or {}
    o.sortedTimes = o.sortedTimes or {}

    -- add copy constructor?
    -- add init call?

    setmetatable(o, self)
    self.__index = self

    return o
end

-- t table to sort
local function getSortedTimes(t)
    local a = {}
    for n in pairs(t) do
        if type(n) == 'number' then table.insert(a, n) end
    end
    table.sort(a)
    return a
end

function Seq:init()
    self.sortedTimes = getSortedTimes(self.seq)
end


local function seqLookup(seqTimes, time)
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

    return -1
end

local function getPhase(a,b,t)
    return (t-a) / (b-a)
end

local function getEventPhase(_idx, t)
    local seq_time = sorted[_idx]
    local event = seq[seq_time]
    -- if event is table (actually should always be a table)
    -- then check for dur keyword and calc phase
    -- if not then calc phase to next point

    -- for dur method would need to iterate whole table from 0 to time query point to accumulate events
    -- hit test starting from zero

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


function Seq:lookup(t)
    local idx = seqLookup(self.sortedTimes, t)
    if idx == -1 then return nil end

    local times = self.times


    return {
        idx = idx

    }

end

-- make step seq vs dur seq options

