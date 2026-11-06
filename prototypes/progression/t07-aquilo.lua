-- Supercooled magnet
local sucomagnet_recipe = {
    type = "recipe",
    name = "hyperlanes-supercooled-magnet",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "magnet", amount = 2},
        {type = "item", name = "lithium-plate", amount = 4},
        {type = "item", name = "superconductor", amount = 4},
        {type = "fluid", name = "fluoroketone-cold", amount = 10},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
        {type = "fluid", name = "fluoroketone-hot", amount = 5, ignored_by_productivity = 5}
    },
    main_product = "hyperlanes-supercooled-magnet",
    allow_productivity = true,
    categories = {"cryogenics"},
    auto_recycle = true
}
data:extend({sucomagnet_recipe})


local recooling_sucomagnet_recipe = {
    type = "recipe",
    name = "hyperlanes-supercooled-magnet-recooling",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
        {type = "fluid", name = "fluoroketone-cold", amount = 4},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1, reset_freshness_on_craft = true},
        {type = "fluid", name = "fluoroketone-hot", amount = 2, ignored_by_productivity = 2}
    },
    main_product = "hyperlanes-supercooled-magnet",
    allow_productivity = false,
    categories = {"cryogenics"},
    auto_recycle = true
}
data:extend({recooling_sucomagnet_recipe})