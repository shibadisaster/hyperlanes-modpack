local ammicrosuspension_recipe = {
    type = "recipe",
    name = "hyperlanes-advanced-material-microsuspension",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "tungsten-plate", amount = 10},
        {type = "item", name = "holmium-plate", amount = 10},
        {type = "item", name = "carbon-fiber", amount = 10},
        {type = "item", name = "silicon", amount = 20},
        {type = "fluid", name = "water", amount = 100},
    },
    energy_required = 20.0,
    results = {
        {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 20}
    },
    allow_productivity = true,
    categories = {"fulgoran-cryogenics"},
    auto_recycle = true
}
data:extend({ammicrosuspension_recipe})