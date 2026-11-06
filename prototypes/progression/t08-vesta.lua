local aeratedwater_recipe = {
    type = "recipe",
    name = "hyperlanes-aerated-water",
    enabled = false,
    ingredients =
    {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 500},
    },
    energy_required = 10.0,
    results = {
        {type = "fluid", name = "hyperlanes-aerated-water", amount = 100},
    },
    allow_productivity = true,
    categories = {"maraxsis-hydro-plant"},
    auto_recycle = true
}
data:extend({aeratedwater_recipe})