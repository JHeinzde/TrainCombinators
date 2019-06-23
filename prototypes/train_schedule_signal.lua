--item.lua

local train_combinator = table.deepcopy(data.raw.decider_combinator["decider-combinator"])

train_combinator.name = "train-combinator"
train_combinator.icons= {
   {
      icon=data.raw.icon["decider-combinator"],
      tint={r=1,g=0,b=0,a=0.3}
   },
}

local recipe = table.deepcopy(data.raw.recipe["decider-combinator"])
recipe.enabled = true
recipe.name = "train-combinator"
recipe.ingredients = {{"copper-plate",10}}
recipe.result = "train-combinator"

data:extend{train_combinator,recipe}