local utils = require("__hyperlanes-modpack__/utils")


-- Lead smelting
data.raw["recipe"]["muria-lead-plate"].ingredients = {
    {type = "item", name = "hyperlanes-purified-lead", amount = 2},
}
data.raw["recipe"]["molten-lead"].ingredients = {
    {type = "item", name = "hyperlanes-purified-lead", amount = 10},
    {type = "fluid", name = "hydrogen", amount = 100}
}

-- Acidworking plant
data.raw["recipe"]["acidworking-plant"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "processing-unit", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "lead-plate", amount = 10},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "chemical-plant", amount = 3},
    {type = "fluid", name = "chlorine", amount = 50},
}

-- Smelting plant
data.raw["recipe"]["smelting-plant"].ingredients = {
    {type = "item", name = "aluminum-plate", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "processing-unit", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "lead-plate", amount = 10},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "foundry", amount = 1},
    {type = "item", name = "electric-furnace", amount = 3},
    {type = "fluid", name = "oxygen", amount = 50},
}


-- Lead bots
data.raw["recipe"]["lead-logistic-robot"].ingredients = {
    {type = "item", name = "logistic-robot", amount = 1},
    {type = "item", name = "flying-robot-frame", amount = 1},
    {type = "item", name = "anti-corrosion-cladding", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
}

data.raw["recipe"]["lead-construction-robot"].ingredients = {
    {type = "item", name = "construction-robot", amount = 1},
    {type = "item", name = "flying-robot-frame", amount = 1},
    {type = "item", name = "anti-corrosion-cladding", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
}


-- Aqua regia
data.raw["recipe"]["aqua-regia"].ingredients = {
    {type = "item", name = "calcite", amount = 2, quality_min = "uncommon"},
    {type = "fluid", name = "nitric-acid", amount = 50},
    {type = "fluid", name = "hydrogen-chloride", amount = 150},
}


-- Smelting plant base productivity adjustment
data.raw["assembling-machine"]["smelting-plant"].effect_receiver = data.raw["assembling-machine"]["smelting-plant"].effect_receiver or {}
data.raw["assembling-machine"]["smelting-plant"].effect_receiver.base_effect = {
    productivity = 0.6
}


-- Scrubber
data.raw["recipe"]["scrubber"].ingredients = {
    {type = "item", name = "iron-gear-wheel", amount = 15, quality_min = "uncommon"},
    {type = "item", name = "carbon-fiber", amount = 10, quality_min = "uncommon"},
    {type = "item", name = "lead-plate", amount = 10},
    {type = "item", name = "anti-corrosion-cladding", amount = 10},
    {type = "item", name = "pipe", amount = 5},
}


-- Hydrogen chloride
data.raw["recipe"]["hydrogen-chloride"].ingredients = {
    {type = "item", name = "copper-plate", amount = 1, quality_min = "uncommon"},
    {type = "fluid", name = "chlorine", amount = 50},
    {type = "fluid", name = "hydrogen", amount = 50},
}


-- Biovat rebalance, they are much slower than Biochambers but have better productivity
data.raw["assembling-machine"]["biovat"].effect_receiver = data.raw["assembling-machine"]["biovat"].effect_receiver or {}
data.raw["assembling-machine"]["biovat"].effect_receiver.base_effect = {
    productivity = 0.6
}
data.raw["assembling-machine"]["biovat"].crafting_speed = 0.75

-- Biovat
data.raw["recipe"]["biovat"].ingredients = {
    {type = "item", name = "biochamber", amount = 1},
    {type = "item", name = "copper-plate", amount = 10, quality_min = "uncommon"},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "nutrients", amount = 5},
    {type = "item", name = "eschatotaxite-sprout", amount = 5},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-muria"].unit.ingredients = utils.t5_sp
data.raw["technology"]["planet-discovery-muria"].unit.count = utils.t5_spcost_planet

data.raw["technology"]["advanced-paste-applications"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["advanced-paste-applications"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["hydronium-destruction-productivity"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["hydronium-destruction-productivity"].unit.count_formula = "1.5^L*" .. utils.t5_spcost_tech

data.raw["technology"]["lead-robots"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["lead-robots"].unit.count = utils.t5_spcost_bigtech

-- offworld-chlorine-compounds-production ????? weird science reqs, i get it now, acidworking packs corrode so we need to prime them with hcl (which we assume is barreled)
-- data.raw["technology"]["offworld-chlorine-compounds-production"].unit.ingredients = utils.t5_sp_muria
-- data.raw["technology"]["offworld-chlorine-compounds-production"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["shotgun-turret"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["shotgun-turret"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["weapon-shooting-speed-7"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["weapon-shooting-speed-7"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["weapon-shooting-speed-8"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["weapon-shooting-speed-8"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["explosive-shotgun-shell"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["explosive-shotgun-shell"].unit.count = utils.t5_spcost_tech

-- weird science reqs pt2
-- data.raw["technology"]["hydrogen-chloride-from-biter-egg"].unit.ingredients = utils.t5_sp_muria
-- data.raw["technology"]["hydrogen-chloride-from-biter-egg"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["acid-weaponization"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["acid-weaponization"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["refined-acid-weaponry"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["refined-acid-weaponry"].unit.count_formula = "2^(L-1)*" .. utils.t5_spcost_smalltech

data.raw["technology"]["advanced-acid-processing"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["advanced-acid-processing"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["pickled-casting"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["pickled-casting"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["air-scrubbing"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["air-scrubbing"].unit.count = utils.t5_spcost_bigtech
data.raw["technology"]["air-scrubbing"].prerequisites = {"offworld-chlorine-compounds-production"}

data.raw["technology"]["hydrogen-chloride-explosives"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["hydrogen-chloride-explosives"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["explosives-productivity"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["explosives-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["hydrogen-chloride-lead-battery"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["hydrogen-chloride-lead-battery"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["battery-productivity"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["battery-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["holmium-chloride"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["holmium-chloride"].unit.count = utils.t5_spcost_bigtech
data.raw["technology"]["holmium-chloride"].prerequisites = {"offworld-chlorine-compounds-production"}

-- Oxygenated bacteria culti moved as combo tech with Rubia

data.raw["technology"]["toxic-rounds-magazine"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["toxic-rounds-magazine"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["zinc-and-lead-refining"].unit.ingredients = utils.t5_sp_muria
data.raw["technology"]["zinc-and-lead-refining"].unit.count = utils.t5_spcost_tech
data.raw["technology"]["zinc-and-lead-refining"].prerequisites = {"advanced-acid-processing"}