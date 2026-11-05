-- Metamaterial microsuspension
local metamicrosuspension_recipe = {
    type = "recipe",
    name = "hyperlanes-metamaterial-microsuspension",
    enabled = false,
    ingredients =
    {
        {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 100},
        {type = "item", name = "rubia-bacteria-A", amount = 3},
        {type = "item", name = "rubia-bacteria-B", amount = 3},
        {type = "item", name = "craptonite-frame", amount = 10},
        {type = "item", name = "muluna-microcellular-plastic", amount = 10},
    },
    energy_required = 30.0,
    results = {
        {type = "fluid", name = "hyperlanes-metamaterial-microsuspension", amount = 100}
    },
    allow_productivity = true,
    categories = {"biorecycling"},
    auto_recycle = true
}
data:extend({metamicrosuspension_recipe})