function obj2string(o)
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


-- ntom

function split(text, delim)
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

function table.find(k, l) 
  for i, v in ipairs(l) do
    if v == k then
      return i
    end
  end
  return nil
end


ntom = function(n)
    local names_lower = {"c", "c#", "db", "d", "d#", "eb", "e", "f", "f#", "gb", "g", "g#", "ab", "a", "a#", "bb", "b" }
    local names_upper = {"C", "C#", "Db", "D", "D#", "Eb", "E", "F", "F#", "Gb", "G", "G#", "Ab", "A", "A#", "Bb", "B" }	
    local names_step = {0, 1, 1, 2, 3, 3, 4, 5, 6, 6, 7, 8, 8, 9, 10, 10, 11}

    --return module.mapFn(note, function(n)
        local tok = split(n, ":")

        local letter = tok[1]

        local idx = table.find(letter, names_lower)

        if idx == nil then
            idx = table.find(letter, names_upper)
            if idx == nil then
                return nil
            end
        end

        local step = names_step[ idx ]
        local oct = 0
        local cents = 0

        if #tok == 2 then
            local minus = split(tok[2], "-")
            if #minus == 2 then
                oct = tonumber(minus[1])
                cents = tonumber( "-"..minus[2] )
            else
                local plus = split(tok[2], "+")
                print(tok[2], "plus", #plus, plus[1], plus[2])

                if #plus == 2 then

                    oct = tonumber(plus[1])
                    cents = tonumber(plus[2])
                else
                    oct = tonumber(tok[2])
                end
            end
        end
        print(oct)
        return step + (12*(oct+1)) + (cents * 0.01) 

    --end)
end

print( ntom("a:2") )

