-- on_build.lua

local Object = {}

-- Import section
general_utils = require("src/util/general_utils")

-- Code section
local function on_build(build_event)
    created_entity = build_event.created_entity
    player_index = build_event.player_index
    stack = build_event.stack
    item = build_event.item

    register_custom_item(item, entity)
end 

-- This function registers a created train_combinator in a global
-- map, that tracks all the created train_combinators.
local function register_custom_item(item_r, entity_r)
    general_utils.setdefault(global, "registered_entity", {})

    -- Only register train-combinators into the global array
    if item.name == "train-combinator" then 
        global["registered_entity"][#global] = {entity = entity_r, item = item_r}
    end 
end

Object.on_build = on_build
Object.register_custom_item = register_custom_item

return Object