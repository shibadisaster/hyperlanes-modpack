local utils = require("__hyperlanes-modpack__/utils")


-- Fish food
data.raw["recipe"]["maraxsis-fish-food"].ingredients = {
    {type = "item", name = "maraxsis-coral", amount = 3},
    {type = "item", name = "maraxsis-tropical-fish", amount = 1},
    {type = "fluid", name = "planetaris-pure-sand", amount = 10},
    {type = "item", name = "jelly", amount = 2, quality_min = "uncommon"},
    {type = "item", name = "yumako-mash", amount = 1, quality_min = "uncommon"},
    {type = "fluid", name = "hyperlanes-metamaterial-microsuspension", amount = 10},
}


-- Conduit
data.raw["recipe"]["maraxsis-conduit"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 25},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 15},
    {type = "item", name = "planetaris-simulating-unit", amount = 5},
    {type = "item", name = "superconductor", amount = 25, quality_min = "epic"},
    {type = "item", name = "beacon", amount = 1, quality_min = "epic"},
    {type = "item", name = "ai-tier-8", amount = 1},
}


-- Reinforced glass
data.raw["recipe"]["maraxsis-glass-panes"].ingredients = {
    {type = "item", name = "glass", amount = 3},
    {type = "item", name = "limestone", amount = 1},
    {type = "item", name = "salt", amount = 2, quality_min = "uncommon"},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
    {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
}


-- Super sealant substance
data.raw["recipe"]["maraxsis-super-sealant-substance"].ingredients = {
    {type = "item", name = "sulfur", amount = 3},
    {type = "item", name = "hyperlanes-sealant", amount = 3},
    {type = "item", name = "calcite", amount = 3, quality_min = "epic"},
    {type = "fluid", name = "heavy-oil", amount = 200},
    {type = "fluid", name = "hydrogen", amount = 100},
}


-- Pressure dome
data.raw["recipe"]["maraxsis-pressure-dome"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 1000},
    {type = "item", name = "tungsten-plate", amount = 100, quality_min = "epic"},
    {type = "item", name = "pipe", amount = 100},
    {type = "item", name = "pump", amount = 20, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 20},
}


-- Hydro plant
data.raw["recipe"]["maraxsis-hydro-plant"].ingredients = {
    {type = "item", name = "planetaris-simulating-unit", amount = 10},
    {type = "item", name = "tungsten-plate", amount = 50, quality_min = "epic"},
    {type = "item", name = "pump", amount = 10, quality_min = "epic"},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "glass", amount = 20},
    {type = "item", name = "quality-module-3", amount = 1, quality_min = "epic"},
    {type = "item", name = "flare-stack", amount = 1},
    {type = "item", name = "chemical-plant", amount = 2, quality_min = "rare"},
}


-- Fix for softlock by allowing unbarreling of polishing compound in a chemical/hydro plant
-- table.insert(data.raw["recipe"]["empty-planetaris-polishing-compound-barrel"].categories, "chemistry") 
table.insert(data.raw["recipe"]["empty-planetaris-polishing-compound-barrel"].categories, "maraxsis-hydro-plant")


-- Piscary
data.raw["recipe"]["maraxsis-fishing-tower"].ingredients = {
    {type = "item", name = "maraxsis-coral", amount = 30},
    {type = "item", name = "maraxsis-glass-panes", amount = 30},
    {type = "item", name = "agricultural-tower", amount = 1, quality_min = "rare"},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "planetaris-simulating-unit", amount = 10},
}


-- Sonar
data.raw["recipe"]["maraxsis-sonar"].ingredients = {
    {type = "item", name = "planetaris-electromagnetic-radar", amount = 1, quality_min = "rare"},
    {type = "item", name = "maraxsis-glass-panes", amount = 20},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "planetaris-simulating-unit", amount = 20},
}
data.raw["radar"]["maraxsis-sonar"].max_distance_of_nearby_sector_revealed = 16
data.raw["radar"]["maraxsis-sonar"].max_distance_of_sector_revealed = 64
data.raw["radar"]["maraxsis-sonar"].energy_per_nearby_scan = "6300kJ" -- consumes 900 kW, so we have this scan every 7 seconds (to roughly match up with the sound of the sonar :3)
data.raw["radar"]["maraxsis-sonar"].energy_per_sector = "1575kJ"


-- Ducts
data.raw["recipe"]["duct-small"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 1, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}
data.raw["recipe"]["duct-underground"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 15, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 8},
}
data.raw["recipe"]["duct-t-junction"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}
data.raw["recipe"]["duct-curve"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}
data.raw["recipe"]["duct-cross"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}
data.raw["recipe"]["non-return-duct"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "iron-gear-wheel", amount = 4, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}
data.raw["recipe"]["duct-intake"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 6, quality_min = "epic"},
    {type = "item", name = "pump", amount = 1, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 3},
}
data.raw["recipe"]["duct-exhaust"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 6, quality_min = "epic"},
    {type = "item", name = "pump", amount = 1, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 3},
}
data.raw["recipe"]["maraxsis-trench-duct"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 100, quality_min = "epic"},
    {type = "item", name = "pump", amount = 10, quality_min = "epic"},
    {type = "item", name = "duct-small", amount = 100},
    {type = "item", name = "hyperlanes-sealant", amount = 50},
}


-- Submarines
data.raw["recipe"]["maraxsis-diesel-submarine"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 30, quality_min = "epic"},
    {type = "item", name = "planetaris-simulating-unit", amount = 10},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "pump", amount = 4, quality_min = "epic"},
}

data.raw["recipe"]["maraxsis-nuclear-submarine"].ingredients = {
    {type = "item", name = "maraxsis-diesel-submarine", amount = 1},
    {type = "item", name = "tungsten-plate", amount = 50, quality_min = "epic"},
    {type = "item", name = "planetaris-simulating-unit", amount = 20},
    {type = "item", name = "maraxsis-glass-panes", amount = 100},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 100},
    {type = "item", name = "pump", amount = 8, quality_min = "epic"},
    {type = "item", name = "nuclear-reactor", amount = 1},
    {type = "item", name = "maraxsis-sonar", amount = 1},
}


-- Spidertron dock
data.raw["recipe"]["sp-spidertron-dock"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 16, quality_min = "epic"},
    {type = "item", name = "stack-inserter", amount = 4},
}


-- Geothermal generator
data.raw["recipe"]["maraxsis-geothermal-generator"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 50, quality_min = "epic"},
    {type = "item", name = "maraxsis-glass-panes", amount = 200},
    {type = "item", name = "planetaris-simulating-unit", amount = 15},
    {type = "item", name = "maraxsis-trench-duct", amount = 1},
}


-- Bigg steam turbine
data.raw["recipe"]["maraxsis-oversized-steam-turbine"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 100, quality_min = "epic"},
    {type = "item", name = "maraxsis-glass-panes", amount = 100},
    {type = "item", name = "planetaris-simulating-unit", amount = 25},
    {type = "item", name = "steam-turbine", amount = 3, quality_min = "rare"},
}


-- Salt filter
data.raw["recipe"]["maraxsis-salt-filter"].ingredients = {
    {type = "item", name = "steel-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "carbon-fiber", amount = 2, quality_min = "epic"},
    {type = "item", name = "hyperlanes-sealant", amount = 1}
}


-- Wyrm confinement
data.raw["recipe"]["maraxsis-wyrm-confinement-cell"].ingredients = {
    {type = "item", name = "steel-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "tungsten-plate", amount = 1, quality_min = "epic"},
    {type = "item", name = "maraxsis-glass-panes", amount = 5}
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-maraxsis"].unit.ingredients = utils.t7_sp
data.raw["technology"]["planet-discovery-maraxsis"].unit.count = utils.t7_spcost_planet

data.raw["technology"]["maraxsis-effect-transmission-2"].prerequisites = {
    "maraxsis-project-seadragon",
    "effect-transmission"
}
data.raw["technology"]["maraxsis-effect-transmission-2"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["maraxsis-effect-transmission-2"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["maraxsis-sonar"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["maraxsis-sonar"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["maraxsis-stone-centrifuging"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["maraxsis-stone-centrifuging"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["maraxsis-deepsea-research"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["maraxsis-deepsea-research"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["cargo-landing-pad-capacity"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["cargo-landing-pad-capacity"].unit.count_formula = "5^(L-1)*" .. utils.t7_spcost_tech

data.raw["technology"]["maraxsis-glass-productivity"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["maraxsis-glass-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t7_spcost_tech

data.raw["technology"]["maraxsis-omega_3"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["maraxsis-omega_3"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["legendary-quality"].prerequisites = {
    "quality-module-3",
    "maraxsis-project-seadragon"
}
data.raw["technology"]["legendary-quality"].unit.ingredients = utils.t7_sp_maraxsis
data.raw["technology"]["legendary-quality"].unit.count = utils.t7_spcost_bigtech


-- ╒═════════╗ ╒═════════╗  ╒════════════╗  ╒═════════╗  ╒═════════╗ ╒═════════╗
-- │  ╓────┐ ║ │  ╓───┐  ║  │  ╓─┐  ╓─┐  ║  └┐  ╓───┐ ╚╗ │  ╓───┐  ║ │  ╓────┐ ║
-- │  ║    └─╜ │  ║   │  ║  │  ║ │  ║ │  ║   │  ║   │  ║ │  ║   │  ║ │  ║    └─╜
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╚═══╛  ║ │  ║   │  ║ │  ╚══════╗
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╓───┐  ║ │  ║   │  ║ └──────┐  ║
-- │  ║    ╒═╗ │  ║   │  ║  │  ║ └──╜ │  ║   │  ║   │  ║ │  ║   │  ║ ╒═╗    │  ║
-- │  ╚════╛ ║ │  ╚═══╛  ║ ╒╛  ╚╗    ╒╛  ╚╗ ╒╛  ╚═══╛ ╓╜ │  ╚═══╛  ║ │ ╚════╛  ║
-- └─────────╜ └─────────╜ └────╜    └────╜ └─────────╜  └─────────╜ └─────────╜

data.raw["technology"]["maraxsis-liquid-atmosphere"].unit.ingredients = utils.t8_sp
data.raw["technology"]["maraxsis-liquid-atmosphere"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["maraxsis-nuclear-submarine"].unit.ingredients = utils.t8_sp
data.raw["technology"]["maraxsis-nuclear-submarine"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["maraxsis-abyssal-diving-gear"].unit.ingredients = utils.t8_sp
data.raw["technology"]["maraxsis-abyssal-diving-gear"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["maraxsis-depth-charges"].unit.ingredients = utils.t8_sp
data.raw["technology"]["maraxsis-depth-charges"].unit.count = utils.t7_spcost_bigtech