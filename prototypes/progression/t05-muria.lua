local utils = require("__hyperlanes-modpack__/utils")

-- Superacid
local superacid_recipe = {
    type = "recipe",
    name = "hyperlanes-superacid",
    enabled = false,
    ingredients = {
        {type = "fluid", name = "aqua-regia", amount = 200},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "hydrogen-fluoride", amount = 100},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_stats = 1},
    },
    energy_required = 30.0,
    results = {
        {type = "fluid", name = "hyperlanes-superacid", amount = 200},
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
        {type = "item", name = "nickel-plate", amount = 1},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_stats = 1},
        {type = "fluid", name = "muriatic-solution", amount = 100},
    },
    energy_required = 2.0,
    results = {
        {type = "item", name = "hyperlanes-purified-lead", amount = 1},
        {type = "item", name = "nickel-plate", amount = 1, independent_probability = 0.20},
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.99},
        {type = "fluid", name = "muriatic-solution", amount = 50, ignored_by_productivity = 50},
    },
    main_product = "hyperlanes-purified-lead",
    allow_productivity = true,
    categories = {"chemistry", "acidworking"},
    auto_recycle = true
}
data:extend({purified_lead_recipe})


-- Tech for unlocking Superacid
local sa_tech = {
    type = "technology",
    name = "hyperlanes-superacid",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/technology/superacid.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-superacid"
        },
    },
    unit =
    {
        count = utils.t5_spcost_smalltech,
        ingredients = utils.t5_sp_muria,
        time = 60
    },
    prerequisites = {"acidworking-science-pack"},
    order = "c-a",
    essential = false
}
data:extend({sa_tech})