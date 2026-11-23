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

for tier = 2, 10, 1 do
    local epp_equipment = {
        type = "energy-shield-equipment",
        name = "hyperlanes-t" .. tier .. "-epp-equipment",
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
        energy_per_shield = "" .. (10 * 1.3 ^ (tier - 2)) .. "kJ",
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
        place_as_equipment_result = "hyperlanes-t" .. tier .. "-epp-equipment"
    }


    data:extend({epp_equipment, epp_equipment_item})
end