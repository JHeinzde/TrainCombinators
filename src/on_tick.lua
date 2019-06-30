-- import general_utils
general_utils = require("src/utils/general_utils")
entity_processor = require("src/entity_processor")

-- on_tick.lua

local Object = {}

local function process_entity(entity)
    if entity.name != "train-combinator" then 
        error("Invalid usage of the api. Registered Entity should only contain train-combinators")
    end 

    if entity_processor.check_connection_to_cn(entity) then 
        get_connected_train_stations = entity_processor.get_connected_train_stations(entity)
    end 
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