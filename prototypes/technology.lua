local train_combinator_tech = {
    type = "technology",
    name = "train-combinator",
    icon = "__train_combinator__/icons/test.png",
    icon_size = 32,
    prerequisites = {"circuit-network"},
    effects = {{
        type = "unlock-recipe",
        recipe = "train-combinator"
    }},
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 30
    }
}

data:extend{train_combinator_tech}