--control.lua

-- Import section
local on_tick = require("src/on_tick")
local on_built = require "src/on_build"


-- Register all needed event_handlers to the game. 
script.on_event({defines.events.on_tick}, on_tick.on_tick)
script.on_event({defines.events.on_built_entity}, on_built.on_build)