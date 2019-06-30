-- Load copy_prototype 
copy_prototype = require("src/util/general_utils").copy_prototype

local recipe = copy_prototype(data.raw["recipe"]["decider-combinator"], "train-combinator")

recipe.ingredients = {{"copper-plate", 10}}
recipe.enabled = false

data:extend{recipe}