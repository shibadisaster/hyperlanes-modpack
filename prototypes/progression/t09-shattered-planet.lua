local utils = require("__hyperlanes-modpack__/utils")


-- Antimatter chunk
local ac_recipe = {
    type = "recipe",
    name = "hyperlanes-antimatter-chunk",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "promethium-asteroid-chunk", amount = 1},
        {type = "fluid", name = "fusion-plasma", amount = 2},
        {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 2},
    },
    energy_required = 5.0,
    results = {
        {type = "item", name = "hyperlanes-antimatter-chunk", amount = 1, shared_probability = {min = 0.00, max = 0.10}},
        {type = "item", name = "promethium-asteroid-chunk", amount = 1, ignored_by_productivity = 1, shared_probability = {min = 0.10, max = 1.00}},
    },
    main_product = "hyperlanes-antimatter-chunk",
    allow_productivity = true,
    categories = {"cryogenics"},
    surface_conditions = {
        {
            property = "gravity",
            min = 0.0,
            max = 0.0
        }
    },
    auto_recycle = true
}
data:extend({ac_recipe})


-- Antimatter particulate
local ap_recipe = {
    type = "recipe",
    name = "hyperlanes-antimatter-particulate",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-antimatter-chunk", amount = 1},
    },
    energy_required = 5.0,
    results = {
        {type = "item", name = "hyperlanes-antimatter-particulate", amount_min = 10, amount_max = 30, reset_freshness_on_craft = true},
    },
    main_product = "hyperlanes-antimatter-particulate",
    allow_productivity = true,
    categories = {"crushing"},
    surface_conditions = {
        {
            property = "gravity",
            min = 0.0,
            max = 0.0
        }
    },
    auto_recycle = false
}
data:extend({ap_recipe})


-- Antimatter particulate restabilization
local ap_restab_recipe = {
    type = "recipe",
    name = "hyperlanes-antimatter-particulate-restabilization",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-antimatter-particulate", amount = 20},
        {type = "fluid", name = "planetaris-pure-light", amount = 20}
    },
    energy_required = 1.0,
    results = {
        {type = "item", name = "hyperlanes-antimatter-particulate", amount = 19, ignored_by_productivity = 19, reset_freshness_on_craft = true},
    },
    main_product = "hyperlanes-antimatter-particulate",
    allow_productivity = false,
    categories = {"refraction"},
    auto_recycle = false
}
data:extend({ap_restab_recipe})


-- Time crystal
local time_crystal_recipe = {
    type = "recipe",
    name = "hyperlanes-time-crystal-a",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "planetaris-polished-diamond", amount = 4, quality_min = "legendary"},
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, quality_min = "legendary"},
        {type = "item", name = "hyperlanes-antimatter-particulate", amount = 20},
        {type = "fluid", name = "planetaris-pure-light", amount = 20}
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-time-crystal-a", amount = 1, reset_freshness_on_craft = true},
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, quality_min = "legendary", independent_probability = 0.98},
    },
    main_product = "hyperlanes-time-crystal-a",
    allow_productivity = true,
    categories = {"refraction"},
    auto_recycle = false
}
data:extend({time_crystal_recipe})


-- Unstable substrate
local us_recipe = {
    type = "recipe",
    name = "hyperlanes-unstable-substrate",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-time-crystal-b", amount = 1},
        {type = "item", name = "hyperlanes-antimatter-particulate", amount = 2, spoil_weight = 0.0},
        {type = "fluid", name = "water", amount = 5},
    },
    energy_required = 0.8,
    results = {
        {type = "item", name = "hyperlanes-time-crystal-b", amount = 1, ignored_by_productivity = 1},
        {type = "item", name = "hyperlanes-unstable-substrate", amount = 1, reset_freshness_on_craft = true},
    },
    main_product = "hyperlanes-unstable-substrate",
    allow_productivity = true,
    categories = {"crafting-with-fluid"},
    auto_recycle = false
}
data:extend({us_recipe})


-- Module 5s
local speed_5_recipe = {
    type = "recipe",
    name = "hyperlanes-speed-module-5",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "cerys-overclock-module", amount = 1, quality_min = "legendary"},
        {type = "item", name = "quantum-processor", amount = 5, quality_min = "rare"},
        {type = "item", name = "hyperlanes-antimatter-chunk", amount = 1},
        {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 100},
        {type = "item", name = "electric-coil", amount = 3, quality_min = "uncommon"},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-speed-module-5", amount = 1},
    },
    main_product = "hyperlanes-speed-module-5",
    allow_productivity = true,
    categories = {"magnetics"},
    auto_recycle = false
}
data:extend({speed_5_recipe})

local productivity_5_recipe = {
    type = "recipe",
    name = "hyperlanes-productivity-module-5",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "cerys-radioactive-module-charged", amount = 1, quality_min = "legendary"},
        {type = "item", name = "quantum-processor", amount = 5, quality_min = "rare"},
        {type = "item", name = "hyperlanes-antimatter-chunk", amount = 1},
        {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 100},
        {type = "item", name = "planetaris-wasp-egg", amount = 3, quality_min = "uncommon"},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-productivity-module-5", amount = 1},
    },
    main_product = "hyperlanes-productivity-module-5",
    allow_productivity = true,
    categories = {"magnetics"},
    auto_recycle = false
}
data:extend({productivity_5_recipe})

local efficiency_5_recipe = {
    type = "recipe",
    name = "hyperlanes-efficiency-module-5",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "rubia-efficiency-module4", amount = 1, quality_min = "legendary"},
        {type = "item", name = "quantum-processor", amount = 5, quality_min = "rare"},
        {type = "item", name = "hyperlanes-antimatter-chunk", amount = 1},
        {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 100},
        {type = "item", name = "ske_algea_clump_rare", amount = 3, quality_min = "uncommon"},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-efficiency-module-5", amount = 1},
    },
    main_product = "hyperlanes-efficiency-module-5",
    allow_productivity = true,
    categories = {"magnetics"},
    auto_recycle = false
}
data:extend({efficiency_5_recipe})


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜
local antimatter_chunk_tech = {
    type = "technology",
    name = "hyperlanes-antimatter-chunk",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-antimatter-chunk"
        }
    },
    research_trigger = {
        type = "craft-item",
        item = "promethium-asteroid-chunk",
        count = 1
    },
    prerequisites = {"stellar-discovery-solar-system-edge"},
    order = "c-a",
    essential = false
}
data:extend({antimatter_chunk_tech})


local productivity_5_tech = {
    type = "technology",
    name = "hyperlanes-productivity-module-5",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-productivity-module-5"
        }
    },
    unit =
    {
        count = utils.t9_spcost_bigtech,
        ingredients = utils.t9_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-antimatter-chunk"},
    order = "c-a",
    essential = false
}
data:extend({productivity_5_tech})


local speed_5_tech = {
    type = "technology",
    name = "hyperlanes-speed-module-5",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-speed-module-5"
        }
    },
    unit =
    {
        count = utils.t9_spcost_bigtech,
        ingredients = utils.t9_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-antimatter-chunk"},
    order = "c-a",
    essential = false
}
data:extend({speed_5_tech})


local efficiency_5_tech = {
    type = "technology",
    name = "hyperlanes-efficiency-module-5",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-efficiency-module-5"
        }
    },
    unit =
    {
        count = utils.t9_spcost_bigtech,
        ingredients = utils.t9_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-antimatter-chunk"},
    order = "c-a",
    essential = false
}
data:extend({efficiency_5_tech})


local antimatter_processing_tech = {
    type = "technology",
    name = "hyperlanes-antimatter-processing",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-antimatter-particulate"
        },
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-antimatter-particulate-restabilization"
        }
    },
    research_trigger = {
        type = "craft-item",
        item = "hyperlanes-antimatter-chunk",
        count = 1
    },
    prerequisites = {"hyperlanes-antimatter-chunk"},
    order = "c-a",
    essential = false
}
data:extend({antimatter_processing_tech})


local time_crystal_tech = {
    type = "technology",
    name = "hyperlanes-time-crystal",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-time-crystal-a"
        },
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-unstable-substrate"
        }
    },
    research_trigger = {
        type = "craft-item",
        item = "hyperlanes-antimatter-particulate",
        count = 100
    },
    prerequisites = {"hyperlanes-antimatter-processing"},
    order = "c-a",
    essential = false
}
data:extend({time_crystal_tech})