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
    ["hyarion"] = {
        {type = "item", name = "planetaris_raw_bismuth", amount = 1},
        {type = "item", name = "planetaris-polished-ruby", amount = 1, independent_probability = 0.5},
        {type = "item", name = "planetaris-polished-sapphire", amount = 1, independent_probability = 0.5},
        {type = "item", name = "planetaris-polished-emerald", amount = 1, independent_probability = 0.5},
        {type = "item", name = "planetaris-polished-diamond", amount = 1, independent_probability = 0.5},
        {type = "item", name = "bismuth-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
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

local asteroid_item_graphics = {
    ["metallic-asteroid-chunk"] = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
    ["carbonic-asteroid-chunk"] = "__space-age__/graphics/icons/carbonic-asteroid-chunk.png",
    ["oxide-asteroid-chunk"] = "__space-age__/graphics/icons/oxide-asteroid-chunk.png",
    ["anorthite-chunk"] = "__muluna-graphics__/graphics/icons/asteroid-chunks/anorthite-chunk.png",
    ["hyperlanes-fulgora-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/fulgora.png",
    ["hyperlanes-gleba-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/gleba.png",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/vulcanus.png",
    ["hyperlanes-cerys-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/cerys.png",
    ["hyperlanes-arig-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/arig.png",
    ["hyperlanes-muria-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/muria.png",
    ["hyperlanes-rubia-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/rubia.png",
    ["bismuth-asteroid-chunk"] = "__planetaris-hyarion__/graphics/icons/bismuth-asteroid-chunk.png",
    ["hyperlanes-moshine-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/moshine.png",
    ["hyperlanes-aquilo-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/aquilo.png",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/maraxsis.png",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/paracelsin.png",
    ["hyperlanes-tellus-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/tellus.png",
    ["hyperlanes-vesta-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/vesta.png",
    ["promethium-asteroid-chunk"] = "__space-age__/graphics/icons/promethium-asteroid-chunk.png",
    ["hyperlanes-panglia-asteroid-chunk"] = "__hyperlanes-modpack__/graphics/icons/asteroid-items/panglia.png",
    ["crystalline-asteroid-chunk"] = "__Crystalline-Library__/graphics/icons/crystalline-asteroid-chunk.png"
}

local asteroid_chunk_replace_graphics = {
    ["metallic-asteroid-chunk"] = false,
    ["carbonic-asteroid-chunk"] = false,
    ["oxide-asteroid-chunk"] = false,
    ["anorthite-chunk"] = false,
    ["hyperlanes-fulgora-asteroid-chunk"] = true,
    ["hyperlanes-gleba-asteroid-chunk"] = true,
    ["hyperlanes-vulcanus-asteroid-chunk"] = true,
    ["hyperlanes-cerys-asteroid-chunk"] = true,
    ["hyperlanes-arig-asteroid-chunk"] = true,
    ["hyperlanes-muria-asteroid-chunk"] = true,
    ["hyperlanes-rubia-asteroid-chunk"] = true,
    ["bismuth-asteroid-chunk"] = false,
    ["hyperlanes-moshine-asteroid-chunk"] = true,
    ["hyperlanes-aquilo-asteroid-chunk"] = true,
    ["hyperlanes-maraxsis-asteroid-chunk"] = true,
    ["hyperlanes-paracelsin-asteroid-chunk"] = true,
    ["hyperlanes-tellus-asteroid-chunk"] = true,
    ["hyperlanes-vesta-asteroid-chunk"] = true,
    ["promethium-asteroid-chunk"] = false,
    ["hyperlanes-panglia-asteroid-chunk"] = true
}






for index, planet_name in ipairs(utils.planets) do
    if planet_name == "nauvis" then goto continue end
    if planet_name == "muluna" then goto continue end
    if planet_name == "hyarion" then goto continue end

    -- Item
    local asteroid_chunk_item = table.deepcopy(data.raw["item"]["metallic-asteroid-chunk"])
    asteroid_chunk_item.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk_item.localised_name = utils.asteroid_prefix[asteroid_chunk_item.name] .. " asteroid chunk"
    asteroid_chunk_item.order = "d[hyperlanes]-e[chunk]-" .. utils.planet_tier_orders[planet_name]
    asteroid_chunk_item.icon = asteroid_item_graphics["hyperlanes-" .. planet_name .. "-asteroid-chunk"]

    -- Asteroid chunk    
    local asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
    asteroid_chunk.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk.icon = asteroid_item_graphics["hyperlanes-" .. planet_name .. "-asteroid-chunk"]
    asteroid_chunk.localised_name = utils.asteroid_prefix[asteroid_chunk_item.name] .. " asteroid chunk"
    asteroid_chunk.minable.result = "hyperlanes-" .. planet_name .. "-asteroid-chunk"

    if asteroid_chunk_replace_graphics[asteroid_chunk.name] then
        asteroid_chunk.graphics_set.variations = {
            {
                color_texture = {
                    filename = "__hyperlanes-modpack__/graphics/asteroids/" .. planet_name .. "/color-1.png",
                    size = 50,
                    scale = 0.75
                },
                normal_map = {
                    filename = "__hyperlanes-modpack__/graphics/asteroids/" .. planet_name .. "/normal-1.png",
                    size = 50,
                    scale = 0.75
                },
                roughness_map = {
                    filename = "__hyperlanes-modpack__/graphics/asteroids/" .. planet_name .. "/roughness-1.png",
                    size = 50,
                    scale = 0.75
                },
            },
            {
                color_texture = {
                    filename = "__hyperlanes-modpack__/graphics/asteroids/" .. planet_name .. "/color-2.png",
                    size = 50,
                    scale = 0.75
                },
                normal_map = {
                    filename = "__hyperlanes-modpack__/graphics/asteroids/" .. planet_name .. "/normal-2.png",
                    size = 50,
                    scale = 0.75
                },
                roughness_map = {
                    filename = "__hyperlanes-modpack__/graphics/asteroids/" .. planet_name .. "/roughness-2.png",
                    size = 50,
                    scale = 0.75
                },
            }
        }
    end


    -- Add this to planet asteroid_spawn_definitions
    data.raw["planet"][planet_name].asteroid_spawn_definitions = data.raw["planet"][planet_name].asteroid_spawn_definitions or {}
    table.insert(data.raw["planet"][planet_name].asteroid_spawn_definitions, {
        type = "asteroid-chunk",
        asteroid = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
        probability = 0.0150,
        speed = 0.01666666666
    })


    -- Recipes
    if planet_asteroid_crushing_results[planet_name] ~= nil then
        local asteroid_chunk_crushing = {
            type = "recipe",
            name = "hyperlanes-" .. planet_name .. "-asteroid-crushing",
            localised_name = utils.asteroid_prefix[asteroid_chunk_item.name] .. " asteroid crushing",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            icons = {
                {
                    icon = asteroid_item_graphics["hyperlanes-" .. planet_name .. "-asteroid-chunk"]
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/crushing.png"
                }
            },
            ingredients =
            {
                {type = "item", name = "hyperlanes-" .. planet_name .. "-asteroid-chunk", amount = 1},
            },
            energy_required = 2.0,
            results = table.deepcopy(planet_asteroid_crushing_results[planet_name]),
            -- main_product = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
            -- main_product = planet_asteroid_crushing_results[planet_name][1].name,
            allow_productivity = true,
            categories = {"crushing"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local advanced_asteroid_chunk_crushing = {
            type = "recipe",
            name = "hyperlanes-advanced-" .. planet_name .. "-asteroid-crushing",
            localised_name = "Advanced " .. utils.asteroid_prefix_lowercase[asteroid_chunk_item.name] .. " asteroid crushing",
            enabled = false,
            subgroup = "space-crushing",
            order = "c-a-z-c",
            icons = {
                {
                    icon = asteroid_item_graphics["hyperlanes-" .. planet_name .. "-asteroid-chunk"]
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
                }
            },
            ingredients =
            {
                {type = "item", name = "hyperlanes-" .. planet_name .. "-asteroid-chunk", amount = 1},
            },
            energy_required = 5.0,
            results = table.deepcopy(planet_advanced_asteroid_crushing_results[planet_name]),
            -- main_product = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
            -- main_product = planet_asteroid_crushing_results[planet_name][1].name,
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


-- Advanced asteroid processing icons
data.raw["recipe"]["advanced-metallic-asteroid-crushing"].icon = nil
data.raw["recipe"]["advanced-metallic-asteroid-crushing"].icons = {
    {
        icon = asteroid_item_graphics["metallic-asteroid-chunk"]
    },
    {
        icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
    }
}

data.raw["recipe"]["advanced-carbonic-asteroid-crushing"].icon = nil
data.raw["recipe"]["advanced-carbonic-asteroid-crushing"].icons = {
    {
        icon = asteroid_item_graphics["carbonic-asteroid-chunk"]
    },
    {
        icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
    }
}

data.raw["recipe"]["advanced-oxide-asteroid-crushing"].icon = nil
data.raw["recipe"]["advanced-oxide-asteroid-crushing"].icons = {
    {
        icon = asteroid_item_graphics["oxide-asteroid-chunk"]
    },
    {
        icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
    }
}

data.raw["recipe"]["advanced-anorthite-crushing"].icon = nil
data.raw["recipe"]["advanced-anorthite-crushing"].icons = {
    {
        icon = asteroid_item_graphics["anorthite-chunk"]
    },
    {
        icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
    }
}

data.raw["recipe"]["advanced-crystalline-asteroid-crushing"].icon = nil
data.raw["recipe"]["advanced-crystalline-asteroid-crushing"].icons = {
    {
        icon = asteroid_item_graphics["crystalline-asteroid-chunk"]
    },
    {
        icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
    }
}



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
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Normal",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q1.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "broken", quality_max = "broken", shared_probability = {min = 0.00, max = 0.80}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal", shared_probability = {min = 0.80, max = 1.00}},
            },
            -- main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_normal_to_uncommon = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q1-to-q2",
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Enhanced",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q2.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "normal", quality_max = "normal", shared_probability = {min = 0.00, max = 0.40}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "uncommon", quality_max = "uncommon", shared_probability = {min = 0.40, max = 0.50}},
            },
            -- main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_uncommon_to_rare = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q2-to-q3",
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Industrial-grade",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q3.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "uncommon", quality_max = "uncommon", shared_probability = {min = 0.00, max = 0.40}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "rare", quality_max = "rare", shared_probability = {min = 0.40, max = 0.50}},
            },
            -- main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_rare_to_epic = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q3-to-q4",
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Precision-grade",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q4.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "rare", quality_max = "rare", shared_probability = {min = 0.00, max = 0.40}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "epic", quality_max = "epic", shared_probability = {min = 0.40, max = 0.50}},
            },
            -- main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_epic_to_legendary = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q4-to-q5",
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Space-grade",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q5.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "epic", quality_max = "epic", shared_probability = {min = 0.00, max = 0.40}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "legendary", quality_max = "legendary", shared_probability = {min = 0.40, max = 0.50}},
            },
            -- main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_legendary_to_mythic = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q5-to-q6",
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Interstellar-grade",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q6.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "legendary", quality_max = "legendary", shared_probability = {min = 0.00, max = 0.40}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "mythic", quality_max = "mythic", shared_probability = {min = 0.40, max = 0.50}},
            },
            -- main_product = asteroid_name,
            allow_productivity = false,
            categories = {"muluna-crusher-2"},
            auto_recycle = false,
            allow_decomposition = false
        }

        local asteroid_chunk_upcycle_mythic_to_ethereal = {
            type = "recipe",
            name = asteroid_name .. "-upcycling-q6-to-q7",
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk upcycling to Perfected",
            enabled = false,
            subgroup = "space-crushing",
            order = "b-a-z-c",
            -- icon = "__hyperlanes-modpack__/graphics/icons/q7.png",
            icons = {
                {
                    icon = asteroid_item_graphics[asteroid_name]
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
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "mythic", quality_max = "mythic", shared_probability = {min = 0.00, max = 0.40}},
                {type = "item", name = asteroid_name, amount = 1, ignored_by_stats = 1, ignored_by_productivity = 1, quality_min = "ethereal", quality_max = "ethereal", shared_probability = {min = 0.40, max = 0.50}},
            },
            -- main_product = asteroid_name,
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


-- Remove original upcycling recipes
data.raw["recipe"]["muluna-metallic-asteroid-chunk-upcycling"].enabled = false
data.raw["recipe"]["muluna-metallic-asteroid-chunk-upcycling"].hidden = true

data.raw["recipe"]["muluna-carbonic-asteroid-chunk-upcycling"].enabled = false
data.raw["recipe"]["muluna-carbonic-asteroid-chunk-upcycling"].hidden = true

data.raw["recipe"]["muluna-oxide-asteroid-chunk-upcycling"].enabled = false
data.raw["recipe"]["muluna-oxide-asteroid-chunk-upcycling"].hidden = true

data.raw["recipe"]["muluna-anorthite-chunk-upcycling"].enabled = false
data.raw["recipe"]["muluna-anorthite-chunk-upcycling"].hidden = true



-- Upcycling techs connected to each quality
local q3_upcycling_tech = {
    type = "technology",
    name = "hyperlanes-upcycling-q2-to-q3",
    -- icon_size = 256,
    -- icon = "__hyperlanes-modpack__/graphics/technology/osmium.png",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/upcycling-base.png",
            icon_size = 256,
            scale = 1.0
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            icon_size = 64,
            scale = 1.0
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/q3.png",
            icon_size = 64,
            scale = 0.5
        },
        {
            icon = "__muluna-graphics__/graphics/icons/raw-astronomical-data.png",
            icon_size = 64,
            scale = 2.00 / math.sqrt(2.0),
            shift = {43.84 * 1.50, -43.84 * 1.50},
            floating = true
        },
        {
            icon = "__muluna-graphics__/graphics/icons/raw-astronomical-data.png",
            icon_size = 64,
            scale =  2.00 / math.sqrt(2.0),
            shift = {-43.84 * 1.50, 43.84 * 1.50},
            floating = true
        },
    },
    effects = {},
    unit =
    {
        count = utils.t5_spcost_bigtech,
        ingredients = utils.t5_sp_arig_rubia,
        time = 60
    },
    prerequisites = {"quality-module-2", "muluna-asteroid-upcycling"},
    order = "c-a",
    essential = false
}
data:extend({q3_upcycling_tech})

for index, asteroid_name in ipairs(utils.upcyclable_asteroids) do
    table.insert(data.raw["technology"]["hyperlanes-upcycling-q2-to-q3"].effects, {
        type = "unlock-recipe",
        recipe = asteroid_name .. "-upcycling-q2-to-q3"
    })
end

local q4_upcycling_tech = {
    type = "technology",
    name = "hyperlanes-upcycling-q3-to-q4",
    -- icon_size = 256,
    -- icon = "__hyperlanes-modpack__/graphics/technology/osmium.png",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/upcycling-base.png",
            icon_size = 256,
            scale = 1.0
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            icon_size = 64,
            scale = 1.0
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/q4.png",
            icon_size = 64,
            scale = 0.5
        },
        {
            icon = "__Moshine__/graphics/icons/data/solved-equation-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(3.0),
            shift = {38.18 * 1.50, -38.18 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/solved-equation-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(3.0),
            shift = {-52.16 * 1.50, -13.98 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/solved-equation-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(3.0),
            shift = {13.98 * 1.50, 52.16 * 1.50},
            floating = true
        },
    },
    effects = {},
    unit =
    {
        count = utils.t6_spcost_bigtech,
        ingredients = utils.t6_sp_hyarion_refraction,
        time = 60
    },
    prerequisites = {"quality-module-3", "hyperlanes-upcycling-q2-to-q3"},
    order = "c-a",
    essential = false
}
data:extend({q4_upcycling_tech})

for index, asteroid_name in ipairs(utils.upcyclable_asteroids) do
    table.insert(data.raw["technology"]["hyperlanes-upcycling-q3-to-q4"].effects, {
        type = "unlock-recipe",
        recipe = asteroid_name .. "-upcycling-q3-to-q4"
    })
end

local q5_upcycling_tech = {
    type = "technology",
    name = "hyperlanes-upcycling-q4-to-q5",
    -- icon_size = 256,
    -- icon = "__hyperlanes-modpack__/graphics/technology/osmium.png",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/upcycling-base.png",
            icon_size = 256,
            scale = 1.0
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            icon_size = 64,
            scale = 1.0
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/q5.png",
            icon_size = 64,
            scale = 0.5
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(4.0),
            shift = {38.18 * 1.50, -38.18 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(4.0),
            shift = {-38.18 * 1.50, -38.18 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(4.0),
            shift = {-38.18 * 1.50, 38.18 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(4.0),
            shift = {38.18 * 1.50, 38.18 * 1.50},
            floating = true
        },
    },
    effects = {},
    unit =
    {
        count = utils.t7_spcost_bigtech,
        ingredients = utils.t7_sp_maraxsis,
        time = 60
    },
    prerequisites = {"legendary-quality", "hyperlanes-upcycling-q3-to-q4"},
    order = "c-a",
    essential = false
}
data:extend({q5_upcycling_tech})

for index, asteroid_name in ipairs(utils.upcyclable_asteroids) do
    table.insert(data.raw["technology"]["hyperlanes-upcycling-q4-to-q5"].effects, {
        type = "unlock-recipe",
        recipe = asteroid_name .. "-upcycling-q4-to-q5"
    })
end

local q6_upcycling_tech = {
    type = "technology",
    name = "hyperlanes-upcycling-q5-to-q6",
    -- icon_size = 256,
    -- icon = "__hyperlanes-modpack__/graphics/technology/osmium.png",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/upcycling-base.png",
            icon_size = 256,
            scale = 1.0
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            icon_size = 64,
            scale = 1.0
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/q6.png",
            icon_size = 64,
            scale = 0.5
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(5.0),
            shift = {38.18 * 1.50, -38.18 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(5.0),
            shift = {-24.52 * 1.50, -48.11 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(5.0),
            shift = {-53.34 * 1.50, 8.45 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(5.0),
            shift = {-8.45 * 1.50, 53.34 * 1.50},
            floating = true
        },
        {
            icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(5.0),
            shift = {48.11 * 1.50, 24.52 * 1.50},
            floating = true
        },
    },
    effects = {},
    unit =
    {
        count = utils.t9_spcost_bigtech,
        ingredients = utils.t9_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-quality-module-4", "hyperlanes-upcycling-q4-to-q5"},
    order = "c-a",
    essential = false
}
data:extend({q6_upcycling_tech})

for index, asteroid_name in ipairs(utils.upcyclable_asteroids) do
    table.insert(data.raw["technology"]["hyperlanes-upcycling-q5-to-q6"].effects, {
        type = "unlock-recipe",
        recipe = asteroid_name .. "-upcycling-q5-to-q6"
    })
end

local q7_upcycling_tech = {
    type = "technology",
    name = "hyperlanes-upcycling-q6-to-q7",
    -- icon_size = 256,
    -- icon = "__hyperlanes-modpack__/graphics/technology/osmium.png",
    icons = {
        {
            icon = "__hyperlanes-modpack__/graphics/technology/upcycling-base.png",
            icon_size = 256,
            scale = 1.0
        },
        {
            icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
            icon_size = 64,
            scale = 1.0
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/q7.png",
            icon_size = 64,
            scale = 0.5
        },
        {
            icon = "__panglia_planet__/graphics/icons/data/timewarp_data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(6.0),
            shift = {38.18 * 1.50, -38.18 * 1.50},
            floating = true
        },
        {
            icon = "__panglia_planet__/graphics/icons/data/timewarp_data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(6.0),
            shift = {-13.98 * 1.50, -52.16 * 1.50},
            floating = true
        },
        {
            icon = "__panglia_planet__/graphics/icons/data/timewarp_data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(6.0),
            shift = {-52.16 * 1.50, -13.98 * 1.50},
            floating = true
        },
        {
            icon = "__panglia_planet__/graphics/icons/data/timewarp_data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(6.0),
            shift = {-38.18 * 1.50, 38.18 * 1.50},
            floating = true
        },
        {
            icon = "__panglia_planet__/graphics/icons/data/timewarp_data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(6.0),
            shift = {13.98 * 1.50, 52.16 * 1.50},
            floating = true
        },
        {
            icon = "__panglia_planet__/graphics/icons/data/timewarp_data.png",
            icon_size = 64,
            scale = 1.50 / math.sqrt(6.0),
            shift = {52.16 * 1.50, 13.98 * 1.50},
            floating = true
        },
    },
    effects = {},
    unit =
    {
        count = utils.t10_spcost_bigtech,
        ingredients = utils.t10_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-ethereal-quality", "hyperlanes-upcycling-q5-to-q6"},
    order = "c-a",
    essential = false
}
data:extend({q7_upcycling_tech})

for index, asteroid_name in ipairs(utils.upcyclable_asteroids) do
    table.insert(data.raw["technology"]["hyperlanes-upcycling-q6-to-q7"].effects, {
        type = "unlock-recipe",
        recipe = asteroid_name .. "-upcycling-q6-to-q7"
    })
end







-- Bismuth asteroid chunk advanced crushing
local bis_advanced_asteroid_chunk_crushing = {
    type = "recipe",
    name = "hyperlanes-advanced-bismuth-asteroid-crushing",
    localised_name = "Advanced bismuth asteroid crushing",
    enabled = false,
    subgroup = "space-crushing",
    order = "c-a-z-c",
    icons = {
        {
            icon = asteroid_item_graphics["bismuth-asteroid-chunk"]
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png"
        }
    },
    ingredients =
    {
        {type = "item", name = "bismuth-asteroid-chunk", amount = 1},
    },
    energy_required = 5.0,
    results = planet_advanced_asteroid_crushing_results["hyarion"],
    -- main_product = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
    -- main_product = planet_asteroid_crushing_results[planet_name][1].name,
    allow_productivity = true,
    categories = {"crushing"},
    auto_recycle = false,
    allow_decomposition = false
}

data:extend({bis_advanced_asteroid_chunk_crushing})






local crushing_unlocks = {
    ["hyperlanes-fulgora-asteroid-chunk"] = "electromagnetic-science-pack",
    ["hyperlanes-gleba-asteroid-chunk"] = "agricultural-science-pack",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "metallurgic-science-pack",
    ["hyperlanes-cerys-asteroid-chunk"] = "cerysian-science-pack",
    ["hyperlanes-arig-asteroid-chunk"] = "planetaris-compression-science",
    ["hyperlanes-muria-asteroid-chunk"] = "acidworking-science-pack",
    ["hyperlanes-rubia-asteroid-chunk"] = "planetslib-rubia-cargo-drops",
    ["bismuth-asteroid-chunk"] = nil,
    ["hyperlanes-moshine-asteroid-chunk"] = "moshine-tech-ai-tier-8",
    ["hyperlanes-aquilo-asteroid-chunk"] = "cryogenic-science-pack",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "hydraulic-science-pack",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "galvanization-science-pack",
    ["hyperlanes-tellus-asteroid-chunk"] = "planetaris-pathological-science-pack",
    ["hyperlanes-vesta-asteroid-chunk"] = "s1_gas_manipulation_science_pack",
    ["hyperlanes-panglia-asteroid-chunk"] = "panglia_sentient_processor"
}

-- We unlock each immediately after planet completion
local crushable_asteroids = {
    "hyperlanes-fulgora-asteroid-chunk",
    "hyperlanes-gleba-asteroid-chunk",
    "hyperlanes-vulcanus-asteroid-chunk",
    "hyperlanes-cerys-asteroid-chunk",
    "hyperlanes-arig-asteroid-chunk",
    "hyperlanes-muria-asteroid-chunk",
    "hyperlanes-rubia-asteroid-chunk",
    "bismuth-asteroid-chunk",
    "hyperlanes-moshine-asteroid-chunk",
    "hyperlanes-aquilo-asteroid-chunk",
    "hyperlanes-maraxsis-asteroid-chunk",
    "hyperlanes-paracelsin-asteroid-chunk",
    "hyperlanes-tellus-asteroid-chunk",
    "hyperlanes-vesta-asteroid-chunk",
    "hyperlanes-panglia-asteroid-chunk"
}

-- We unlock this 2 tiers after
local advanced_crushing_unlocks = {
    ["hyperlanes-fulgora-asteroid-chunk"] = "planetslib-rubia-cargo-drops",
    ["hyperlanes-gleba-asteroid-chunk"] = "acidworking-science-pack",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "planetaris-compression-science",
    ["hyperlanes-cerys-asteroid-chunk"] = "planetaris-refraction-science-pack",
    ["hyperlanes-arig-asteroid-chunk"] = "hydraulic-science-pack",
    ["hyperlanes-muria-asteroid-chunk"] = "cryogenic-science-pack",
    ["hyperlanes-rubia-asteroid-chunk"] = "hydraulic-science-pack",
    ["bismuth-asteroid-chunk"] = "galvanization-science-pack",
    ["hyperlanes-moshine-asteroid-chunk"] = "s1_gas_manipulation_science_pack",
    ["hyperlanes-aquilo-asteroid-chunk"] = "planetaris-bioengineering-science-pack",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "planetaris-pathological-science-pack",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "promethium-science-pack",
    ["hyperlanes-tellus-asteroid-chunk"] = "promethium-science-pack",
    ["hyperlanes-vesta-asteroid-chunk"] = "promethium-science-pack",
    ["hyperlanes-panglia-asteroid-chunk"] = "hyperlanes-victory"
}

local crushing_recipe_name = {
    ["hyperlanes-fulgora-asteroid-chunk"] = "hyperlanes-fulgora-asteroid-crushing",
    ["hyperlanes-gleba-asteroid-chunk"] = "hyperlanes-gleba-asteroid-crushing",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "hyperlanes-vulcanus-asteroid-crushing",
    ["hyperlanes-cerys-asteroid-chunk"] = "hyperlanes-cerys-asteroid-crushing",
    ["hyperlanes-arig-asteroid-chunk"] = "hyperlanes-arig-asteroid-crushing",
    ["hyperlanes-muria-asteroid-chunk"] = "hyperlanes-muria-asteroid-crushing",
    ["hyperlanes-rubia-asteroid-chunk"] = "hyperlanes-rubia-asteroid-crushing",
    ["bismuth-asteroid-chunk"] = nil,
    ["hyperlanes-moshine-asteroid-chunk"] = "hyperlanes-moshine-asteroid-crushing",
    ["hyperlanes-aquilo-asteroid-chunk"] = "hyperlanes-aquilo-asteroid-crushing",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "hyperlanes-maraxsis-asteroid-crushing",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "hyperlanes-paracelsin-asteroid-crushing",
    ["hyperlanes-tellus-asteroid-chunk"] = "hyperlanes-tellus-asteroid-crushing",
    ["hyperlanes-vesta-asteroid-chunk"] = "hyperlanes-vesta-asteroid-crushing",
    ["hyperlanes-panglia-asteroid-chunk"] = "hyperlanes-panglia-asteroid-crushing"
}

local advanced_crushing_recipe_name = {
    ["hyperlanes-fulgora-asteroid-chunk"] = "hyperlanes-advanced-fulgora-asteroid-crushing",
    ["hyperlanes-gleba-asteroid-chunk"] = "hyperlanes-advanced-gleba-asteroid-crushing",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "hyperlanes-advanced-vulcanus-asteroid-crushing",
    ["hyperlanes-cerys-asteroid-chunk"] = "hyperlanes-advanced-cerys-asteroid-crushing",
    ["hyperlanes-arig-asteroid-chunk"] = "hyperlanes-advanced-arig-asteroid-crushing",
    ["hyperlanes-muria-asteroid-chunk"] = "hyperlanes-advanced-muria-asteroid-crushing",
    ["hyperlanes-rubia-asteroid-chunk"] = "hyperlanes-advanced-rubia-asteroid-crushing",
    ["bismuth-asteroid-chunk"] = "hyperlanes-advanced-bismuth-asteroid-crushing",
    ["hyperlanes-moshine-asteroid-chunk"] = "hyperlanes-advanced-moshine-asteroid-crushing",
    ["hyperlanes-aquilo-asteroid-chunk"] = "hyperlanes-advanced-aquilo-asteroid-crushing",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "hyperlanes-advanced-maraxsis-asteroid-crushing",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "hyperlanes-advanced-paracelsin-asteroid-crushing",
    ["hyperlanes-tellus-asteroid-chunk"] = "hyperlanes-advanced-tellus-asteroid-crushing",
    ["hyperlanes-vesta-asteroid-chunk"] = "hyperlanes-advanced-vesta-asteroid-crushing",
    ["hyperlanes-panglia-asteroid-chunk"] = "hyperlanes-advanced-panglia-asteroid-crushing"
}

local crushing_science_packs = {
    ["hyperlanes-fulgora-asteroid-chunk"] = utils.t3_sp_fulgora,
    ["hyperlanes-gleba-asteroid-chunk"] = utils.t3_sp_gleba,
    ["hyperlanes-vulcanus-asteroid-chunk"] = utils.t3_sp_vulcanus,
    ["hyperlanes-cerys-asteroid-chunk"] = utils.t4_sp_cerys,
    ["hyperlanes-arig-asteroid-chunk"] = utils.t5_sp_arig,
    ["hyperlanes-muria-asteroid-chunk"] = utils.t5_sp_muria,
    ["hyperlanes-rubia-asteroid-chunk"] = utils.t5_sp_rubia,
    ["bismuth-asteroid-chunk"] = nil,
    ["hyperlanes-moshine-asteroid-chunk"] = utils.t6_sp,
    ["hyperlanes-aquilo-asteroid-chunk"] = utils.t7_sp_aquilo,
    ["hyperlanes-maraxsis-asteroid-chunk"] = utils.t7_sp_maraxsis,
    ["hyperlanes-paracelsin-asteroid-chunk"] = utils.t8_sp_paracelsin,
    ["hyperlanes-tellus-asteroid-chunk"] = utils.t8_sp_tellus,
    ["hyperlanes-vesta-asteroid-chunk"] = utils.t8_sp_vesta,
    ["hyperlanes-panglia-asteroid-chunk"] = utils.t10_sp
}

local crushing_science_costs = {
    ["hyperlanes-fulgora-asteroid-chunk"] = utils.t3_spcost_bigtech,
    ["hyperlanes-gleba-asteroid-chunk"] = utils.t3_spcost_bigtech,
    ["hyperlanes-vulcanus-asteroid-chunk"] = utils.t3_spcost_bigtech,
    ["hyperlanes-cerys-asteroid-chunk"] = utils.t4_spcost_bigtech,
    ["hyperlanes-arig-asteroid-chunk"] = utils.t5_spcost_bigtech,
    ["hyperlanes-muria-asteroid-chunk"] = utils.t5_spcost_bigtech,
    ["hyperlanes-rubia-asteroid-chunk"] = utils.t5_spcost_bigtech,
    ["bismuth-asteroid-chunk"] = utils.t6_spcost_bigtech,
    ["hyperlanes-moshine-asteroid-chunk"] = utils.t6_spcost_bigtech,
    ["hyperlanes-aquilo-asteroid-chunk"] = utils.t7_spcost_bigtech,
    ["hyperlanes-maraxsis-asteroid-chunk"] = utils.t7_spcost_bigtech,
    ["hyperlanes-paracelsin-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-tellus-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-vesta-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-panglia-asteroid-chunk"] = utils.t10_spcost_bigtech
}

local advanced_crushing_science_packs = {
    ["hyperlanes-fulgora-asteroid-chunk"] = utils.t5_sp_arig,
    ["hyperlanes-gleba-asteroid-chunk"] = utils.t5_sp_muria,
    ["hyperlanes-vulcanus-asteroid-chunk"] = utils.t5_sp_rubia,
    ["hyperlanes-cerys-asteroid-chunk"] = utils.t6_sp_hyarion_refraction,
    ["hyperlanes-arig-asteroid-chunk"] = utils.t7_sp_maraxsis,
    ["hyperlanes-muria-asteroid-chunk"] = utils.t7_sp_aquilo,
    ["hyperlanes-rubia-asteroid-chunk"] = utils.t7_sp_maraxsis,
    ["bismuth-asteroid-chunk"] = utils.t8_sp_paracelsin,
    ["hyperlanes-moshine-asteroid-chunk"] = utils.t8_sp_vesta,
    ["hyperlanes-aquilo-asteroid-chunk"] = utils.t8_sp_tellus,
    ["hyperlanes-maraxsis-asteroid-chunk"] = utils.t8_sp_tellus_pathological,
    ["hyperlanes-paracelsin-asteroid-chunk"] = utils.t10_sp,
    ["hyperlanes-tellus-asteroid-chunk"] = utils.t10_sp,
    ["hyperlanes-vesta-asteroid-chunk"] = utils.t10_sp,
    ["hyperlanes-panglia-asteroid-chunk"] = utils.t10_sp
}

local advanced_crushing_science_costs = {
    ["hyperlanes-fulgora-asteroid-chunk"] = utils.t5_spcost_bigtech,
    ["hyperlanes-gleba-asteroid-chunk"] = utils.t5_spcost_bigtech,
    ["hyperlanes-vulcanus-asteroid-chunk"] = utils.t5_spcost_bigtech,
    ["hyperlanes-cerys-asteroid-chunk"] = utils.t6_spcost_bigtech,
    ["hyperlanes-arig-asteroid-chunk"] = utils.t7_spcost_bigtech,
    ["hyperlanes-muria-asteroid-chunk"] = utils.t7_spcost_bigtech,
    ["hyperlanes-rubia-asteroid-chunk"] = utils.t7_spcost_bigtech,
    ["bismuth-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-moshine-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-aquilo-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-maraxsis-asteroid-chunk"] = utils.t8_spcost_bigtech,
    ["hyperlanes-paracelsin-asteroid-chunk"] = utils.t9_spcost_bigtech,
    ["hyperlanes-tellus-asteroid-chunk"] = utils.t9_spcost_bigtech,
    ["hyperlanes-vesta-asteroid-chunk"] = utils.t9_spcost_bigtech,
    ["hyperlanes-panglia-asteroid-chunk"] = utils.t10_spcost_bigtech
}


for index, asteroid_name in ipairs(crushable_asteroids) do
    if asteroid_name ~= "bismuth-asteroid-chunk" then
        local tech = {
            type = "technology",
            name = crushing_recipe_name[asteroid_name],
            localised_name = utils.asteroid_prefix[asteroid_name] .. " asteroid chunk crushing",
            -- icon_size = 256,
            -- icon = crushing_recipe_name[asteroid_name].icon,
            icons = {
                {
                    icon = "__hyperlanes-modpack__/graphics/technology/crushing-base.png",
                    icon_size = 256
                },
                {
                    icon = asteroid_item_graphics[asteroid_name],
                    icon_size = 64,
                    scale = 1.0
                },
                {
                    icon = "__hyperlanes-modpack__/graphics/icons/crushing.png",
                    icon_size = 64,
                    scale = 1.0
                }
            },
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = crushing_recipe_name[asteroid_name]
                }
            },
            unit =
            {
                count = crushing_science_costs[asteroid_name],
                ingredients = crushing_science_packs[asteroid_name],
                time = 60
            },
            prerequisites = {crushing_unlocks[asteroid_name]},
            order = "c-a",
            essential = false
        }
        data:extend({tech})
    end
end


for index, asteroid_name in ipairs(crushable_asteroids) do
    local tech = {
        type = "technology",
        name = advanced_crushing_recipe_name[asteroid_name],
        localised_name = "Advanced " .. utils.asteroid_prefix_lowercase[asteroid_name] .. " asteroid chunk crushing",
        -- icon_size = 256,
        -- icon = advanced_crushing_recipe_name[asteroid_name].icon,
        icons = {
            {
                icon = "__hyperlanes-modpack__/graphics/technology/advanced-crushing-base.png",
                icon_size = 256
            },
            {
                icon = asteroid_item_graphics[asteroid_name],
                icon_size = 64,
                scale = 1.0
            },
            {
                icon = "__hyperlanes-modpack__/graphics/icons/advanced-crushing.png",
                icon_size = 64,
                scale = 1.0
            }
        },
        effects = {
            {
                type = "unlock-recipe",
                recipe = advanced_crushing_recipe_name[asteroid_name]
            }
        },
        unit =
        {
            count = advanced_crushing_science_costs[asteroid_name],
            ingredients = advanced_crushing_science_packs[asteroid_name],
            time = 60
        },
        prerequisites = {advanced_crushing_unlocks[asteroid_name]},
        order = "c-a",
        essential = false
    }
    data:extend({tech})
end