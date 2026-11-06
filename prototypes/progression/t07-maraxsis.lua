-- Bioslurry
local bioslurry_recipe = {
    type = "recipe",
    name = "hyperlanes-bioslurry",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "maraxsis-tropical-fish", amount = 1},
        {type = "item", name = "biter-egg", amount = 1},
        {type = "item", name = "rubia-bacteria-A", amount = 1},
        {type = "item", name = "rubia-bacteria-B", amount = 1},
        {type = "item", name = "pentapod-egg", amount = 1},
        {type = "item", name = "eschatotaxite-paste", amount = 1},
    },
    energy_required = 5.0,
    results = {
        {type = "fluid", name = "hyperlanes-bioslurry", amount = 5}
    },
    allow_productivity = true,
    categories = {"organic"},
    auto_recycle = true,
    surface_conditions = {
        {
            property="gravity",
            min=0,
            max=0,
        }
    }
}
data:extend({bioslurry_recipe})