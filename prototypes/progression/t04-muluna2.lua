-- Inert radioactive catalyst
local elcatalyst_recipe = {
    type = "recipe",
    name = "hyperlanes-elementary-catalyst",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "alumina-crushed", amount = 20},
        {type = "item", name = "uranium-235", amount = 5},
        {type = "item", name = "plutonium-238", amount = 1},
        {type = "fluid", name = "ammonia", amount = 10},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-elementary-catalyst", amount = 10}
    },
    allow_productivity = true,
    categories = {"fulgoran-cryogenics"},
    auto_recycle = true
}
data:extend({elcatalyst_recipe})

-- Activated radioactive catalyst
local acelcatalyst_recipe = {
    type = "recipe",
    name = "hyperlanes-activated-elementary-catalyst",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-elementary-catalyst", amount = 1},
    },
    energy_required = 1.0,
    results = {
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1}
    },
    allow_productivity = false,
    categories = {"electromagnetics"},
    auto_recycle = true
}
data:extend({acelcatalyst_recipe})