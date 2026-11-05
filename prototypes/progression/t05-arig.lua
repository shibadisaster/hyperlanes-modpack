-- Sealant
local sealant_recipe = {
    type = "recipe",
    name = "hyperlanes-sealant",
    enabled = false,
    ingredients =
    {
        {type = "fluid", name = "tar", amount = 10},
        {type = "fluid", name = "planetaris-sand", amount = 20},
        {type = "item", name = "stone-crushed", amount = 3},
    },
    energy_required = 5.0,
    results = {
        {type = "item", name = "hyperlanes-sealant", amount = 1}
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true
}
data:extend({sealant_recipe})