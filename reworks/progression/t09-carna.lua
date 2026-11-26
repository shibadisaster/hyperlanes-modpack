local utils = require("__hyperlanes-modpack__/utils")


-- Cryolab rebalance
data.raw["lab"]["cryolab"].surface_conditions = {
    {
        property = "gravity",
        min = 0.0,
        max = 0.0
    }
}
data.raw["lab"]["cryolab"].effect_receiver = data.raw["lab"]["cryolab"].effect_receiver or {}
data.raw["lab"]["cryolab"].effect_receiver.base_effect = {
    productivity = 0.25
}

data.raw["recipe"]["cryolab"].ingredients = {
    {type = "item", name = "biolab", amount = 3, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1, quality_min = "uncommon"},
    {type = "item", name = "ai-tier-10", amount = 10, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50},
    {type = "item", name = "quantum-processor", amount = 200, quality_min = "rare"},
    {type = "item", name = "cerys-radioactive-module-charged", amount = 10, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-time-crystal-b", amount = 1},
    {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 1000},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 500},
}


-- Molybdenum heater
data.raw["recipe"]["molybdenum-heater"].ingredients = {
    {type = "item", name = "heating-tower", amount = 3, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50},
    {type = "item", name = "quantum-processor", amount = 50, quality_min = "rare"},
    {type = "item", name = "heat-pipe", amount = 100},
    {type = "item", name = "molybdenum-core", amount = 5},
    {type = "item", name = "molybdenum-plate", amount = 15},
}


-- Salvaging cluster
data.raw["recipe"]["salvaging-cluster"].ingredients = {
    {type = "item", name = "salvage-cluster", amount = 20},
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
}
table.insert(data.raw["recipe"]["salvaging-cluster"].results,
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
)
data.raw["recipe"]["salvaging-cluster"].categories = {"magnetics"}


-- Salvage cluster hot
data.raw["recipe"]["salvage-cluster-hot"].ingredients = {
    {type = "item", name = "salvage-cluster", amount = 5},
    {type = "fluid", name = "fusion-plasma", amount = 1},
}
data.raw["recipe"]["salvage-cluster-hot"].categories = {"cryogenics"}


-- Molybdenum core
data.raw["recipe"]["molybdenum-core"].ingredients = {
    {type = "item", name = "molybdenum-plate", amount = 25},
    {type = "item", name = "intenseplasma-chunk", amount = 30},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
    {type = "item", name = "steel-plate", amount = 50, quality_min = "legendary"},
}


-- Molybdenum miner
data.raw["recipe"]["molybdenum-miner"].ingredients = {
    {type = "item", name = "pumpjack", amount = 1},
    {type = "item", name = "molybdenum-core", amount = 2},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50},
    {type = "item", name = "molybdenum-plate", amount = 10},
    {type = "item", name = "lead-plate", amount = 50, quality_min = "legendary"},
    {type = "item", name = "steel-plate", amount = 100, quality_min = "legendary"},
}


-- Molybdenum airpump
data.raw["recipe"]["molybdenum-airpump"].ingredients = {
    {type = "item", name = "planetaris-air-purifier", amount = 1},
    {type = "item", name = "molybdenum-core", amount = 2},
    {type = "item", name = "molybdenum-plate", amount = 10},
    {type = "item", name = "lead-plate", amount = 20, quality_min = "legendary"},
}


-- Molybdenum siever
data.raw["recipe"]["molybdenum-seiver"].ingredients = {
    {type = "item", name = "planetaris-sifter", amount = 1, quality_min = "legendary"},
    {type = "item", name = "molybdenum-core", amount = 8},
    {type = "item", name = "molybdenum-plate", amount = 20},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 20},
    {type = "item", name = "storage-tank", amount = 10},
}


-- Algite ore
data.raw["recipe"]["algite-ore"].ingredients = {
    {type = "item", name = "salvage-cluster-hot", amount = 200},
    {type = "item", name = "emf-core-mk01", amount = 1},
    {type = "item", name = "ske_algea_clump_rare", amount = 5, quality_min = "uncommon"},
    {type = "fluid", name = "hyperlanes-superacid", amount = 1500},
}


-- EMF core mk01
data.raw["recipe"]["emf-core-mk01"].ingredients = {
    {type = "item", name = "molybdenum-plate", amount = 50},
    {type = "item", name = "molybdenum-core", amount = 3},
    {type = "item", name = "ai-tier-10", amount = 1, quality_min = "legendary"},
    {type = "fluid", name = "carna-intenseplasma", amount = 20},
}


-- Algite iron alloy
data.raw["recipe"]["algite-iron-alloy"].ingredients = {
    {type = "item", name = "iron-ore", amount = 20, quality_min = "legendary"},
    {type = "item", name = "algite-ore", amount = 5},
    {type = "fluid", name = "oxygen", amount = 200},
}


-- Algite aura core
data.raw["recipe"]["algite-aura-core"].ingredients = {
    {type = "item", name = "molybdenum-plate", amount = 5},
    {type = "item", name = "molybdenum-core", amount = 2},
    {type = "item", name = "algite-iron-alloy-hot", amount = 2},
    {type = "item", name = "planetaris-crystalization-motor", amount = 5, quality_min = "legendary"},
}


-- Algite assembler
data.raw["recipe"]["algite-assembler"].ingredients = {
    {type = "item", name = "planetaris-assembling-machine-4", amount = 1, quality_min = "legendary"},
    {type = "item", name = "algite-aura-core", amount = 2},
    {type = "item", name = "algite-iron-alloy", amount = 20},
    {type = "item", name = "planetaris-crystalization-motor", amount = 15, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 20},
}
-- TODO: rebalance this, EXTREME speed with a quality penalty


-- Algite knowledge chamber
table.insert(data.raw["recipe"]["algite-knowledge-chamber"].ingredients,
    {type = "item", name = "planetaris-particle-manipulator", amount = 1, quality_min = "legendary"}
)


-- Carnal data
table.insert(data.raw["recipe"]["carnal-data"].ingredients,
    {type = "item", name = "datacell-cosmic-data", amount = 1}
)


-- Nutrient materialization: this is god awful and should be removed i think
table.remove(data.raw["technology"]["stingfrond-carnabreed"].effects, 3)


-- Carnal life codex
data.raw["recipe"]["carnal-life-codex"].ingredients = {
    {type = "item", name = "nutrients", amount = 25, quality_min = "legendary"},
    {type = "item", name = "intensecoolant-chunk", amount = 100},
    {type = "item", name = "molybdenum-plate", amount = 25},
    {type = "item", name = "algite-iron-alloy-hot", amount = 10},
    {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1},
    {type = "fluid", name = "carnal-data", amount = 2000},
}


-- Carna life capsules
data.raw["recipe"]["artificial-gleba-soil-1"].ingredients = {
    {type = "item", name = "planetaris-overgrowth-mycelia-soil", amount = 1},
    {type = "item", name = "molybdenum-plate", amount = 10},
    {type = "item", name = "nutrients", amount = 10, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 50},
}

data.raw["recipe"]["artificial-gleba-soil-2"].ingredients = {
    {type = "item", name = "planetaris-overgrowth-chlorophyll-soil", amount = 1},
    {type = "item", name = "molybdenum-plate", amount = 10},
    {type = "item", name = "nutrients", amount = 10, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 50},
}

data.raw["recipe"]["artificial-gleba-soil-3"].ingredients = {
    {type = "item", name = "overgrowth-jellynut-soil", amount = 1},
    {type = "item", name = "molybdenum-plate", amount = 10},
    {type = "item", name = "nutrients", amount = 10, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 50},
}

data.raw["recipe"]["artificial-gleba-soil-4"].ingredients = {
    {type = "item", name = "overgrowth-yumako-soil", amount = 1},
    {type = "item", name = "molybdenum-plate", amount = 10},
    {type = "item", name = "nutrients", amount = 10, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 50},
}



-- Intense plasma



-- Intense coolant


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-carna"].prerequisites = {"hyperlanes-t9-epp"}
data.raw["technology"]["planet-discovery-carna"].unit.ingredients = utils.t9_sp
data.raw["technology"]["planet-discovery-carna"].unit.count = utils.t9_spcost_planet

data.raw["technology"]["carnal-science-pack"].essential = true

data.raw["technology"]["advanced-materialization"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["advanced-materialization"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["artificial-global-gleba-soil"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["artificial-global-gleba-soil"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["boompuff-carnabreed"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["boompuff-carnabreed"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["forging-exotic-material"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["forging-exotic-material"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["breeding-exoticia"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["breeding-exoticia"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["slipstack-carnabreed"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["slipstack-carnabreed"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["feron-processing"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["feron-processing"].unit.count = utils.t9_spcost_smalltech

data.raw["technology"]["automation-feron"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["automation-feron"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["biochamber-mk2"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["biochamber-mk2"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["feron-airpump"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["feron-airpump"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["carna-cache-equipment"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carna-cache-equipment"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["carna-craft-equipment"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carna-craft-equipment"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carna-reach-equipment"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carna-reach-equipment"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carnal-oil2"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carnal-oil2"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carnal-energy-crystal"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carnal-energy-crystal"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carnan-spire"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carnan-spire"].unit.count = utils.t9_spcost_bigtech * 2

data.raw["technology"]["cryolab"].prerequisites = {"carnal-science-pack"}
data.raw["technology"]["cryolab"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["cryolab"].unit.count = utils.t9_spcost_bigtech