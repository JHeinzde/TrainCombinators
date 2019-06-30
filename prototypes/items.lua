-- Load copy_prototype 
copy_prototype = require("src/util/general_utils").copy_prototype

-- Load train_combinator
local train_combinator = copy_prototype(data.raw["item"]["decider-combinator"], "train-combinator")
train_combinator.order = "c[combinators]-b[train-combinator]"


-- Insert the train combinator into the games prototype definition table
data:extend{train_combinator}
