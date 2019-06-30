-- import general_utils
general_utils = require("src/utils/general_utils")

-- on_tick.lua

local Object = {}

local function process_entity()
    if entity.name != 
end 


local function process_entities()
    general_utils.map(global["registered_entity"], process_entity)
end 


local function on_tick(o)

    if global["registered_entity"]  then 
        process_entities()
    end 
end 

Object.on_tick = on_tick

return Object