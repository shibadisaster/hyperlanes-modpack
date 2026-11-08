local utils = require("__hyperlanes-modpack__/utils")


-- Fish food
data.raw["recipe"]["maraxsis-fish-food"].ingredients = {
    {type = "item", name = "maraxsis-coral", amount = 3},
    {type = "item", name = "maraxsis-tropical-fish", amount = 1},
    {type = "fluid", name = "planetaris-pure-sand", amount = 10},
    {type = "item", name = "jelly", amount = 2},
    {type = "item", name = "yumako-mash", amount = 1},
    {type = "fluid", name = "hyperlanes-metamaterial-microsuspension", amount = 10},
}


-- Conduit
data.raw["recipe"]["maraxsis-conduit"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 25},
    {type = "item", name = "maraxsis-super-sealant-substance", amount = 15},
    {type = "item", name = "planetaris-simulating-unit", amount = 5},
    {type = "item", name = "superconductor", amount = 25},
    {type = "item", name = "beacon", amount = 1},
    {type = "item", name = "ai-tier-8", amount = 1},
}


-- Reinforced glass
data.raw["recipe"]["maraxsis-glass-panes"].ingredients = {
    {type = "item", name = "glass", amount = 3},
    {type = "item", name = "limestone", amount = 1},
    {type = "item", name = "salt", amount = 2},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
    {type = "fluid", name = "planetaris-polishing-compound", amount = 10},
}


-- Super sealant substance
data.raw["recipe"]["maraxsis-super-sealant-substance"].ingredients = {
    {type = "item", name = "sulfur", amount = 3},
    {type = "item", name = "hyperlanes-sealant", amount = 3},
    {type = "fluid", name = "heavy-oil", amount = 200},
    {type = "fluid", name = "hydrogen", amount = 100},
}


-- Pressure dome
data.raw["recipe"]["maraxsis-pressure-dome"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 1000},
    {type = "item", name = "tungsten-plate", amount = 100},
    {type = "item", name = "pipe", amount = 100},
    {type = "item", name = "pump", amount = 20},
    {type = "item", name = "hyperlanes-sealant", amount = 20},
}


-- Hydro plant
data.raw["recipe"]["maraxsis-hydro-plant"].ingredients = {
    {type = "item", name = "planetaris-simulating-unit", amount = 10},
    {type = "item", name = "tungsten-plate", amount = 50},
    {type = "item", name = "pump", amount = 10},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "glass", amount = 20},
    {type = "item", name = "quality-module-3", amount = 1},
    {type = "item", name = "flare-stack", amount = 1},
    {type = "item", name = "chemical-plant", amount = 2},
}


-- Fix for softlock by allowing unbarreling of polishing compound in a chemical/hydro plant
-- table.insert(data.raw["recipe"]["empty-planetaris-polishing-compound-barrel"].categories, "chemistry") 
table.insert(data.raw["recipe"]["empty-planetaris-polishing-compound-barrel"].categories, "maraxsis-hydro-plant")


-- Piscary
data.raw["recipe"]["maraxsis-fishing-tower"].ingredients = {
    {type = "item", name = "maraxsis-coral", amount = 30},
    {type = "item", name = "maraxsis-glass-panes", amount = 30},
    {type = "item", name = "agricultural-tower", amount = 1},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "planetaris-simulating-unit", amount = 10},
}


-- Sonar
data.raw["recipe"]["maraxsis-sonar"].ingredients = {
    {type = "item", name = "planetaris-electromagnetic-radar", amount = 1},
    {type = "item", name = "maraxsis-glass-panes", amount = 20},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "planetaris-simulating-unit", amount = 20},
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