-- Sealant
local sealant_recipe = {
    type = "recipe",
    name = "hyperlanes-sealant",
    enabled = false,
    ingredients =
    {
        {type = "fluid", name = "tar", amount = 20},
        {type = "item", name = "planetaris-sand-barrel", amount = 1},
        {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 4},
        {type = "item", name = "stone-crushed", amount = 10},
    },
    energy_required = 5.0,
    results = {
        {type = "item", name = "hyperlanes-sealant", amount = 2}
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true,
    surface_conditions = {
        {
            property="planetaris-dust-concentration",
            min=50,
            max=100
        }
    }
}
data:extend({sealant_recipe})