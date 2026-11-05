-- Superacid
local superacid_recipe = {
    type = "recipe",
    name = "hyperlanes-superacid",
    enabled = false,
    ingredients = {
        {type = "fluid", name = "hydrogen-chloride", amount = 300},
        {type = "fluid", name = "nitric-acid", amount = 100},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_stats = 1},
    },
    energy_required = 30.0,
    results = {
        {type = "fluid", name = "hyperlanes-superacid", amount = 400},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
    },
    main_product = "hyperlanes-superacid",
    allow_productivity = true,
    categories = {"acidworking"},
    auto_recycle = true
}
data:extend({superacid_recipe})


-- Purified lead
local purified_lead_recipe = {
    type = "recipe",
    name = "hyperlanes-purified-lead",
    enabled = false,
    ingredients = {
        {type = "item", name = "lead", amount = 1},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_stats = 1},
        {type = "fluid", name = "muriatic-solution", amount = 100},
    },
    energy_required = 2.0,
    results = {
        {type = "item", name = "hyperlanes-purified-lead", amount = 1},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
    },
    main_product = "hyperlanes-purified-lead",
    allow_productivity = true,
    categories = {"chemistry", "acidworking"},
    auto_recycle = true
}
data:extend({purified_lead_recipe})