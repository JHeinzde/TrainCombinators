-- Load copy_prototype 
copy_prototype = require("src/util/general_utils").copy_prototype

local recipe = copy_protoype(data["recipe"]["decider-combinator"], "train-combinator")

recipe.ingredients = {{"copper-plate", 10}}

data:extend{recipe}