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
    energy_required = 5.0,
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


-- Volatile catalyst
local voca_recipe = {
    type = "recipe",
    name = "hyperlanes-volatile-catalyst",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 2},
        {type = "item", name = "planetaris-polished-bismuth", amount = 10},
        {type = "item", name = "lead-pellets", amount = 20},
        {type = "fluid", name = "lithium-brine", amount = 100},
        {type = "fluid", name = "hyperlanes-superacid", amount = 50},
        {type = "fluid", name = "fusion-plasma", amount = 20},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
    },
    allow_productivity = true,
    categories = {"cryogenics"},
    auto_recycle = true
}
data:extend({voca_recipe})

local recooling_voca_recipe = {
    type = "recipe",
    name = "hyperlanes-volatile-catalyst-recooling",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
    },
    energy_required = 0.5,
    results = {
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, reset_freshness_on_craft = true},
    },
    allow_productivity = true,
    categories = {"cryogenics"},
    auto_recycle = true
}
data:extend({recooling_voca_recipe})


-- Loaded simulating unit
local losim_recipe = {
    type = "recipe",
    name = "hyperlanes-loaded-simulating-unit",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "planetaris-simulating-unit", amount = 10},
        {type = "item", name = "ai-tier-8", amount = 1},
        {type = "fluid", name = "solved-equation-data", amount = 1200},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-loaded-simulating-unit", amount = 10},
    },
    allow_productivity = false,
    categories = {"data-processing"},
    auto_recycle = true
}
data:extend({losim_recipe})