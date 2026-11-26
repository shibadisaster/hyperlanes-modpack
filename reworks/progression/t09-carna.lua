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
    {type = "item", name = "carnal-life-codex", amount = 5},
    {type = "item", name = "ai-tier-10", amount = 10, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50},
    {type = "item", name = "quantum-processor", amount = 200, quality_min = "rare"},
    {type = "item", name = "cerys-radioactive-module-charged", amount = 10, quality_min = "legendary"},
    {type = "item", name = "algite-aura-core", amount = 1},
    {type = "item", name = "electric-coil", amount = 250},
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
    {type = "item", name = "quantum-processor", amount = 1, quality_min = "rare"},
    {type = "item", name = "steel-plate", amount = 50, quality_min = "legendary"},
    {type = "item", name = "galvanized-steel-plate", amount = 50},
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
    {type = "item", name = "maraxsis-glass-panes", amount = 20, quality_min = "rare"},
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
    {type = "item", name = "nickel-plate", amount = 2, quality_min = "legendary"},
    {type = "item", name = "algite-ore", amount = 5},
    {type = "fluid", name = "oxygen", amount = 200},
}


-- Algite aura core
data.raw["recipe"]["algite-aura-core"].ingredients = {
    {type = "item", name = "molybdenum-plate", amount = 5},
    {type = "item", name = "molybdenum-core", amount = 2},
    {type = "item", name = "algite-iron-alloy-hot", amount = 2},
    {type = "item", name = "planetaris-crystalization-motor", amount = 5, quality_min = "legendary"},
    {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 5},
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


-- Artificial soils
data.raw["recipe"]["artificial-gleba-soil-1-2"].ingredients = {
    {type = "item", name = "foundation", amount = 1},
    {type = "item", name = "nutrients", amount = 5, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "carna-richwater", amount = 100},
}

data.raw["recipe"]["artificial-gleba-soil-2-2"].ingredients = {
    {type = "item", name = "foundation", amount = 1},
    {type = "item", name = "nutrients", amount = 5, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "carna-richwater", amount = 100},
}

data.raw["recipe"]["artificial-gleba-soil-3-2"].ingredients = {
    {type = "item", name = "foundation", amount = 1},
    {type = "item", name = "nutrients", amount = 5, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "carna-richwater", amount = 100},
}

data.raw["recipe"]["artificial-gleba-soil-4-2"].ingredients = {
    {type = "item", name = "foundation", amount = 1},
    {type = "item", name = "nutrients", amount = 5, quality_min = "legendary"},
    {type = "fluid", name = "carnal-data", amount = 50},
    {type = "fluid", name = "carna-richwater", amount = 100},
}


-- Richwater
table.remove(data.raw["technology"]["slipstack-carnabreed"].effects, 5)
data.raw["recipe"]["carna-richwater1"].ingredients = {
    {type = "item", name = "slipstackcoral", amount = 20},
    {type = "item", name = "stingfrondfruit", amount = 20},
    {type = "item", name = "molybdenum-plate", amount = 5},
    {type = "item", name = "nutrients", amount = 5, quality_min = "legendary"},
    {type = "fluid", name = "hyperlanes-aerated-water", amount = 500},
    {type = "fluid", name = "planetaris-chlorophyll", amount = 500},
}
data.raw["recipe"]["carna-richwater1"].categories = {"organic"}


-- Biological polymer
data.raw["recipe"]["biologicalpolymer"].ingredients = {
    {type = "item", name = "planetaris-polimer-skin", amount = 10},
    {type = "item", name = "stingfrondfruit", amount = 5},
    {type = "item", name = "slipstackcoral", amount = 5},
    {type = "fluid", name = "carna-richwater", amount = 100},
}


-- EMF core mk02
data.raw["recipe"]["emf-core-mk02"].ingredients = {
    {type = "item", name = "emf-core-mk01", amount = 1},
    {type = "item", name = "ai-tier-10", amount = 1, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 3, quality_min = "rare"},
    {type = "item", name = "biologicalpolymer", amount = 25},
    {type = "item", name = "algite-iron-alloy-hot", amount = 10},
}


-- Feron ore
data.raw["recipe"]["feron-ore"].ingredients = {
    {type = "item", name = "salvage-cluster-hot", amount = 300},
    {type = "item", name = "algite-ore", amount = 10},
    {type = "item", name = "emf-core-mk02", amount = 1},
    {type = "fluid", name = "hyperlanes-superacid", amount = 4000},
}


-- Biochamber mk2
data.raw["recipe"]["feron-biochamber"].ingredients = {
    {type = "item", name = "biochamber", amount = 1, quality_min = "legendary"},
    {type = "item", name = "feron-molybdenum-alloy", amount = 20},
    {type = "item", name = "biologicalpolymer", amount = 10},
    {type = "item", name = "algite-aura-core", amount = 3},
    {type = "item", name = "ai-tier-10", amount = 1, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 50, quality_min = "rare"},
    {type = "item", name = "galvanized-steel-plate", amount = 150},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 300},
}


-- Carna cache equipment
data.raw["recipe"]["carna-cache-equipment"].ingredients = {
    {type = "item", name = "toolbelt-equipment", amount = 1, quality_min = "legendary"},
    {type = "item", name = "feron-molybdenum-alloy-hot", amount = 10},
    {type = "item", name = "feron-e-core", amount = 2},
    {type = "item", name = "algite-aura-core", amount = 2},
}


-- Carna reach equipment
data.raw["recipe"]["carna-reach-equipment"].ingredients = {
    {type = "item", name = "feron-molybdenum-alloy-hot", amount = 10},
    {type = "item", name = "algite-iron-alloy", amount = 10},
    {type = "item", name = "feron-e-core", amount = 2},
    {type = "item", name = "molybdenum-core", amount = 2},
    {type = "item", name = "planetaris-crystalization-motor", amount = 2, quality_min = "legendary"},
}


-- Carna craft equipment
data.raw["recipe"]["carna-reach-equipment"].ingredients = {
    {type = "item", name = "feron-molybdenum-alloy-hot", amount = 5},
    {type = "item", name = "algite-iron-alloy", amount = 10},
    {type = "item", name = "molybdenum-core", amount = 2},
    {type = "item", name = "algite-assembler", amount = 1},
}


-- Feron airpump
data.raw["recipe"]["feron-airpump"].ingredients = {
    {type = "item", name = "molybdenum-airpump", amount = 1},
    {type = "item", name = "feron-molybdenum-alloy", amount = 20},
    {type = "item", name = "algite-iron-alloy", amount = 50},
    {type = "item", name = "feron-e-core", amount = 1},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 100},
}


-- Feron assembler
data.raw["recipe"]["feron-assembler"].ingredients = {
    {type = "item", name = "algite-assembler", amount = 1},
    {type = "item", name = "feron-molybdenum-alloy", amount = 50},
    {type = "item", name = "feron-e-core", amount = 10},
    {type = "item", name = "maraxsis-glass-panes", amount = 50, quality_min = "rare"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 100},
    {type = "item", name = "ai-tier-10", amount = 2, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 100, quality_min = "rare"},
    {type = "item", name = "galvanized-steel-plate", amount = 100},
    {type = "fluid", name = "carna-geysergas", amount = 1000},
}


-- Carnal energy
data.raw["recipe"]["carna-carnalenergy"].ingredients = {
    {type = "item", name = "feron-molybdenum-alloy-hot", amount = 1},
    {type = "fluid", name = "carna-geysergas", amount = 150},
    {type = "fluid", name = "carna-intenseplasma", amount = 150},
    {type = "fluid", name = "fusion-plasma", amount = 5},
}
data.raw["recipe"]["carna-carnalenergy"].categories = {"cryogenics"}


-- Figure out what to do with Carnal energy alt recipes, for now, remove!
table.remove(data.raw["technology"]["automation-feron"].effects, 6)
table.remove(data.raw["technology"]["automation-feron"].effects, 5)
table.remove(data.raw["technology"]["automation-feron"].effects, 4)
table.remove(data.raw["technology"]["automation-feron"].effects, 3)


-- Processor capsule
data.raw["recipe"]["processor-capsule"].ingredients = {
    {type = "item", name = "feron-molybdenum-alloy-hot", amount = 5},
    {type = "item", name = "molybdenum-core", amount = 1},
    {type = "item", name = "maraxsis-glass-panes", amount = 10, quality_min = "rare"},
    {type = "fluid", name = "hydrogen", amount = 100},
}


-- Processor capsule advanced computer
data.raw["recipe"]["processor-capsule-advanced-computer"].ingredients = {
    {type = "item", name = "processor-capsule", amount = 1},
    {type = "item", name = "quantum-processor", amount = 1, quality_min = "rare"},
}


-- Processor capsule science computer
data.raw["recipe"]["processor-capsule-science-computer"].ingredients = {
    {type = "item", name = "processor-capsule", amount = 1},
    {type = "item", name = "ai-tier-10", amount = 1, quality_min = "legendary"},
    {type = "item", name = "quantum-processor", amount = 1, quality_min = "rare"},
    {type = "item", name = "datacell-cosmic-data", amount = 1},
}


-- Carnan spire and its ill-begotten offspring
data.raw["recipe"]["carnan-spire"].ingredients = {
    {type = "item", name = "snouz_better_substation", amount = 10, quality_min = "legendary"},
    {type = "item", name = "maraxsis-sonar", amount = 1, quality_min = "legendary"},
    {type = "item", name = "exotic-matter", amount = 10000},
    {type = "item", name = "carnal-energy-crystal", amount = 55},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 500},
    {type = "item", name = "algite-iron-alloy", amount = 200},
    {type = "item", name = "feron-molybdenum-alloy", amount = 200},
    {type = "item", name = "feron-e-core", amount = 30},
    {type = "item", name = "quantum-processor", amount = 1000, quality_min = "rare"},
    {type = "fluid", name = "carnal-data", amount = 10000},
    {type = "fluid", name = "carna-intenseplasma", amount = 5000}
}

data.raw["recipe"]["carna-spire-energy-core-dormant"].ingredients = {
    {type = "item", name = "lithium-battery", amount = 500, quality_min = "legendary"},
    {type = "item", name = "supercapacitor", amount = 500, quality_min = "legendary"},
    {type = "item", name = "feron-e-core", amount = 5},
    {type = "item", name = "quantum-processor", amount = 50, quality_min = "rare"},
    {type = "fluid", name = "molybdenum-molten", amount = 2000},
    {type = "item", name = "electric-coil", amount = 100},
}

data.raw["recipe"]["carna-spire-energy-core"].ingredients = {
    {type = "item", name = "carna-spire-energy-core-dormant", amount = 1},
    {type = "item", name = "exotic-matter", amount = 75},
    {type = "fluid", name = "carna-emfgas", amount = 200},
}

data.raw["recipe"]["carna-spire-energy-core-spent"].results = { -- we love environmental storytelling
    {type = "item", name = "scrap", amount_min = 15, amount_max = 55},
    {type = "fluid", name = "heavy-oil", amount_min = 200, amount_max = 400},
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

data.raw["technology"]["artificial-global-gleba-soil"].prerequisites = {"slipstack-carnabreed"}
data.raw["technology"]["artificial-global-gleba-soil"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["artificial-global-gleba-soil"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["boompuff-carnabreed"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["boompuff-carnabreed"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["forging-exotic-material"].prerequisites = {"feron-processing"}
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