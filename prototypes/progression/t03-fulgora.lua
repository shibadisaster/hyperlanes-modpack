local magnet_recipe = {
    type = "recipe",
    name = "hyperlanes-fulgora-magnet",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "iron-plate", amount = 2},
        {type = "fluid", name = "holmium-solution", amount = 20},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-fulgora-magnet", amount = 1}
    },
    allow_productivity = true,
    categories = {"crafting-with-fluid", "electromagnetics"},
    auto_recycle = true
}
data:extend({magnet_recipe})