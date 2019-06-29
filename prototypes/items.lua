copy_prototype = require("src/util/general_utils").copy_prototypes


local train_combinator = copy_prototype(data.raw["item"]["decider-combinator"], "train-combinator")

data:extend{train_combinator}
