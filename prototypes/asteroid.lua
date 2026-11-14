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
        {type = "item", name = "stone", amount = 30},
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
    ["moshine"] = nil,
    ["aquilo"] = nil,
    ["maraxsis"] = nil,
    ["paracelsin"] = nil,
    ["tellus"] = nil,
    ["vesta"] = nil,
    ["panglia"] = nil
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
        {type = "item", name = "plutonium-239", amount = 2},
        {type = "item", name = "plutonium-238", amount = 1, independent_probability = 0.20},
        {type = "item", name = "hyperlanes-cerys-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
    },
    ["arig"] = {
        {type = "item", name = "stone", amount = 15},
        {type = "item", name = "planetaris-cactus", amount = 5},
        {type = "item", name = "hyperlanes-cerys-asteroid-chunk", amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1, independent_probability = 0.10},
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
    ["moshine"] = nil,
    ["aquilo"] = nil,
    ["maraxsis"] = nil,
    ["paracelsin"] = nil,
    ["tellus"] = nil,
    ["vesta"] = nil,
    ["panglia"] = nil
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