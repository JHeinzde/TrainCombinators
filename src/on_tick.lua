-- on_tick.lua

local Object = {}

local function on_tick(o)

    if global["registered_entity"]  then 
        game.print(global["registered_entity"]["entity"])
    end 
end 

Object.on_tick = on_tick

return Object