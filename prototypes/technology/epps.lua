local utils = require("__hyperlanes-modpack__/utils")


local t2_epp = {
    type = "technology",
    name = "hyperlanes-t2-epp",
    -- icon_size = 256,
    -- icon = "__hyperlanes-modpack__/graphics/technology/t2.png",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t2.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t2_spcost_epp,
        ingredients = utils.t2_sp,
        time = 30
    },
    prerequisites = {"rocket-silo"},
    order = "c-a",
    essential = true
}
data:extend({t2_epp})


local t3_epp = {
    type = "technology",
    name = "hyperlanes-t3-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t3.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t3_spcost_epp,
        ingredients = utils.t3_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t2-epp", "space-science-pack", "production-science-pack", "utility-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t3_epp})


local t4_epp = {
    type = "technology",
    name = "hyperlanes-t4-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t4.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t4_spcost_epp,
        ingredients = utils.t4_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t3-epp", "metallurgic-science-pack", "agricultural-science-pack", "electromagnetic-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t4_epp})


local t5_epp = {
    type = "technology",
    name = "hyperlanes-t5-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t5.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t5_spcost_epp,
        ingredients = utils.t5_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t4-epp", "interstellar-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t5_epp})


local t6_epp = {
    type = "technology",
    name = "hyperlanes-t6-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t6.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t6_spcost_epp,
        ingredients = utils.t6_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t5-epp", "planetaris-compression-science", "craptonite-processing", "acidworking-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t6_epp})


local t7_epp = {
    type = "technology",
    name = "hyperlanes-t7-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t7.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t7_spcost_epp,
        ingredients = utils.t7_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t6-epp", "planetaris-refraction-science-pack", "moshine-tech-ai-tier-8"},
    order = "c-a",
    essential = true
}
data:extend({t7_epp})


local t8_epp = {
    type = "technology",
    name = "hyperlanes-t8-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t8.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t8_spcost_epp,
        ingredients = utils.t8_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t7-epp", "cryogenic-science-pack", "hydraulic-science-pack", "moshine-tech-ai-tier-10"},
    order = "c-a",
    essential = true
}
data:extend({t8_epp})


local t9_epp = {
    type = "technology",
    name = "hyperlanes-t9-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t9.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t9_spcost_epp,
        ingredients = utils.t9_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t8-epp", "s1_gas_manipulation_science_pack", "planetaris-pathological-science-pack", "galvanization-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t9_epp})

-- table.insert(solar_system_edge_tech.prerequisites, "s1_gas_manipulation_science_pack")
-- table.insert(solar_system_edge_tech.prerequisites, "planetaris-pathological-science-pack")
-- table.insert(solar_system_edge_tech.prerequisites, "galvanization-science-pack")


local t10_epp = {
    type = "technology",
    name = "hyperlanes-t10-epp",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/epp-tech-base.png",
            icon_size = 256
        },
        {
            icon = "__hyperlanes-modpack__/graphics/technology/t10.png",
            icon_size = 256,
            floating = true
        }
    },
    effects = {},
    unit =
    {
        count = utils.t10_spcost_epp,
        ingredients = utils.t10_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t9-epp", "promethium-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t10_epp})





-- ╒═════════╗ ╒══════════╗ ╒══════════╗      ╒═════════╗ ╒══════════╗ ╒══════════╗  ╒════════════╗   ╒════╗   ╒════╗ ╒══════════╗
-- └┐  ╓───┐ ║ └┐  ╓───┐  ║ └┐  ╓───┐  ║      └┐  ╓───┐ ║ │  ╓────┐  ║ └┐  ╓───┐  ║  │  ╓─┐  ╓─┐  ║   │    ╚╗  └┐  ╓╜ │ ╓─┐  ╓─┐ ║
--  │  ║   └─╜  │  ║   │  ║  │  ║   │  ║       │  ║   └─╜ │  ║    │  ║  │  ║   │  ║  │  ║ │  ║ │  ║   │  ╟┐ ╚╗  │  ║  └─╜ │  ║ └─╜
--  │  ╚══╗     │  ╚═══╛  ║  │  ╚═══╛  ║       │  ╚══╗    │  ║    │  ║  │  ╚═══╛  ║  │  ║ │  ║ │  ║   │  ║└┐ ╚╗ │  ║      │  ║    
--  │  ╓──╜     │  ╓──────╜  │  ╓──────╜       │  ╓──╜    │  ║    │  ║  │  ╓──────╜  │  ║ │  ║ │  ║   │  ║ └┐ ╚╗│  ║      │  ║    
--  │  ║   ╒═╗  │  ║         │  ║              │  ║   ╒═╗ │  ║ ╒═╗│  ║  │  ║         │  ║ └──╜ │  ║   │  ║  └┐ ╚╡  ║      │  ║    
-- ╒╛  ╚═══╛ ║ ╒╛  ╚╗       ╒╛  ╚╗            ╒╛  ╚═══╛ ║ │  ╚═╛ ╚╛  ║ ╒╛  ╚╗       ╒╛  ╚╗    ╒╛  ╚╗ ╒╛  ╚╗  └┐    ║     ╒╛  ╚╗   
-- └─────────╜ └────╜       └────╜            └─────────╜ └─────┐ ╓──╜ └────╜       └────╜    └────╜ └────╜   └────╜     └────╜ 

local epp_subgroup = {
    type = "item-subgroup",
    name = "hyperlanes-epps",
    group = "combat",
    order = "dz"
}
data:extend({epp_subgroup})


for tier = 2, 10, 1 do
    local epp_equipment = {
        type = "energy-shield-equipment",
        name = "hyperlanes-t" .. tier .. "-epp-equipment",
        order = "z-" .. utils.tier_order[tier],
        sprite =
        {
            filename = "__hyperlanes-modpack__/graphics/technology/t" .. tier .. ".png",
            width = 256,
            height = 256,
            priority = "medium",
            scale = 0.25 * 1.25
        },
        shape =
        {
            width = 2,
            height = 2,
            type = "full"
        },
        max_shield_value = 5,
        energy_source =
        {
            type = "electric",
            buffer_capacity = "1QJ",
            input_flow_limit = "" .. (250 * 1.3 ^ (tier - 2)) .. "kW",
            usage_priority = "primary-input"
        },
        energy_per_shield = "" .. (10 * 1.15 ^ (tier - 2)) .. "kJ",
        categories = {"armor"}
    }


    local epp_equipment_item = {
        type = "item",
        name = "hyperlanes-t" .. tier .. "-epp-equipment",
        icons = {
            {
                icon = "__hyperlanes-modpack__/graphics/icons/empty.png",
                icon_size = 64
            },
            {
                icon = "__hyperlanes-modpack__/graphics/technology/t" .. tier .. ".png",
                icon_size = 256,
                scale = 0.125 * 1.25,
                floating = true
            }
        },
        stack_size = 20,
        weight = 50 * kg,
        subgroup = "hyperlanes-epps",
        order = utils.tier_order[tier],
        place_as_equipment_result = "hyperlanes-t" .. tier .. "-epp-equipment"
    }


    data:extend({epp_equipment, epp_equipment_item})
end


-- Recipes
local t2_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t2-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "energy-shield-equipment", amount = 1},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "plastic-bar", amount = 100},
        {type = "item", name = "advanced-circuit", amount = 50},
        {type = "item", name = "processing-unit", amount = 50},
    },
    energy_required = 30.0,
    results = {
        {type = "item", name = "hyperlanes-t2-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
    -- surface_conditions = {
    --     {
    --         property="gravity",
    --         min=0,
    --         max=0,
    --     }
    -- }
}
data:extend({t2_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t2-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t2-epp-equipment"
})


local t3_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t3-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t2-epp-equipment", amount = 1},
        {type = "item", name = "alumina-crushed", amount = 200},
        {type = "item", name = "ice", amount = 200},
        {type = "item", name = "processing-unit", amount = 100},
        {type = "item", name = "muluna-roboport-propellant-barrel", amount = 20},
    },
    energy_required = 45.0,
    results = {
        {type = "item", name = "hyperlanes-t3-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t3_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t3-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t3-epp-equipment"
})


local t4_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t4-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t3-epp-equipment", amount = 1},
        {type = "item", name = "tungsten-carbide", amount = 400},
        {type = "item", name = "bioflux", amount = 400},
        {type = "item", name = "supercapacitor", amount = 400},
        {type = "item", name = "tungsten-plate", amount = 50, quality_min = "uncommon"},
        {type = "item", name = "carbon-fiber", amount = 50, quality_min = "uncommon"},
        {type = "item", name = "superconductor", amount = 50, quality_min = "uncommon"},
    },
    energy_required = 60.0,
    results = {
        {type = "item", name = "hyperlanes-t4-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t4_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t4-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t4-epp-equipment"
})


local t5_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t5-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t4-epp-equipment", amount = 1},
        {type = "item", name = "plutonium-238", amount = 50},
        {type = "item", name = "plutonium-239", amount = 200},
        {type = "item", name = "muluna-basic-hard-drive-astronomical-data", amount = 50},
        {type = "item", name = "muluna-microcellular-plastic", amount = 100, quality_min = "uncommon"},
    },
    energy_required = 75.0,
    results = {
        {type = "item", name = "hyperlanes-t5-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t5_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t5-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t5-epp-equipment"
})


local t6_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t6-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t5-epp-equipment", amount = 1},
        {type = "item", name = "planetaris-glass-panel", amount = 350},
        {type = "item", name = "lead-plate", amount = 350},
        {type = "item", name = "craptonite-frame", amount = 350},
        {type = "item", name = "planetaris-heavy-glass", amount = 100, quality_min = "rare"},
        {type = "item", name = "anti-corrosion-cladding", amount = 50, quality_min = "rare"},
        {type = "item", name = "hyperlanes-metamaterial-microsuspension-barrel", amount = 50},
    },
    energy_required = 90.0,
    results = {
        {type = "item", name = "hyperlanes-t6-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t6_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t6-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t6-epp-equipment"
})


local t7_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t7-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t6-epp-equipment", amount = 1},
        {type = "item", name = "ai-tier-8", amount = 10},
        {type = "item", name = "planetaris-crystalization-motor", amount = 500},
        {type = "item", name = "glass", amount = 200, quality_min = "epic"},
        {type = "item", name = "planetaris-polished-diamond", amount = 200, quality_min = "epic"},
    },
    energy_required = 105.0,
    results = {
        {type = "item", name = "hyperlanes-t7-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t7_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t7-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t7-epp-equipment"
})


local t8_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t8-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t7-epp-equipment", amount = 1},
        {type = "item", name = "quantum-processor", amount = 750},
        {type = "item", name = "maraxsis-glass-panes", amount = 750},
        {type = "item", name = "lithium-plate", amount = 250, quality_min = "legendary"},
        {type = "item", name = "limestone", amount = 250, quality_min = "legendary"},
    },
    energy_required = 120.0,
    results = {
        {type = "item", name = "hyperlanes-t8-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t8_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t8-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t8-epp-equipment"
})


local t9_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t9-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t8-epp-equipment", amount = 1},
        {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 1000},
        {type = "item", name = "planetaris-polimer-skin", amount = 1000},
        {type = "item", name = "galvanized-steel-plate", amount = 1000},
        {type = "item", name = "ske_mesh", amount = 500, quality_min = "legendary"},
        {type = "item", name = "planetaris-magnesium-sheet", amount = 500, quality_min = "legendary"},
        {type = "item", name = "electric-coil", amount = 500, quality_min = "legendary"},
    },
    energy_required = 135.0,
    results = {
        {type = "item", name = "hyperlanes-t9-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t9_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t9-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t9-epp-equipment"
})


local t10_epp_recipe = {
    type = "recipe",
    name = "hyperlanes-t10-epp-equipment",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-t9-epp-equipment", amount = 1},
        {type = "item", name = "hyperlanes-antimatter-particulate", amount = 200},
        {type = "item", name = "hyperlanes-time-crystal-a", amount = 5},
        {type = "item", name = "hyperlanes-time-crystal-b", amount = 5},
        {type = "item", name = "iron-plate", amount = 1000, quality_min = "mythic"},
        {type = "item", name = "ice", amount = 1000, quality_min = "mythic"},
        {type = "item", name = "carbon", amount = 1000, quality_min = "mythic"},
    },
    energy_required = 150.0,
    results = {
        {type = "item", name = "hyperlanes-t10-epp-equipment", amount = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal"}
    },
    allow_productivity = false,
    categories = {"advanced-crafting"},
    auto_recycle = true,
}
data:extend({t10_epp_recipe})
table.insert(data.raw["technology"]["hyperlanes-t10-epp"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-t10-epp-equipment"
})