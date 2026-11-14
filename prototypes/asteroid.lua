local utils = require("__hyperlanes-modpack__/utils")


local planet_asteroid_crushing_results = {
    ["nauvis"] = nil,
    ["muluna"] = nil,
    ["fulgora"] = {
        {type = "item", name = "scrap", amount = 20},
        {type = "item", name = "hyperlanes-fulgora-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["gleba"] = {
        {type = "item", name = "yumako", amount = 10},
        {type = "item", name = "jellynut", amount = 10},
        {type = "item", name = "hyperlanes-gleba-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["vulcanus"] = {
        {type = "item", name = "coal", amount = 30},
        {type = "item", name = "hyperlanes-vulcanus-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["cerys"] = {
        {type = "item", name = "cerys-nuclear-scrap", amount = 10},
        {type = "item", name = "hyperlanes-cerys-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["arig"] = {
        {type = "item", name = "stone", amount = 20},
        {type = "item", name = "planetaris-sandstone-foundation", amount = 10},
        {type = "item", name = "hyperlanes-arig-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["muria"] = {
        {type = "item", name = "acidophile-lichen", amount = 10},
        {type = "item", name = "hyperlanes-muria-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["rubia"] = {
        {type = "item", name = "rubia-cupric-scrap", amount = 10},
        {type = "item", name = "rubia-ferric-scrap", amount = 10},
        {type = "item", name = "hyperlanes-rubia-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["hyarion"] = nil,
    ["moshine"] = {
        {type = "item", name = "neodymium", amount = 20},
        {type = "item", name = "hyperlanes-moshine-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["aquilo"] = {
        {type = "item", name = "ice-platform", amount = 20},
        {type = "item", name = "hyperlanes-aquilo-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["maraxsis"] = {
        {type = "item", name = "limestone", amount = 20},
        {type = "item", name = "hyperlanes-maraxsis-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["paracelsin"] = {
        {type = "item", name = "sphalerite", amount = 10},
        {type = "item", name = "tetrahedrite", amount = 10},
        {type = "item", name = "hyperlanes-paracelsin-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["tellus"] = {
        {type = "item", name = "planetaris-chloroplast-fruit", amount = 10},
        {type = "item", name = "planetaris-mushroom-cap", amount = 10},
        {type = "item", name = "hyperlanes-tellus-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["vesta"] = {
        {type = "item", name = "ske_algea_clump", amount = 15},
        {type = "item", name = "hyperlanes-vesta-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    },
    ["panglia"] = {
        {type = "item", name = "panglia_panglite", amount = 20},
        {type = "item", name = "hyperlanes-panglia-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.30},
    }
}

local planet_advanced_asteroid_crushing_results = {
    ["nauvis"] = nil,
    ["muluna"] = nil,
    ["fulgora"] = {
        {type = "item", name = "scrap", amount = 10},
        {type = "item", name = "holmium-plate", amount = 4},
        {type = "item", name = "hyperlanes-fulgora-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["gleba"] = {
        {type = "item", name = "yumako", amount = 5},
        {type = "item", name = "jellynut", amount = 5},
        {type = "item", name = "carbon-fiber", amount = 4},
        {type = "item", name = "hyperlanes-gleba-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["vulcanus"] = {
        {type = "item", name = "coal", amount = 15},
        {type = "item", name = "tungsten-ore", amount = 8},
        {type = "item", name = "hyperlanes-vulcanus-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["cerys"] = {
        {type = "item", name = "cerys-nuclear-scrap", amount = 5},
        {type = "item", name = "plutonium-239", amount = 1},
        {type = "item", name = "plutonium-238", amount = 1, independent_probability = 0.20},
        {type = "item", name = "hyperlanes-cerys-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["arig"] = {
        {type = "item", name = "stone", amount = 10},
        {type = "item", name = "planetaris-sandstone-foundation", amount = 5},
        {type = "item", name = "planetaris-cactus", amount = 5},
        {type = "item", name = "hyperlanes-arig-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["muria"] = {
        {type = "item", name = "acidophile-lichen", amount = 5},
        {type = "item", name = "hyperlanes-purified-lead", amount = 2},
        {type = "item", name = "hyperlanes-muria-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["rubia"] = {
        {type = "item", name = "rubia-cupric-scrap", amount = 5},
        {type = "item", name = "rubia-ferric-scrap", amount = 5},
        {type = "item", name = "rubia-bacteria-A", amount = 2},
        {type = "item", name = "rubia-bacteria-B", amount = 2},
        {type = "item", name = "hyperlanes-rubia-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["hyarion"] = nil,
    ["moshine"] = {
        {type = "item", name = "neodymium", amount = 10},
        {type = "item", name = "datacell-raw-data", amount = 1},
        {type = "item", name = "hyperlanes-moshine-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["aquilo"] = {
        {type = "item", name = "ice-platform", amount = 10},
        {type = "item", name = "lithium", amount = 4},
        {type = "item", name = "hyperlanes-aquilo-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["maraxsis"] = {
        {type = "item", name = "limestone", amount = 10},
        {type = "item", name = "salt", amount = 3},
        {type = "item", name = "maraxsis-coral", amount = 3},
        {type = "item", name = "hyperlanes-maraxsis-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["paracelsin"] = {
        {type = "item", name = "sphalerite", amount = 5},
        {type = "item", name = "tetrahedrite", amount = 5},
        {type = "item", name = "zinc", amount = 1},
        {type = "item", name = "hyperlanes-paracelsin-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["tellus"] = {
        {type = "item", name = "planetaris-chloroplast-fruit", amount = 5},
        {type = "item", name = "planetaris-mushroom-cap", amount = 5},
        {type = "item", name = "planetaris-wasp-egg", amount = 1},
        {type = "item", name = "hyperlanes-tellus-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["vesta"] = {
        {type = "item", name = "ske_algea_clump", amount = 5},
        {type = "item", name = "ske_algea_clump_rare", amount = 1},
        {type = "item", name = "ske_ammonia_chilled_plate", amount = 1},
        {type = "item", name = "hyperlanes-vesta-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["panglia"] = {
        {type = "item", name = "panglia_panglite", amount = 10},
        {type = "item", name = "datacell-timewarp_data", amount = 1},
        {type = "item", name = "hyperlanes-panglia-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    }
}


local planet_associated_asteroids = {
    ["nauvis"] = {"metallic-asteroid-chunk", "carbonic-asteroid-chunk", "oxide-asteroid-chunk"},
    ["muluna"] = {"anorthite-chunk"},
    ["fulgora"] = {"hyperlanes-fulgora-asteroid-chunk"},
    ["gleba"] = {"hyperlanes-gleba-asteroid-chunk"},
    ["vulcanus"] = {"hyperlanes-vulcanus-asteroid-chunk"},
    ["cerys"] = {"hyperlanes-cerys-asteroid-chunk"},
    ["arig"] = {"hyperlanes-arig-asteroid-chunk"},
    ["muria"] = {"hyperlanes-muria-asteroid-chunk"},
    ["rubia"] = {"hyperlanes-rubia-asteroid-chunk"},
    ["hyarion"] = {"bismuth-asteroid-chunk"},
    ["moshine"] = {"hyperlanes-moshine-asteroid-chunk"},
    ["aquilo"] = {"hyperlanes-aquilo-asteroid-chunk"},
    ["maraxsis"] = {"hyperlanes-maraxsis-asteroid-chunk"},
    ["paracelsin"] = {"hyperlanes-paracelsin-asteroid-chunk"},
    ["tellus"] = {"hyperlanes-tellus-asteroid-chunk"},
    ["vesta"] = {"hyperlanes-vesta-asteroid-chunk"},
    ["panglia"] = {"hyperlanes-panglia-asteroid-chunk"}
}






for index, planet_name in ipairs(utils.planets) do
    if planet_name == "nauvis" then goto continue end
    if planet_name == "muluna" then goto continue end
    if planet_name == "hyarion" then goto continue end

    -- Item
    local asteroid_chunk_item = table.deepcopy(data.raw["item"]["metallic-asteroid-chunk"])
    asteroid_chunk_item.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk_item.order = "d[hyperlanes]-e[chunk]-" .. utils.planet_tier_orders[planet_name]

    -- Asteroid chunk    
    local asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
    asteroid_chunk.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk.minable.result = "hyperlanes-" .. planet_name .. "-asteroid-chunk"

    -- Add this to planet asteroid_spawn_definitions
    data.raw["planet"][planet_name].asteroid_spawn_definitions = data.raw["planet"][planet_name].asteroid_spawn_definitions or {}
    table.insert(data.raw["planet"][planet_name].asteroid_spawn_definitions, {
        type = "asteroid-chunk",
        asteroid = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
        probability = 0.0100,
        speed = 0.01666666666
    })


    -- Recipes
    if planet_asteroid_crushing_results[planet_name] ~= nil then
        local asteroid_chunk_crushing = {
            type = "recipe",
            name = "hyperlanes-" .. planet_name .. "-asteroid-crushing",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            ingredients =
            {
                {type = "item", name = "hyperlanes-" .. planet_name .. "-asteroid-chunk", amount = 1},
            },
            energy_required = 2.0,
            results = table.deepcopy(planet_asteroid_crushing_results[planet_name]),
            main_product = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local advanced_asteroid_chunk_crushing = {
            type = "recipe",
            name = "hyperlanes-advanced-" .. planet_name .. "-asteroid-crushing",
            enabled = false,
            subgroup = "space-crushing",
            order = "c-a-z-c",
            ingredients =
            {
                {type = "item", name = "hyperlanes-" .. planet_name .. "-asteroid-chunk", amount = 1},
            },
            energy_required = 5.0,
            results = table.deepcopy(planet_advanced_asteroid_crushing_results[planet_name]),
            main_product = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            allow_decomposition = false
        }

        data:extend({asteroid_chunk_crushing, advanced_asteroid_chunk_crushing})
    end

    

    data:extend({asteroid_chunk_item, asteroid_chunk})
    :: continue ::
end


-- ╒════╗ ╒════╗ ╒══════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗ ╒════╗      ╒══════╗  ╒════╗   ╒════╗ ╒════════╗ 
-- └┐  ╓╜ └┐  ╓╜ └┐  ╓───┐  ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║ └┐  ╓╜      └─┐  ╓─╜  │    ╚╗  └┐  ╓╜ │  ╓───┐ ║ 
--  │  ║   │  ║   │  ║   │  ║ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜  │  ║         │  ║    │  ╟┐ ╚╗  │  ║  │  ║   └─╜ 
--  │  ║   │  ║   │  ╚═══╛  ║ │  ║         │  ╚══╛  ║  │  ║         │  ║         │  ║    │  ║└┐ ╚╗ │  ║  │  ║       
--  │  ║   │  ║   │  ╓──────╜ │  ║         └──┐  ╓──╜  │  ║         │  ║         │  ║    │  ║ └┐ ╚╗│  ║  │  ║ ╒════╗
--  │  ║   │  ║   │  ║        │  ║    ╒═╗     │  ║     │  ║    ╒═╗  │  ║   ╒═╗   │  ║    │  ║  └┐ ╚╡  ║  │  ║ └┐  ╓╜
--  │  ╚═══╛  ║  ╒╛  ╚╗       │  ╚════╛ ║    ╒╛  ╚╗    │  ╚════╛ ║ ╒╛  ╚═══╛ ║ ╒═╛  ╚═╗ ╒╛  ╚╗  └┐    ║  │  ╚══╛  ║ 
--  └─────────╜  └────╜       └─────────╜    └────╜    └─────────╜ └─────────╜ └──────╜ └────╜   └────╜  └────────╜ 


local data_base = 0.5
local data_req_mult_per_tier = 1.35
local data_req_mult_per_quality = 1.75

for index, planet_name in ipairs(utils.planets) do
    for index2, asteroid_name in ipairs(planet_associated_asteroids[planet_name]) do
        local asteroid_chunk_upcycle_broken_to_normal = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q0-to-q1",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q1.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q1.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "broken", quality_max = "broken"},
                {type = "fluid", name = "water", amount = math.ceil(data_base * (data_req_mult_per_quality ^ -1) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1))}
            },
            energy_required = 2.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "broken", quality_max = "broken", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_normal_to_uncommon = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q1-to-q2",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q2.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q2.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "normal", quality_max = "normal"},
                {type = "fluid", name = "muluna-astronomical-data", amount = math.ceil(data_base * (data_req_mult_per_quality ^ 0) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1)), fluidbox_index = 30}
            },
            energy_required = 3.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "uncommon", quality_max = "uncommon", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_uncommon_to_rare = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q2-to-q3",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q3.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q3.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "uncommon", quality_max = "uncommon"},
                {type = "fluid", name = "muluna-astronomical-data", amount = math.ceil(data_base * (data_req_mult_per_quality ^ 1) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1)), fluidbox_index = 30}
            },
            energy_required = 4.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "uncommon", quality_max = "uncommon", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "rare", quality_max = "rare", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_rare_to_epic = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q3-to-q4",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q4.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q4.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "rare", quality_max = "rare"},
                {type = "fluid", name = "solved-equation-data", amount = math.ceil(data_base * (data_req_mult_per_quality ^ 2) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1)), fluidbox_index = 30},
            },
            energy_required = 5.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "rare", quality_max = "rare", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "epic", quality_max = "epic", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_epic_to_legendary = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q4-to-q5",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q5.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q5.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "epic", quality_max = "epic"},
                {type = "fluid", name = "cosmic-data", amount = math.ceil(data_base * (data_req_mult_per_quality ^ 3) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1)), fluidbox_index = 30}
            },
            energy_required = 6.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "epic", quality_max = "epic", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "legendary", quality_max = "legendary", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_legendary_to_mythic = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q5-to-q6",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q6.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q6.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "legendary", quality_max = "legendary"},
                {type = "fluid", name = "cosmic-data", amount = math.ceil(data_base * (data_req_mult_per_quality ^ 4) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1)), fluidbox_index = 30}
            },
            energy_required = 7.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "legendary", quality_max = "legendary", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "mythic", quality_max = "mythic", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_mythic_to_ethereal = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q6-to-q7",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q7.png",
            icons = {
                {
                    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png"
                },
                {
                    icon = "__base__/graphics/icons/arrows/up-arrow.png",
                    shift = {0, 6},
                    scale = 0.20,
                    floating = true
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/q7.png",
                    shift = {0, -6},
                    scale = 0.25,
                    floating = true
                }
            },
            ingredients = {
                {type = "item", name = asteroid_name, amount = 1, quality_min = "mythic", quality_max = "mythic"},
                {type = "fluid", name = "timewarp_data", amount = math.ceil(data_base * (data_req_mult_per_quality ^ 5) * data_req_mult_per_tier ^ (utils.planet_tier_associations[planet_name] - 1)), fluidbox_index = 30}
            },
            energy_required = 8.0 * 1.35 ^ (utils.planet_tier_associations[planet_name] - 1),
            results = {
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "mythic", quality_max = "mythic", independent_probability = 0.40},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "ethereal", quality_max = "ethereal", independent_probability = 0.10},
            },
            main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }


        data:extend({
            asteroid_chunk_upcycle_broken_to_normal,
            asteroid_chunk_upcycle_normal_to_uncommon,
            asteroid_chunk_upcycle_uncommon_to_rare,
            asteroid_chunk_upcycle_rare_to_epic,
            asteroid_chunk_upcycle_epic_to_legendary,
            asteroid_chunk_upcycle_legendary_to_mythic,
            asteroid_chunk_upcycle_mythic_to_ethereal,
        })
    end
end