local utils = require("__hyperlanes-modpack__/utils")


-- Sand unification
local sand_recipe = {
    type = "recipe",
    name = "hyperlanes-sand-to-planetaris-sand",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "sand", amount = 200},
    },
    energy_required = 2.0,
    results = {
        {type = "fluid", name = "planetaris-sand", amount = 50}
    },
    allow_productivity = true,
    categories = {"sifting"}
}
data:extend({sand_recipe})


-- ╒══════════╗  ╒════════╗  ╒══════════╗ ╒══════════╗      ╒═════════╗
-- └┐  ╓───┐  ║  │  ╓──┐  ║  └┐  ╓───┐  ║ │ ╓─┐  ╓─┐ ║      │ ╓────┐  ║
--  │  ║   │  ║  │  ║  │  ║   │  ║   │  ║ └─╜ │  ║ └─╜      └─╜  ╒═╛ ╓╜
--  │  ╚═══╛  ║  │  ╚══╛  ║   │  ╚═══╛  ║     │  ║             ╒═╛ ╓─╜ 
--  │  ╓──────╜  │  ╓──┐  ║   │  ╓┐  ╓──╜     │  ║           ╒═╛ ╓─╜   
--  │  ║         │  ║  │  ║   │  ║└┐ ╚╗       │  ║          ╒╛ ╓─╜     
-- ╒╛  ╚╗       ╒╛  ╚╗╒╛  ╚╗ ╒╛  ╚╗└┐ ╚═╗    ╒╛  ╚╗         │  ╚══════╗
-- └────╜       └────╜└────╜ └────╜ └───╜    └────╜         └─────────╜

local primed_tier_8 = table.deepcopy(data.raw["module"]["ai-tier-8"])
primed_tier_8.name = "hyperlanes-ai-tier-8-primed"
primed_tier_8.effect = {
    speed = 10.24 / 2.0
}
data:extend({primed_tier_8})

local primed_tier_9 = table.deepcopy(data.raw["module"]["ai-tier-9"])
primed_tier_9.name = "hyperlanes-ai-tier-9-primed"
primed_tier_9.effect = {
    speed = 14.58 / 2.0
}
data:extend({primed_tier_9})

-- Primed tier 8
local prt8_recipe = {
    type = "recipe",
    name = "hyperlanes-ai-tier-8-primed",
    enabled = false,
    ingredients =
    {
        
        {type = "item", name = "ai-tier-8", amount = 1},
        {type = "fluid", name = "cosmic-data", amount = 50},
    },
    energy_required = 3.0,
    results = {
        {type = "item", name = "hyperlanes-ai-tier-8-primed", amount = 1}
    },
    allow_productivity = true,
    categories = {"data-processing"}
}
data:extend({prt8_recipe})


-- Primed tier 9
local prt9_recipe = {
    type = "recipe",
    name = "hyperlanes-ai-tier-9-primed",
    enabled = false,
    ingredients =
    {
        
        {type = "item", name = "ai-tier-9", amount = 1},
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
        {type = "fluid", name = "cosmic-data", amount = 100},
    },
    energy_required = 3.0,
    results = {
        {type = "item", name = "hyperlanes-ai-tier-9-primed", amount = 1},
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
    },
    main_product = "hyperlanes-ai-tier-9-primed",
    allow_productivity = true,
    categories = {"data-processing"}
}
data:extend({prt9_recipe})


-- ╒═════════╗   ╒════════╗  ╒══════════╗  ╒════════╗       ╒═════════╗ ╒═════════╗ ╒══════╗
-- └┐  ╓───┐ ╚╗  │  ╓──┐  ║  │ ╓─┐  ╓─┐ ║  │  ╓──┐  ║       │  ╓────┐ ║ │  ╓────┐ ║ └─┐  ╓─╜
--  │  ║   │  ║  │  ║  │  ║  └─╜ │  ║ └─╜  │  ║  │  ║       │  ║    └─╜ │  ║    └─╜   │  ║  
--  │  ║   │  ║  │  ╚══╛  ║      │  ║      │  ╚══╛  ║       │  ╚══════╗ │  ║          │  ║  
--  │  ║   │  ║  │  ╓──┐  ║      │  ║      │  ╓──┐  ║       └──────┐  ║ │  ║          │  ║  
--  │  ║   │  ║  │  ║  │  ║      │  ║      │  ║  │  ║       ╒═╗    │  ║ │  ║    ╒═╗   │  ║  
-- ╒╛  ╚═══╛ ╓╜ ╒╛  ╚╗╒╛  ╚╗    ╒╛  ╚╗    ╒╛  ╚╗╒╛  ╚╗      │ ╚════╛  ║ │  ╚════╛ ║ ╒═╛  ╚═╗
-- └─────────╜  └────╜└────╜    └────╜    └────╜└────╜      └─────────╜ └─────────╜ └──────╜
local data_analysis_tech = {
    type = "technology",
    name = "hyperlanes-data-analysis",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {},
    unit =
    {
        count = utils.t6_spcost_bigtech * 2,
        ingredients = utils.t6_sp,
        time = 30
    },
    prerequisites = {"moshine-tech-ai-tier-8"},
    order = "c-a",
    essential = false
}
data:extend({data_analysis_tech})





local item_sounds = require("__base__.prototypes.item_sounds")


for index, science_name in ipairs(utils.data_analysis_sciences) do
    local data_fluid = {
        type = "fluid",
        name = "hyperlanes-" .. science_name .. "-data",
        subgroup = "data-fluid",
        order = utils.science_order[science_name .. "-science-pack"],
        default_temperature = 15,
        gas_temperature = 0,
        base_color = {255, 63, 63},
        flow_color = {255, 63, 63},
        icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
        auto_barrel = false,
        draw_as_glow = true,
    }
    local data_recipe = {
        type = "recipe",
        name = "hyperlanes-" .. science_name .. "-data",
        enabled = false,
        ingredients =
        {
            {type = "item", name = science_name .. "-science-pack", amount = 10, quality_min = "rare"},
            {type = "fluid", name = "raw-data", amount = 10},
        },
        energy_required = 10.0,
        results = {
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data", amount_min = 0, amount_max = 20},
        },
        allow_productivity = true,
        categories = {"data-processing"}
    }
    local datacell = {
        type = "item",
        name = "hyperlanes-datacell-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data.png",
        subgroup = "moshine-datacells",
        order = utils.science_order[science_name .. "-science-pack"],
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        default_import_location = "moshine",
        --durability = 1,
        --durability_description_key = "description.science-pack-remaining-amount-key",
        --factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        --durability_description_value = "description.science-pack-remaining-amount-value",
        stack_size = 200,
        weight = 0.5*kg,
        plant_result = "hyperlanes-analyze-data-" .. science_name
    }
    local datacell_recipe = {
        type = "recipe",
        name = "hyperlanes-datacell-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data.png",
        categories = {"data-processing"},
        subgroup = "moshine-datacells",
        order = utils.science_order[science_name .. "-science-pack"],
        hide_from_player_crafting = true,
        energy_required = 1.0,
        ingredients = {
            {type = "item", name = "datacell-empty", amount = 1, ignored_by_stats = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data", amount = 100, ignored_by_stats = 100},
        },
        results = {{type = "item", name = "hyperlanes-datacell-" .. science_name, amount = 1, ignored_by_stats = 1}},
        allow_productivity = false,
        auto_recycle = false,
        enabled = false,
        crafting_machine_tint = {primary = {255, 63, 63}},
    }
    local emptying_datacell_recipe = {
        type = "recipe",
        name = "hyperlanes-datacell-remove-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data-remove.png",
        categories = {"data-processing"},
        subgroup = "moshine-datacells",
        order = utils.science_order[science_name .. "-science-pack"],
        hide_from_player_crafting = true,
        hide_from_stats = true,
        energy_required = 1.0,
        ingredients = {
            {type = "item", name = "hyperlanes-datacell-" .. science_name, amount = 1, ignored_by_stats = 1},
        },
        results = {
            {type = "item", name = "datacell-empty", amount = 1, ignored_by_stats = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data", amount = 100, ignored_by_stats = 100},
        },
        allow_productivity = false,
        auto_recycle = false,
        enabled = false,
        crafting_machine_tint = {primary = {255, 63, 63}},
    }
    local data_unlock_tech = {
        type = "technology",
        name = "hyperlanes-" .. science_name .. "-data-unlock",
        icon_size = 256,
        icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "hyperlanes-" .. science_name .. "-data"
            },
            {
                type = "unlock-recipe",
                recipe = "hyperlanes-datacell-" .. science_name
            },
            {
                type = "unlock-recipe",
                recipe = "hyperlanes-datacell-remove-" .. science_name
            },
            {
                type = "unlock-recipe",
                recipe = "hyperlanes-datacell-" .. science_name .. "-analyzed"
            },
            {
                type = "unlock-recipe",
                recipe = "hyperlanes-datacell-remove-" .. science_name .. "-analyzed"
            },
        },
        research_trigger = {
            type = "craft-item",
            item = {name = science_name .. "-science-pack", quality = "rare", comparator = ">="},
            count = 200
        },
        prerequisites = {"hyperlanes-data-analysis"},
        order = utils.science_order[science_name .. "-science-pack"],
        essential = false
    }
    
    local data_infinite_tech = {
        type = "technology",
        name = "hyperlanes-" .. science_name .. "-data-infinite",
        icon_size = 256,
        icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
        effects = {},
        max_level = "infinite",
        unit =
        {
            count_formula = "1.25^(L-1)*30",
            ingredients = {
                {"hyperlanes-datacell-" .. science_name .. "-analyzed", 1}
            },
            time = 100000
        },
        prerequisites = {"hyperlanes-" .. science_name .. "-data-unlock"},
        order = utils.science_order[science_name .. "-science-pack"],
        essential = false
    }
    local analyzing_plant = {
        type = "plant",
        name = "hyperlanes-analyze-data-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/processing-grid-process-equation.png",
        flags = {"placeable-neutral"},
        minable =
        {
            mining_particle = "wooden-particle",
            mining_time = 0.2,
            results = {{type = "item", name = "hyperlanes-datacell-" .. science_name .. "-analyzed", amount = 1}},
            mining_trigger =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        {
                            type = "instant",
                            target_effects = {
                                {
                                    type = "play-sound",
                                    sound = sound_variations("__Moshine-assets__/sound/entity/agricultural-tower/cervo", 13, 0.9),
                                    damage_type_filters = "fire"
                                }
                            }
                        }
                    }
                }
            }
        },
        mining_sound = sound_variations("__Moshine-assets__/sound/entity/agricultural-tower/cervo", 13, 0.9), --sound_variations("__space-age__/sound/mining/axe-mining-yumako-tree", 5, 0.6),
        mined_sound = sound_variations("__Moshine-assets__/sound/entity/agricultural-tower/cervo", 13, 0.9), --sound_variations("__space-age__/sound/mining/mined-yumako-tree", 6, 0.3),
        growth_ticks = 300 * 60,
        --harvest_emissions = plant_harvest_emissions,
        --emissions_per_second = plant_emissions,
        max_health = 50,
        collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
        --collision_mask = {layers={player=true, ground_tile=true, train=true}},
        selection_box = {{-1, -1}, {1, 1}},
        sticker_box = {{-1, -1}, {1, 1}},
        drawing_box_vertical_extension = 0.8,
        --subgroup = "moshine-processes",
        --order = "lll",
        impact_category = "tree",
        --factoriopedia_simulation = simulations.factoriopedia_yumako_tree,
        autoplace =
        {
            --control = "gleba_plants",
            --order = "a[tree]-b[forest]-a",
            --probability_expression = "min(0.2, 0.3 * (1 - gleba_plants_noise) * control:gleba_plants:size)",
            --richness_expression = "random_penalty_at(3, 1)",
            probability_expression = 0,
            tile_restriction = {"webbed_processor_tile"},
        },
        tile_buildability_rules = {
            {
                area = {{-0.5, -0.5}, {0.5, 0.5}},
                required_tiles = {layers = {ground_tile = true}},
            }
        },
        --variations = gleba_tree_variations("yumako-tree", 8, 4, 1.3),
        stateless_visualisation_variations = {
            {
                animation = {
                    sheets = {
                        {
                            variation_count = 1,
                            filenames = {"__Moshine-assets__/graphics/entity/quantum-computer/plant.png"},
                            size = 128,
                            lines_per_file = 25,
                            frame_count = 100,
                            animation_speed = 0.15,
                            scale = 0.5,
                            draw_as_glow = true,
                            frame_sequence = { 1, 2, 3, 1, 4, 5, 6, 1, 7, 8, 9, 10, 10, 11, 12, 1, 1, 13, 14, 15, 15, 13, 16, 17, 1, 18, 1, 19, 19, 20, 21, 22, 1, 22, 23, 1, 24, 25, 1, 12, 5, 6, 1, 15, 11, 7, 1, 8, 5, 4 ,
                            1, 1, 3, 1, 11, 5, 6, 1, 22, 8, 9, 1, 10, 1, 12, 1, 1, 3, 4, 1, 1, 13, 16, 17, 1, 16, 1, 1, 1, 1, 1, 22, 1, 22, 7, 1, 24, 6, 1, 1, 1, 1, 1, 1, 7, 7, 1, 11, 5, 1
                            }
                        },
                    }
                }
            }
        },
        pictures =
        {
            layers =
            {
                {
                    filename = "__core__/graphics/empty.png",
                    width = 1,
                    height = 1,
                }
            }
        },
        map_color = {200, 250, 80},
    }

    table.insert(data.raw["agricultural-tower"]["processing-grid"].accepted_seeds, "hyperlanes-datacell-" .. science_name)
    



    local analyzed_data_fluid = {
        type = "fluid",
        name = "hyperlanes-" .. science_name .. "-data-analyzed",
        subgroup = "data-fluid",
        order = utils.science_order[science_name .. "-science-pack"],
        default_temperature = 15,
        gas_temperature = 0,
        base_color = {255, 63, 63},
        flow_color = {255, 63, 63},
        icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
        auto_barrel = false,
        draw_as_glow = true,
    }
    local analyzed_datacell = {
        type = "item",
        name = "hyperlanes-datacell-" .. science_name .. "-analyzed",
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data.png",
        subgroup = "moshine-datacells",
        order = utils.science_order[science_name .. "-science-pack"],
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        default_import_location = "moshine",
        --durability = 1,
        --durability_description_key = "description.science-pack-remaining-amount-key",
        --factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        --durability_description_value = "description.science-pack-remaining-amount-value",
        stack_size = 200,
        weight = 0.5*kg,
    }
    local analyzed_datacell_recipe = {
        type = "recipe",
        name = "hyperlanes-datacell-" .. science_name .. "-analyzed",
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data.png",
        categories = {"data-processing"},
        subgroup = "moshine-datacells",
        order = utils.science_order[science_name .. "-science-pack"],
        hide_from_player_crafting = true,
        energy_required = 1.0,
        ingredients = {
            {type = "item", name = "datacell-empty", amount = 1, ignored_by_stats = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data-analyzed", amount = 100, ignored_by_stats = 100},
        },
        results = {{type = "item", name = "hyperlanes-datacell-" .. science_name .. "-analyzed", amount = 1, ignored_by_stats = 1}},
        allow_productivity = false,
        auto_recycle = false,
        enabled = false,
        crafting_machine_tint = {primary = {255, 63, 63}},
    }
    local analyzed_emptying_datacell_recipe = {
        type = "recipe",
        name = "hyperlanes-datacell-remove-" .. science_name .. "-analyzed",
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data-remove.png",
        categories = {"data-processing"},
        subgroup = "moshine-datacells",
        order = utils.science_order[science_name .. "-science-pack"],
        hide_from_player_crafting = true,
        hide_from_stats = true,
        energy_required = 1.0,
        ingredients = {
            {type = "item", name = "hyperlanes-datacell-" .. science_name .. "-analyzed", amount = 1, ignored_by_stats = 1},
        },
        results = {
            {type = "item", name = "datacell-empty", amount = 1, ignored_by_stats = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data-analyzed", amount = 100, ignored_by_stats = 100},
        },
        allow_productivity = false,
        auto_recycle = false,
        enabled = false,
        crafting_machine_tint = {primary = {255, 63, 63}},
    }



    data:extend({
        data_fluid,
        data_recipe,
        datacell,
        datacell_recipe,
        emptying_datacell_recipe,
        data_unlock_tech,
        data_infinite_tech,
        analyzing_plant,
        analyzed_data_fluid,
        analyzed_datacell,
        analyzed_datacell_recipe,
        analyzed_emptying_datacell_recipe
    })
end




local science_prod_bonuses = {
    ["automation"] = {
        0.02,
        "assembling-machine-1",
        "assembling-machine-2",
        "assembling-machine-3",
        "planetaris-assembling-machine-4",
    },
    ["logistic"] = {
        0.02,
        "transport-belt",
        "fast-transport-belt",
        "express-transport-belt",
        "turbo-transport-belt",
        "planetaris-hyper-transport-belt",
        "underground-belt",
        "fast-underground-belt",
        "express-underground-belt",
        "turbo-underground-belt",
        "planetaris-hyper-underground-belt",
        "splitter",
        "fast-splitter",
        "express-splitter",
        "turbo-splitter",
        "planetaris-hyper-splitter",
    },
    ["military"] = {
        0.02,
        "gun-turret",
        "rocket-turret",
        "laser-turret",
        "railgun-turret",
        "firearm-magazine",
        "piercing-rounds-magazine",
        "uranium-rounds-magazine",
        "plutonium-rounds-magazine",
        "rocket",
        "explosive-rocket",
        "atomic-bomb",
        "fusion-missile",
        "railgun-ammo",
        "artillery-shell"
    },
    ["chemical"] = {
        0.02,
        "basic-oil-processing",
        "advanced-oil-processing",
        "plastic-bar",
        "maraxsis-smelt-microplastics",
        "plastic-from-wood",
        "planetaris-plastic-bar",
        "planetaris-cactus-plastic-washing",
        "planetaris-mycelia-plastic",
        "bioplastic",
        "nitric-acid-plastic",
        "polyvinyl-chloride",
        "sulfur",
        "maraxsis-geothermal-sulfur",
        "planetaris-sulfur",
        "planetaris-sapphire-to-sulfur-particle-manipulation",
        "biosulfur",
        "explosives"
    },
    ["space"] = {
        0.02,
        "metallic-asteroid-crushing",
        "advanced-metallic-asteroid-crushing",
        "oxide-asteroid-crushing",
        "advanced-oxide-asteroid-crushing",
        "carbonic-asteroid-crushing",
        "advanced-carbonic-asteroid-crushing",
        "anorthite-crushing",
        "advanced-anorthite-crushing",
        "bismuth-asteroid-crushing",
    },
    ["production"] = {
        0.02,
        "rail",
        "rail-ramp",
        "rail-minimal",
        "rail-ramp-minimal",
        "rail-support",
        "locomotive",
        "rubia-armored-locomotive",
        "space-locomotive",
        "cargo-wagon",
        "rubia-armored-cargo-wagon",
        "space-cargo-wagon",
        "fluid-wagon",
        "rubia-armored-fluid-wagon",
        "space-fluid-wagon"
    },
    ["utility"] = {
        0.02,
        "logistic-robot",
        "construction-robot",
        "lead-logistic-robot",
        "lead-construction-robot",
        "fusion-logistic-robot",
        "fusion-construction-robot",
        "planetaris-logistic-robowasp"
    },
    ["electromagnetic"] = {
        0.02,
        "scrap-recycling",
        "holmium-solution",
        "electrolyte",
        "superconductor",
        "supercapacitor",
        "electromagnetic-plant"
    },
    ["agricultural"] = {
        0.02,
        "yumako-processing",
        "jellynut-processing",
        "carbon-fiber",
        "iron-bacteria-cultivation",
        "oxygenated-iron-bacteria-cultivation",
        "copper-bacteria-cultivation",
        "oxygenated-copper-bacteria-cultivation",
        "biochamber"
    },
    ["metallurgic"] = {
        0.02,
        "tungsten-plate",
        "tungsten-carbide",
        "molten-iron-from-lava",
        "iron-ore-melting",
        "molten-copper-from-lava",
        "copper-ore-melting",
        "big-mining-drill",
        "foundry"
    },
    ["cerysian"] = {
        0.02,
        "cerys-nuclear-scrap-recycling",
        "mixed-oxide-fuel-cell",
        "mixed-oxide-waste-centrifuging",
        "uranium-processing",
        "kovarex-enrichment-process",
        "hyperlanes-elementary-catalyst",
        "hyperlanes-advanced-material-microsuspension",
    },
    ["interstellar"] = {
        0.02,
        "muluna-metallic-asteroid-chunk-upcycling",
        "muluna-carbonic-asteroid-chunk-upcycling",
        "muluna-oxide-asteroid-chunk-upcycling",
        "muluna-anorthite-chunk-upcycling",
        "muluna-microcellular-plastic",
        "muluna-telescope-observation-nauvis",
        "muluna-telescope-observation-vulcanus",
        "muluna-telescope-observation-gleba",
        "muluna-telescope-observation-fulgora",
        "muluna-telescope-observation-aquilo",
        "muluna-telescope-observation-muria",
        "muluna-telescope-observation-arig",
        "muluna-telescope-observation-vesta",
        "muluna-telescope-observation-maraxsis",
        "muluna-telescope-observation-hyarion",
        "muluna-telescope-observation-cerys",
        "muluna-telescope-observation-moshine",
        "muluna-telescope-observation-tellus",
        "muluna-telescope-observation-rubia",
        "muluna-telescope-observation-panglia",
        "muluna-telescope-observation-paracelsin",
        "muluna-telescope-observation-muluna",
    },
    ["planetaris-compression"] = {
        0.02,
        "planetaris-sand-sifting",
        "planetaris-advanced-sand-sifting",
        "planetaris-advanced-pure-sand-sifting",
        "planetaris-glass-panel",
        "planetaris-heavy-glass",
        "planetaris-sifter",
        "planetaris-press",
    },
    ["acidworking"] = {
        0.02,
        "sulfuric-acid",
        "cerys-nitric-acid",
        "nitrogen-nitric-acid",
        "hydrogen-chloride",
        "sulfur-chlorine-salt-redox",
        "hydrogen-chloride-from-spoilage",
        "hydrogen-chloride-from-biter-egg",
        "hyperlanes-purified-lead",
        "hyperlanes-superacid",
        "acidworking-plant"
    },
    ["biorecycling"] = {
        0.02,
        "rubia-bacteria-A",
        "rubia-bacteria-B",
        "biorecycle-scrapapalooza",
        "craptonite-casting",
        "hyperlanes-metamaterial-microsuspension",
        "biorecycling-plant",
    },
    ["rubia-biofusion"] = {
        0.02,
        "pentapod-egg",
        "biter-egg",
        "planetaris-wasp-egg",
        "assisted-frothing",
    },
    ["planetaris-polishing"] = {
        0.02,
        "planetaris-polished-diamond",
        "planetaris-polished-emerald",
        "planetaris-polished-quartz",
        "planetaris-polished-ruby",
        "planetaris-polished-sapphire",
        "planetaris-polished-bismuth",
        "planetaris-polishing-compound",
    },
    ["planetaris-refraction"] = {
        0.02,
        "planetaris-simulating-unit",
        "planetaris-nanoscale-lens",
        "planetaris-crystalization-motor",
        "planetaris-assembling-machine-4",
        "planetaris-particle-manipulator",
        "planetaris-space-manufacturer",
    },
    ["cryogenic"] = {
        0.02,
        "ammoniacal-solution-separation",
        "lithium",
        "fluoroketone",
        "cryogenic-plant",
        "fusion-reactor",
        "foundation"
    },
    ["hydraulic"] = {
        0.02,
        "maraxsis-fish-food",
        "maraxsis-glass-panes",
        "hyperlanes-bioslurry",
        "maraxsis-hydro-plant",
        "quality-module",
        "quality-module-2",
        "quality-module-3"
    },
    ["galvanization"] = {
        0.02,
        "tetrahedrite-processing",
        "tetrahedrite-melting",
        "sphalerite-processing",
        "sphalerite-melting",
        "mechanical-plant",
        "electrochemical-plant"
    },
    ["planetaris-bioengineering"] = {
        0.02,
        "planetaris-chloroplast-processing",
        "planetaris-mycelia-processing",
        "planetaris-root",
        "planetaris-bioassembler-seed",
        "artificial-yumako-soil",
        "planetaris-artificial-chlorophyll-soil",
        "artificial-jellynut-soil",
        "planetaris-artificial-mycelia-soil",
    },
    ["planetaris-pathological"] = {
        0.02,
        "overgrowth-yumako-soil",
        "planetaris-overgrowth-chlorophyll-soil",
        "overgrowth-jellynut-soil",
        "planetaris-overgrowth-mycelia-soil",
        "planetaris-incubator",
        "planetaris-artificial-heart",
        "planetaris-polimer-skin",
    },
    ["gas-manipulation"] = {
        0.02,
        "fusion-missile",
        "fluorofuel",
        "plasmafuel",
        "vesta-electrolyzer",
        "vesta-combustion-furnace",
        "vesta-foundation"
    },
    ["promethium"] = {
        0.02,
        "automation-science-pack",
        "logistic-science-pack",
        "military-science-pack",
        "chemical-science-pack",
        "production-science-pack",
        "utility-science-pack",
        "space-science-pack",
        "metallurgic-science-pack",
        "agricultural-science-pack",
        "electromagnetic-science-pack",
        "interstellar-science-pack",
        "planetaris-compression-science-pack",
        "biorecycling-science-pack",
        "inert-acidworking-science-pack",
        "planetaris-polishing-science-pack",
        "planetaris-refraction-science-pack",
        "cryogenic-science-pack",
        "hydraulic-science-pack",
        "gas-manipulation-science-pack",
        "planetaris-bioengineering-science-pack",
        "planetaris-pathological-science-pack",
        "galvanization-science-pack",
        "promethium-science-pack"
    },
}

for index, science_name in ipairs(utils.data_analysis_sciences) do
    if science_prod_bonuses[science_name] then
        for index2, recipe_name in ipairs(science_prod_bonuses[science_name]) do
            if index2 ~= 1 then
                table.insert(
                    data.raw["technology"]["hyperlanes-" .. science_name .. "-data-infinite"].effects,
                    {
                        type = "change-recipe-productivity",
                        recipe = recipe_name,
                        change = science_prod_bonuses[science_name][1]
                    }
                )
            end
        end
    end
end