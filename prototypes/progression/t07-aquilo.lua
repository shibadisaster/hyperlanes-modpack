local utils = require("__hyperlanes-modpack__/utils")

-- Supercooled magnet
local sucomagnet_recipe = {
    type = "recipe",
    name = "hyperlanes-supercooled-magnet",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "magnet", amount = 2, quality_min = "epic"},
        {type = "item", name = "lithium-plate", amount = 4},
        {type = "item", name = "superconductor", amount = 4, quality_min = "epic"},
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
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/icons/recirculation.png"
        },
        {
            icon = data.raw["item"]["hyperlanes-supercooled-magnet"].icon,
            scale = 0.375
        }
    },
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
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/icons/recirculation.png"
        },
        {
            icon = data.raw["item"]["hyperlanes-volatile-catalyst"].icon
        }
    },
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


-- Tech for unlocking Volatile catalyst
local voca_tech = {
    type = "technology",
    name = "hyperlanes-volatile-catalyst",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/technology/volatile-catalyst.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-volatile-catalyst"
        },
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-volatile-catalyst-recooling"
        },
    },
    unit =
    {
        count = utils.t7_spcost_smalltech,
        ingredients = utils.t7_sp_aquilo,
        time = 60
    },
    prerequisites = {"cryogenic-science-pack"},
    order = "c-a",
    essential = false
}
data:extend({voca_tech})


-- Tech for unlocking Supercooled magnet
local sucomagnet_tech = {
    type = "technology",
    name = "hyperlanes-supercooled-magnet",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/technology/supercooled-magnet.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-supercooled-magnet"
        },
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-supercooled-magnet-recooling"
        },
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-supercooled-magnet-recooling-paracelsin"
        },
    },
    unit =
    {
        count = utils.t7_spcost_smalltech,
        ingredients = utils.t7_sp_aquilo,
        time = 60
    },
    prerequisites = {"cryogenic-science-pack"},
    order = "c-a",
    essential = false
}
data:extend({sucomagnet_tech})