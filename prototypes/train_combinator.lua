--train_combinator

-- This prototype defines a combinator that is used to interact with the train system. 
-- Its puprpose is to influece a trains scheduele on circuit condition.


-- Use the decider-combinator as base
local train_combinator = table.deepcopy(data.raw.item["decider-combinator"])


train_combinator.name = "train-combinator"

-- Clone the recepie of the decider-combinator.
local recipe = table.deepcopy(data.raw.recipe["decider-combinator"])
recipe.enabled = true
recipe.name = "train-combinator"
recipe.ingredients = {{"copper-plate",10}}
recipe.result = "train-combinator"

data:extend{train_combinator, recipe}