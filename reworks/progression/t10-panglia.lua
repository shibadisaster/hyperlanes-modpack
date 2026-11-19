local utils = require("__hyperlanes-modpack__/utils")


data.raw["technology"]["panglia_collect_dna_fish"].essential = false
data.raw["technology"]["panglia_collect_dna_biter"].essential = false
data.raw["technology"]["panglia_collect_dna_demolisher"].essential = false
data.raw["technology"]["panglia_collect_dna_pentapod"].essential = false


-- Panglite multiplication
data.raw["recipe"]["panglia_panglite"].categories = {"leadworking"}
data.raw["recipe"]["panglia_panglite"].ingredients = {
    {type = "item", name = "panglia_panglite", amount = 5},
    {type = "item", name = "hyperlanes-antimatter-particulate", amount = 2},
    {type = "item", name = "hyperlanes-time-crystal-a", amount = 1},
}
data.raw["recipe"]["panglia_panglite"].results = {
    {type = "item", name = "panglia_panglite", amount_min = 2, amount_max = 4},
    {type = "item", name = "hyperlanes-time-crystal-a", amount = 1, ignored_by_productivity = 1},
}


-- Branbalite slurry
data.raw["recipe"]["panglia_branbalite_slurry"].ingredients = {
    {type = "item", name = "panglia_branbalite", amount = 1},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 100},
    {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 5},
}


-- Timewarp analyzer
data.raw["recipe"]["panglia_timewarp_data_maker"].ingredients = {
    {type = "item", name = "data-processor", amount = 1},
    {type = "item", name = "panglia_panglite", amount = 50},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 50, quality_min = "legendary"},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 50, quality_min = "legendary"},
}


-- Panglite fiber
data.raw["recipe"]["panglia_panglite_fiber"].ingredients = {
    {type = "item", name = "ske_mesh", amount = 20, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite", amount = 50},
    {type = "item", name = "plutonium-239", amount = 10},
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
}
data.raw["recipe"]["panglia_panglite_fiber"].results = {
    {type = "item", name = "panglia_panglite_fiber", amount = 20},
    {type = "item", name = "plutonium-238", amount = 5, quality_change = 1},
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
}


-- Panglite glass
data.raw["recipe"]["panglia_panglite_glass"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 1, quality_min = "legendary"},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 2, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 5, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite", amount = 10},
}


-- Spaceship hull
data.raw["recipe"]["snouz_wall_hull"].ingredients = {
    {type = "item", name = "panglia_panglite_fiber", amount = 5},
    {type = "item", name = "low-density-space-platform-foundation", amount = 1},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 2, quality_min = "legendary"},
    {type = "item", name = "craptonite-wall", amount = 1, quality_min = "legendary"},
}
data.raw["recipe"]["snouz_wall_hull"].categories = {"space-manufacturing"}

data.raw["wall"]["snouz_wall_hull"].max_health = 1000
data.raw["wall"]["snouz_wall_hull"].healing_per_tick = 10.0 / 60.0
table.insert(data.raw["wall"]["snouz_wall_hull"].resistances, {
    type = "rubia-kinetic",
    percent = 100
})


-- Focused gun turret
data.raw["recipe"]["snouz_long_electric_gun_turret"].ingredients = {
    {type = "item", name = "gun-turret", amount = 1, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite_fiber", amount = 5},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 5, quality_min = "legendary"},
}


-- Hypercrusher
data.raw["recipe"]["panglia_crusher"].ingredients = {
    {type = "item", name = "crusher-2", amount = 1, quality_min = "legendary"},
    {type = "item", name = "planetaris-sifter", amount = 1, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite_fiber", amount = 10},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 10, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 10, quality_min = "legendary"},
}

-- Universe precursor
data.raw["recipe"]["universe_precursor"].ingredients = {
    {type = "item", name = "panglia_dust", amount = 101},
    {type = "item", name = "hyperlanes-antimatter-particulate", amount = 100},
    {type = "item", name = "metallic-asteroid-chunk", amount = 1, quality_min = "legendary"},
    {type = "item", name = "carbonic-asteroid-chunk", amount = 1, quality_min = "legendary"},
    {type = "item", name = "oxide-asteroid-chunk", amount = 1, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite_fiber", amount = 10},
    {type = "fluid", name = "panglia_branbalite_slurry", amount = 20},
}
data.raw["recipe"]["universe_precursor"].categories = {"particle-manipulation"}
data.raw["technology"]["panglia_universe_precursor"].effects = {
    {
        type = "unlock-recipe",
        recipe = "universe_precursor"
    }
}
table.remove(data.raw["technology"]["matter_printer-technology"].effects, 2)


-- Volcanic universe precursor
data.raw["recipe"]["panglia_universe_precursor_volcanic"].ingredients = {
    {type = "item", name = "universe_precursor", amount = 1},
    {type = "fluid", name = "lava", amount = 100},
}


-- Cosmic incubator
data.raw["recipe"]["matter_printer"].ingredients = {
    {type = "item", name = "centrifuge", amount = 1, quality_min = "legendary"},
    {type = "item", name = "datacell-cosmic-data", amount = 100},
    {type = "item", name = "panglia_panglite_glass", amount = 50},
    {type = "item", name = "hyperlanes-antimatter-particulate", amount = 100},
    {type = "item", name = "panglia_dust", amount = 100},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 200, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 200, quality_min = "legendary"},
}
data.raw["recipe"]["matter_printer"].categories = {"mechanics"}


-- DNA scanner
data.raw["recipe"]["panglia_dna_scanner"].ingredients = {
    {type = "item", name = "cryolab", amount = 1},
    {type = "item", name = "planetaris-ruby-laser-turret", amount = 4, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite_glass", amount = 20},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 100, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 100, quality_min = "legendary"},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 20, quality_min = "legendary"},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 100},
}
data.raw["recipe"]["panglia_dna_scanner"].categories = {"mechanics"}


-- DNA builder
data.raw["recipe"]["panglia_dna_builder"].ingredients = {
    {type = "item", name = "panglia_dna_scanner", amount = 1},
    {type = "item", name = "biovat", amount = 1, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1},
    {type = "item", name = "ai-tier-10", amount = 3, quality_min = "legendary"},
    {type = "item", name = "planetaris-crystalization-motor", amount = 20, quality_min = "legendary"},
    {type = "item", name = "datacell-dna-raw", amount = 100},
    {type = "item", name = "datacell-dna-sequenced", amount = 50},
    {type = "fluid", name = "panglia_branbalite_slurry", amount = 200},
}


-- Cloned specimen embryo candidate
-- data.raw["recipe"]["panglia_cloned_specimen_embryo_candidate"].ingredients = {
--     {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1, quality_min = "uncommon"},
--     {type = "fluid", name = "dna_sequenced_data", amount = 10},
-- }
-- guys. im scared. im scared to touch this chain its too crazy


-- Simulation chamber
data.raw["recipe"]["simulation_chamber"].ingredients = {
    {type = "item", name = "panglia_dna_scanner", amount = 1},
    {type = "item", name = "planetaris-incubator", amount = 1},
    {type = "item", name = "biovat", amount = 1, quality_min = "legendary"},
    {type = "item", name = "ai-tier-10", amount = 3, quality_min = "legendary"},
    {type = "item", name = "planetaris-simulating-unit", amount = 20, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1},
    {type = "item", name = "panglia_panglite_fiber", amount = 100},
    {type = "fluid", name = "panglia_branbalite_slurry", amount = 200},
}


-- Synaptic assembler
data.raw["recipe"]["thinking-brain"].ingredients = {
    {type = "item", name = "planetaris-bioassembler-seed", amount = 1, quality_min = "legendary"},
    {type = "item", name = "panglia_cloned_specimen_body_3_genius", amount = 1},
    {type = "item", name = "simulation_chamber", amount = 1},
    {type = "item", name = "data-processor", amount = 1, quality_min = "legendary"},
    {type = "item", name = "ai-tier-10", amount = 3, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-antimatter-particulate", amount = 100},
    {type = "item", name = "hyperlanes-time-crystal-b", amount = 1},
    {type = "fluid", name = "panglia_branbalite_slurry", amount = 200},
}
data.raw["assembling-machine"]["thinking-brain"].effect_receiver = data.raw["assembling-machine"]["thinking-brain"].effect_receiver or {}
data.raw["assembling-machine"]["thinking-brain"].effect_receiver.base_effect = {
    productivity = 1.0,
    quality = 0.5
}
data.raw["assembling-machine"]["thinking-brain"].crafting_speed = 4.0


-- Sentient processor
data.raw["recipe"]["panglia_sentient_processor"].ingredients = {
    {type = "item", name = "panglia_cloned_specimen_body_3", amount = 1, quality_min = "uncommon"},
    {type = "item", name = "quantum-processor", amount = 10, quality_min = "legendary"},
    {type = "item", name = "ai-tier-10", amount = 1, quality_min = "legendary"},
    {type = "item", name = "panglia_panglite_fiber", amount = 5},
    {type = "item", name = "hyperlanes-time-crystal-a", amount = 1},
}


-- Asteroid collector mk2
data.raw["recipe"]["snouz_better_asteroid_collector"].ingredients = {
    {type = "item", name = "asteroid-collector", amount = 5, quality_min = "legendary"},
    {type = "item", name = "panglia_sentient_processor", amount = 1},
    {type = "item", name = "planetaris-crystalization-motor", amount = 50, quality_min = "legendary"},
    {type = "fluid", name = "fluoroketone-cold", amount = 6},
}


-- Sentient processor gets angy
data.raw["item"]["panglia_sentient_processor"].spoil_ticks = 30 * 60
data.raw["item"]["panglia_sentient_processor"].spoil_result = "hyperlanes-rogue-processor"


-- Raw DNA recipe rebalance
data.raw["recipe"]["panglia_collect_dna_fish"].results = {
    {type = "item", name = "spoilage", amount = 1},
    {type = "fluid", name = "dna_raw_data", amount_min = 1, amount_max = 3},
}

data.raw["recipe"]["panglia_collect_dna_biter"].results = {
    {type = "item", name = "spoilage", amount = 1},
    {type = "fluid", name = "dna_raw_data", amount_min = 2, amount_max = 12},
}

data.raw["recipe"]["panglia_collect_dna_biter_egg"].results = {
    {type = "item", name = "spoilage", amount = 1},
    {type = "fluid", name = "dna_raw_data", amount_min = 4, amount_max = 35},
}

data.raw["recipe"]["panglia_collect_dna_demolisher"].results = {
    {type = "item", name = "stone", amount_min = 17, amount_max = 32},
    {type = "fluid", name = "dna_raw_data", amount_min = 105, amount_max = 532},
}

data.raw["recipe"]["panglia_collect_dna_pentapod"].results = {
    {type = "item", name = "spoilage", amount = 1},
    {type = "fluid", name = "dna_raw_data", amount_min = 3, amount_max = 29},
}


-- ╒═════════╗ ╒═════════╗ ╒═════════╗  ╒════════════╗  ╒══════╗ ╒═════════╗      ╒══════╗  ╒════╗   ╒════╗ ╒═════════╗    
-- │  ╓────┐ ║ │  ╓───┐  ║ │  ╓────┐ ║  │  ╓─┐  ╓─┐  ║  └─┐  ╓─╜ │  ╓────┐ ║      └─┐  ╓─╜  │    ╚╗  └┐  ╓╜ │  ╓────┐ ║    
-- │  ║    └─╜ │  ║   │  ║ │  ║    └─╜  │  ║ │  ║ │  ║    │  ║   │  ║    └─╜        │  ║    │  ╟┐ ╚╗  │  ║  │  ║    └─╜    
-- │  ║        │  ║   │  ║ │  ╚══════╗  │  ║ │  ║ │  ║    │  ║   │  ║               │  ║    │  ║└┐ ╚╗ │  ║  │  ║           
-- │  ║        │  ║   │  ║ └──────┐  ║  │  ║ │  ║ │  ║    │  ║   │  ║               │  ║    │  ║ └┐ ╚╗│  ║  │  ║           
-- │  ║    ╒═╗ │  ║   │  ║ ╒═╗    │  ║  │  ║ └──╜ │  ║    │  ║   │  ║    ╒═╗        │  ║    │  ║  └┐ ╚╡  ║  │  ║    ╒═╗    
-- │  ╚════╛ ║ │  ╚═══╛  ║ │ ╚════╛  ║ ╒╛  ╚╗    ╒╛  ╚╗ ╒═╛  ╚═╗ │  ╚════╛ ║      ╒═╛  ╚═╗ ╒╛  ╚╗  └┐    ║  │  ╚════╛ ║ ╒═╗
-- └─────────╜ └─────────╜ └─────────╜ └────╜    └────╜ └──────╜ └─────────╜      └──────╜ └────╜   └────╜  └─────────╜ └─╜
local cosmic_incubator_recipes = {
    "cosmic_incubator_recipe_nauvis",
    "cosmic_incubator_recipe_muluna",
    "panglia_universe_precursor_2_result",
    "cosmic_incubator_recipe_vulcanus",
    "cosmic_incubator_recipe_gleba",
    "cosmic_incubator_recipe_maraxsis-trench",
    "cosmic_incubator_recipe_fulgora",
    "cosmic_incubator_recipe_cerys",
    "cosmic_incubator_recipe_maraxsis",
    "cosmic_incubator_recipe_aquilo",
    "cosmic_incubator_recipe_moshine",
    "cosmic_incubator_recipe_paracelsin",
    "cosmic_incubator_recipe_arig",
    "cosmic_incubator_recipe_hyarion",
    "cosmic_incubator_recipe_tellus",
    "cosmic_incubator_recipe_vesta",
    "cosmic_incubator_recipe_muria",
    "cosmic_incubator_recipe_rubia",
}

local cosmic_incubator_recipes_results = {
    ["cosmic_incubator_recipe_nauvis"] = {"metallic-asteroid-chunk", "carbonic-asteroid-chunk", "oxide-asteroid-chunk"},
    ["cosmic_incubator_recipe_muluna"] = {"anorthite-chunk"},
    ["panglia_universe_precursor_2_result"] = {"hyperlanes-panglia-asteroid-chunk"},
    ["cosmic_incubator_recipe_vulcanus"] = {"hyperlanes-vulcanus-asteroid-chunk"},
    ["cosmic_incubator_recipe_gleba"] = {"hyperlanes-gleba-asteroid-chunk"},
    ["cosmic_incubator_recipe_maraxsis-trench"] = {"stone"},
    ["cosmic_incubator_recipe_fulgora"] = {"hyperlanes-fulgora-asteroid-chunk"},
    ["cosmic_incubator_recipe_cerys"] = {"hyperlanes-cerys-asteroid-chunk"},
    ["cosmic_incubator_recipe_maraxsis"] = {"hyperlanes-maraxsis-asteroid-chunk"},
    ["cosmic_incubator_recipe_aquilo"] = {"hyperlanes-aquilo-asteroid-chunk"},
    ["cosmic_incubator_recipe_moshine"] = {"hyperlanes-moshine-asteroid-chunk"},
    ["cosmic_incubator_recipe_paracelsin"] = {"hyperlanes-paracelsin-asteroid-chunk"},
    ["cosmic_incubator_recipe_arig"] = {"hyperlanes-arig-asteroid-chunk"},
    ["cosmic_incubator_recipe_hyarion"] = {"bismuth-asteroid-chunk"},
    ["cosmic_incubator_recipe_tellus"] = {"hyperlanes-tellus-asteroid-chunk"},
    ["cosmic_incubator_recipe_vesta"] = {"hyperlanes-vesta-asteroid-chunk"},
    ["cosmic_incubator_recipe_muria"] = {"hyperlanes-muria-asteroid-chunk"},
    ["cosmic_incubator_recipe_rubia"] = {"hyperlanes-rubia-asteroid-chunk"},
}


for index, recipe_name in ipairs(cosmic_incubator_recipes) do
    data.raw["recipe"][recipe_name].energy_required = 60.0
    data.raw["recipe"][recipe_name].results = {}
    for index, result_item_name in ipairs(cosmic_incubator_recipes_results[recipe_name]) do
        table.insert(data.raw["recipe"][recipe_name].results, {type = "item", name = result_item_name, amount_min = 0, amount_max = 200, quality_change = 0})
        table.insert(data.raw["recipe"][recipe_name].results, {type = "item", name = result_item_name, amount_min = 0, amount_max = 50, quality_change = 1})
        table.insert(data.raw["recipe"][recipe_name].results, {type = "item", name = result_item_name, amount_min = 0, amount_max = 12, quality_change = 2})
        table.insert(data.raw["recipe"][recipe_name].results, {type = "item", name = result_item_name, amount_min = 0, amount_max = 3, quality_change = 3})
        table.insert(data.raw["recipe"][recipe_name].results, {type = "item", name = result_item_name, amount_min = 0, amount_max = 1, quality_change = 4})
    end
end





-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

-- refer to data-final-fixes

data.raw["technology"]["panglia_crusher"].prerequisites = {"panglia_panglite_fiber"}
data.raw["technology"]["panglia_crusher"].unit.ingredients = utils.t10_sp
data.raw["technology"]["panglia_crusher"].unit.count = utils.t10_spcost_smalltech

data.raw["technology"]["panglia_advanced_circuit_from_panglite_fiber"].enabled = false
data.raw["technology"]["panglia_advanced_circuit_from_panglite_fiber"].hidden = true

data.raw["technology"]["panglia_low_density_structure_from_panglite_fiber"].enabled = false
data.raw["technology"]["panglia_low_density_structure_from_panglite_fiber"].hidden = true

data.raw["technology"]["panglia_branbalite_slurry_to_lubricant"].enabled = false
data.raw["technology"]["panglia_branbalite_slurry_to_lubricant"].hidden = true

data.raw["technology"]["panglia_branbalite_slurry_to_rocket_fuel"].enabled = false
data.raw["technology"]["panglia_branbalite_slurry_to_rocket_fuel"].hidden = true

data.raw["technology"]["panglia_advanced_optics_nanotech"].prerequisites = {"panglia_panglite_glass"}

data.raw["technology"]["panglia_worker-robots-speed"].enabled = false
data.raw["technology"]["panglia_worker-robots-speed"].hidden = true

data.raw["technology"]["panglia_worker-robots-storage-1"].enabled = false
data.raw["technology"]["panglia_worker-robots-storage-1"].hidden = true

data.raw["technology"]["panglia_worker-robots-storage-2"].enabled = false
data.raw["technology"]["panglia_worker-robots-storage-2"].hidden = true

data.raw["technology"]["panglia_universe_precursor"].prerequisites = {"panglia_crusher"}

data.raw["technology"]["matter_printer-technology"].prerequisites = {"panglia_universe_precursor"}

data.raw["technology"]["panglia_universe_precursor_volcanic"].prerequisites = {"matter_printer-technology"}

data.raw["technology"]["snouz_wall_hull"].prerequisites = {"panglia_panglite_fiber"}

data.raw["technology"]["snouz_long_electric_gun_turret"].prerequisites = {"panglia_panglite_fiber"}
-- data.raw["technology"]["snouz_long_electric_gun_turret"].enabled = false
-- data.raw["technology"]["snouz_long_electric_gun_turret"].hidden = true

data.raw["technology"]["panglia_simulation_chamber"].prerequisites = {"panglia_dna_manipulation_phasetwo_tech"}

data.raw["technology"]["snouz_better_asteroid_collector"].prerequisites = {"panglia_sentient_processor"}