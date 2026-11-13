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
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50, quality_min = "mythic"},
    {type = "item", name = "quantum-processor", amount = 50, quality_min = "mythic"},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 50, quality_min = "mythic"},
}


-- Panglite fiber
data.raw["recipe"]["panglia_panglite_fiber"].ingredients = {
    {type = "item", name = "ske_mesh", amount = 20, quality_min = "mythic"},
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
    {type = "item", name = "maraxsis-glass-panes", amount = 1, quality_min = "mythic"},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 2, quality_min = "mythic"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 5, quality_min = "mythic"},
    {type = "item", name = "panglia_panglite", amount = 10},
}


-- Spaceship hull
data.raw["recipe"]["snouz_wall_hull"].ingredients = {
    {type = "item", name = "panglia_panglite_fiber", amount = 5},
    {type = "item", name = "low-density-space-platform-foundation", amount = 1},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 2, quality_min = "mythic"},
    {type = "item", name = "craptonite-wall", amount = 1, quality_min = "mythic"},
}
data.raw["recipe"]["snouz_wall_hull"].categories = {"space-manufacturing"}

data.raw["wall"]["snouz_wall_hull"].max_health = 1000
data.raw["wall"]["snouz_wall_hull"].healing_per_tick = 10.0 / 60.0
table.insert(data.raw["wall"]["snouz_wall_hull"].resistances, {
    type = "rubia-kinetic",
    percent = 100
})


-- Focused gun turret removed


-- Hypercrusher
data.raw["recipe"]["panglia_crusher"].ingredients = {
    {type = "item", name = "crusher-2", amount = 1, quality_min = "mythic"},
    {type = "item", name = "planetaris-sifter", amount = 1, quality_min = "mythic"},
    {type = "item", name = "panglia_panglite_fiber", amount = 10},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 10, quality_min = "mythic"},
    {type = "item", name = "quantum-processor", amount = 10, quality_min = "mythic"},
}

-- Universe precursor
data.raw["recipe"]["universe_precursor"].ingredients = {
    {type = "item", name = "panglia_dust", amount = 101},
    {type = "item", name = "hyperlanes-antimatter-particulate", amount = 100},
    {type = "item", name = "metallic-asteroid-chunk", amount = 1, quality_min = "mythic"},
    {type = "item", name = "carbonic-asteroid-chunk", amount = 1, quality_min = "mythic"},
    {type = "item", name = "oxide-asteroid-chunk", amount = 1, quality_min = "mythic"},
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
    {type = "item", name = "centrifuge", amount = 1, quality_min = "mythic"},
    {type = "item", name = "datacell-cosmic-data", amount = 100},
    {type = "item", name = "panglia_panglite_glass", amount = 50},
    {type = "item", name = "hyperlanes-antimatter-particulate", amount = 100},
    {type = "item", name = "panglia_dust", amount = 100},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 200, quality_min = "mythic"},
    {type = "item", name = "quantum-processor", amount = 200, quality_min = "mythic"},
}
data.raw["recipe"]["matter_printer"].categories = {"mechanics"}


-- DNA scanner
data.raw["recipe"]["panglia_dna_scanner"].ingredients = {
    {type = "item", name = "cryolab", amount = 1},
    {type = "item", name = "planetaris-ruby-laser-turret", amount = 4, quality_min = "mythic"},
    {type = "item", name = "panglia_panglite_glass", amount = 20},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 100, quality_min = "mythic"},
    {type = "item", name = "quantum-processor", amount = 100, quality_min = "mythic"},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 20, quality_min = "mythic"},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 100},
}
data.raw["recipe"]["panglia_dna_scanner"].categories = {"mechanics"}



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
data.raw["technology"]["snouz_long_electric_gun_turret"].enabled = false
data.raw["technology"]["snouz_long_electric_gun_turret"].hidden = true

data.raw["technology"]["panglia_simulation_chamber"].prerequisites = {"panglia_dna_manipulation_phasetwo_tech"}

data.raw["technology"]["snouz_better_asteroid_collector"].prerequisites = {"panglia_sentient_processor"}