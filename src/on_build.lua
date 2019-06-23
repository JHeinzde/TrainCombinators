-- on_build.lua

-- Import section
require("src/util/general_utils")


-- Code section
function on_build(build_event)
    created_entity = build_event.created_entity
    player_index = build_event.player_index
    stack = build_event.stack
    item = build_event.item

    register_custom_item(item, entity)
end 

-- This function registers a created train_combinator in a global
-- map, that tracks all the created train_combinators.
function register_custom_item(item, entity)
    general_utils.setdefault(global, "registered_entity", {})

    -- Only register train-combinators into the global array
    if item.name == "train-combinator"
        global["registered_entity"][#global] = {"entity": entity, "item": item}
    end 
end