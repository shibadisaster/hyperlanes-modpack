-- Superacid
local superacid_recipe = {
    type = "recipe",
    name = "hyperlanes-superacid",
    enabled = true,
    ingredients = {
        {type = "fluid", name = "hydrogen-chloride", amount = 300},
        {type = "fluid", name = "nitric-acid", amount = 100},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1},
    },
    energy_required = 30.0,
    results = {
        {type = "fluid", name = "hyperlanes-superacid", amount = 400},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1}
    },
    main_product = "hyperlanes-superacid",
    allow_productivity = true,
    categories = {"acidworking"},
    auto_recycle = true
}
data:extend({superacid_recipe})