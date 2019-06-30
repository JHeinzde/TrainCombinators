-- Import copy prototype function
copy_prototype = require("src/util/general_utils").copy_prototype

-- Copy decider-combinator entity.
local train_combinator = copy_prototype(data.raw["decider-combinator"]["decider-combinator"], "train-combinator")

-- Make train_combinator entity available to the game
data:extend{train_combinator}