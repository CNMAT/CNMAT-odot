
local lib = require("local_oluajit_module")

local ScalePlayer = {}

local scale = {0,2,4,5,7,9,11}

function ScalePlayer.setScale(args)
    scale = args.scale or scale
    return {}
end


-- find_closest_idx for sieve approach?

local function find_closest_idx(t, value)
    local closest
    local closest_idx
    local dist
    for i, n in ipairs(t) do
        local dx = n - value
        if math.abs(dx) < closest then
            closest = n
            closest_idx = i
            dist = dx
        end
    end
    return closest_idx, dist
end


--[[
local function getLowerIDXinSortedSet(v, t)
    local count = 1
    for i, n in ipairs(t) do
        if n <= v then
            count = i
        else
            if v == 0 then
                return #t -- case when lowest scale degree is not 0
            else
                return i -1
            end
        end
    end
    return count

end

function ScalePlayer.midiScaleShift(m, params, offset)

    local _offset = 0
    if offset ~= nil then
        _offset = offset
    end
    local mm = m + params.shift
    local chroma = math.floor(0.5 + (mm - params.baseMIDI) % 12)
    local lowerIDX = getLowerIDXinSortedSet(chroma, params.scale)
    local idx_w_offset = lowerIDX + _offset - 1
    local octave_shift = 0
    if idx_w_offset > #params.scale then
        octave_shift = 12
    end
    local wrapIdx = ((idx_w_offset) % #params.scale) + 1
    local floorScale = params.scale[ wrapIdx ]
    if floorScale == nil then
        oluajit.max_print(lowerIDX)
    end
    return mm - chroma + floorScale + octave_shift
end
--]]


--[[
Finds the index of the largest value in a sorted table `t`
that is less than or equal to a given value `v`.

@param v (number): The value to search for.
@param t (table): A numerically-sorted table of values (the scale degrees).
@return (number): The index (1-based) of the found scale degree.
                  Returns 0 if `v` is smaller than all elements in `t`.
--]]
local function getLowerIDXinSortedSet(v, t)
    -- The input table `t` is assumed to be sorted in ascending order.
    -- We iterate backwards. The first value we find that is <= v
    -- will be the correct one.
    for i = #t, 1, -1 do
        if t[i] <= v then
            return i
        end
    end

    -- If the loop completes, it means `v` is smaller than all elements in `t`.
    -- We return 0 as a special value to signal this to the calling function.
    return 0
end


--[[
Maps an incoming MIDI note `m` to a note in a scale.
This version is corrected to handle octave boundaries and uses the
robust `getLowerIDXinSortedSet` helper function.

@param m (number): The input MIDI note.
@param params (table): A table with `{ baseMIDI, scale, shift }`.
@param offset (number, optional): An integer to shift the mapped scale degree.
@return (number): The new, scale-corrected MIDI note.
--]]
function ScalePlayer.midiScaleShift(m, params, offset)
    local _offset = offset or 0
    local scale = params.scale
    local scale_len = #scale

    -- If the scale is empty, return the original note to avoid errors.
    if scale_len == 0 then
        return m
    end

    -- Apply the global shift from params.
    local mm = m + (params.shift or 0)

    -- The core of the fix: correctly separate the note into its octave and
    -- chroma components relative to the scale's base MIDI note.
    -- The old method using `% 12` lost the octave context.
    local diff = mm - params.baseMIDI
    local octave = math.floor(diff / 12)
    local chroma = diff - (octave * 12) -- A value from 0 to 11.999...

    -- Use the robust helper to find the scale degree index.
    local lowerIDX = getLowerIDXinSortedSet(chroma, scale)

    -- Handle the case where the chroma was below the first scale degree.
    if lowerIDX == 0 then
        -- The helper returned 0, so we map to the highest degree
        -- of the *previous* octave.
        lowerIDX = scale_len
        octave = octave - 1
    end

    -- Apply the user-provided offset to the found scale degree index.
    local final_degree_index = lowerIDX + _offset

    -- Calculate how many full octaves the offset adds or subtracts.
    local octave_from_offset = math.floor((final_degree_index - 1) / scale_len)

    -- Wrap the index to be within the scale's bounds [1, scale_len].
    local wrapped_degree_index = ((final_degree_index - 1) % scale_len) + 1

    -- Get the actual semitone value for the mapped scale degree.
    local scale_degree_semitones = scale[wrapped_degree_index]

    -- Reconstruct the final MIDI note from its constituent parts.
    local final_note = params.baseMIDI + ((octave + octave_from_offset) * 12) + scale_degree_semitones

    return final_note
end


return ScalePlayer