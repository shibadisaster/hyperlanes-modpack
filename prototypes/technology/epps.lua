local t2_epp = {
    type = "technology",
    name = "hyperlanes-t2-epp",
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 1000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    },
    prerequisites = {"rocket-silo"},
    order = "c-a"
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
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t2-epp", "space-science-pack"},
    order = "c-a"
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
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t3-epp", "metallurgic-science-pack", "agricultural-science-pack", "electromagnetic-science-pack"},
    order = "c-a"
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
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"interstellar-science-pack", 1}
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t4-epp", "interstellar-science-pack"},
    order = "c-a"
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
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"interstellar-science-pack", 1},
            {"planetaris-compression-science-pack", 1},
            {"biorecycling-science-pack", 1},
            {"acidworking-science-pack", 1}
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t5-epp", "planetaris-compression-science", "craptonite-processing", "acidworking-science-pack"},
    order = "c-a"
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
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"interstellar-science-pack", 1},
            {"planetaris-compression-science-pack", 1},
            {"biorecycling-science-pack", 1},
            {"acidworking-science-pack", 1},
            {"planetaris-polishing-science-pack", 1},
            {"planetaris-refraction-science-pack", 1}
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t6-epp", "planetaris-refraction-science-pack", "moshine-tech-ai-tier-5"}, 
    order = "c-a"
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
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"interstellar-science-pack", 1},
            {"planetaris-compression-science-pack", 1},
            {"biorecycling-science-pack", 1},
            {"acidworking-science-pack", 1},
            {"planetaris-polishing-science-pack", 1},
            {"planetaris-refraction-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"hydraulic-science-pack", 1}
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t7-epp", "cryogenic-science-pack", "hydraulic-science-pack"},
    order = "c-a"
}
data:extend({t8_epp})


local t10_epp = {
    type = "technology",
    name = "hyperlanes-t10-epp",
    icon_size = 256,
    icon = "__space-age__/graphics/technology/solar-system-edge.png",
    effects = {},
    unit =
    {
        count = 30000,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"military-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1},
            {"metallurgic-science-pack", 1},
            {"agricultural-science-pack", 1},
            {"electromagnetic-science-pack", 1},
            {"interstellar-science-pack", 1},
            {"planetaris-compression-science-pack", 1},
            {"biorecycling-science-pack", 1},
            {"acidworking-science-pack", 1},
            {"planetaris-polishing-science-pack", 1},
            {"planetaris-refraction-science-pack", 1},
            {"cryogenic-science-pack", 1},
            {"hydraulic-science-pack", 1},
            {"gas-manipulation-science-pack", 1},
            {"planetaris-bioengineering-science-pack", 1},
            {"galvanization-science-pack", 1},
            {"promethium-science-pack", 1}
        },
        time = 60
    },
    prerequisites = {"hyperlanes-t8-epp", "promethium-science-pack"},
    order = "c-a"
}
data:extend({t10_epp})