local utils = require("__hyperlanes-modpack__/utils")


local t2_epp = {
    type = "technology",
    name = "hyperlanes-t2-epp",
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 1000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 2000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 4000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 7000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 10000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 14000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 20000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 30000,
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
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 50000,
        ingredients = utils.t10_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-t9-epp", "promethium-science-pack"},
    order = "c-a",
    essential = true
}
data:extend({t10_epp})