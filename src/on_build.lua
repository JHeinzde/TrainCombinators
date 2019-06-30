-- on_build.lua

local Object = {}

-- Import section
general_utils = require("src/util/general_utils")

-- Code section

-- This function registers a created train_combinator in a global
-- map, that tracks all the created train_combinators.
local function register_custom_item(entity_r)
    general_utils.setdefault_global("registered_entity", {})

    -- Only register train-combinators into the global array
    if entity_r.name == "train-combinator" then 
        global["registered_entity"][table_size(global["registered_entity"])] = entity_r
    end 
end

-- This needs to be last, because it uses the function from above ... Fucking interpreted languages.
local function on_build(build_event)
    entity = build_event.created_entity

    register_custom_item(entity)
end 

Object.on_build = on_build
Object.register_custom_item = register_custom_item

return Object