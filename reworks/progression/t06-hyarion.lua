local utils = require("__hyperlanes-modpack__/utils")


data.raw["recipe"]["planetaris-metallic-smelting"].enabled = false
data.raw["recipe"]["planetaris-burner-drill-alternative"].enabled = false
data.raw["recipe"]["planetaris-quartz-furnace"].enabled = false

-- kill it kill it
data.raw["technology"]["planetaris-quartz-furnace"].enabled = false
data.raw["technology"]["planetaris-quartz-furnace"].prerequisites = {}
data.raw["furnace"]["planetaris-quartz-furnace"].hidden = true

data.raw["technology"]["planetaris-metallic-ore-processing"].prerequisites = {"planet-discovery-hyarion"}
table.remove(data.raw["technology"]["planetaris-metallic-ore-processing"].effects, 1)
table.remove(data.raw["technology"]["planetaris-metallic-ore-processing"].effects, 1)
data.raw["technology"]["planetaris-polishing"].prerequisites = {"planetaris-metallic-ore-processing"}


-- Polishing compound
data.raw["recipe"]["planetaris-polishing-compound"].ingredients = {
    {type = "item", name = "iron-ore", amount = 20, quality_min = "rare"},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1},
    {type = "fluid", name = "hyperlanes-metamaterial-microsuspension", amount = 10},
}
data.raw["recipe"]["planetaris-polishing-compound"].results = {
    {type = "fluid", name = "planetaris-polishing-compound", amount = 50},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
}
data.raw["recipe"]["planetaris-polishing-compound"].main_product = "planetaris-polishing-compound"


-- Polishing recipes
table.insert(data.raw["recipe"]["planetaris-polished-bismuth"].ingredients, {type = "fluid", name = "hyperlanes-superacid", amount = 5})
table.insert(data.raw["recipe"]["planetaris-polished-diamond"].ingredients, {type = "fluid", name = "hyperlanes-superacid", amount = 5})
table.insert(data.raw["recipe"]["planetaris-polished-emerald"].ingredients, {type = "fluid", name = "hyperlanes-superacid", amount = 5})
table.insert(data.raw["recipe"]["planetaris-polished-quartz"].ingredients, {type = "fluid", name = "hyperlanes-superacid", amount = 5})
table.insert(data.raw["recipe"]["planetaris-polished-ruby"].ingredients, {type = "fluid", name = "hyperlanes-superacid", amount = 5})
table.insert(data.raw["recipe"]["planetaris-polished-sapphire"].ingredients, {type = "fluid", name = "hyperlanes-superacid", amount = 5})


-- Polisher
data.raw["recipe"]["planetaris-polisher"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 25, quality_min = "rare"},
    {type = "item", name = "processing-unit", amount = 25, quality_min = "rare"},
    {type = "item", name = "planetaris-raw-quartz", amount = 50},
    {type = "item", name = "hyperlanes-sealant", amount = 5},
    {type = "item", name = "centrifuge", amount = 1, quality_min = "uncommon"},
}


-- Geode mining drill
data.raw["recipe"]["hyarion-geode-mining-drill"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 10, quality_min = "rare"},
    {type = "item", name = "processing-unit", amount = 5, quality_min = "rare"},
    {type = "item", name = "planetaris-polished-quartz", amount = 10},
    {type = "item", name = "big-mining-drill", amount = 1, quality_min = "uncommon"},
}


-- Optical cable
data.raw["recipe"]["planetaris-fiber-optics-cable"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 2},
    {type = "item", name = "planetaris-polished-diamond", amount = 1},
    {type = "item", name = "planetaris-polished-sapphire", amount = 1},
    {type = "item", name = "muluna-data-cable", amount = 2, quality_min = "rare"},
}


-- Silica
data.raw["recipe"]["planetaris-silica"].ingredients = {
    {type = "item", name = "calcite", amount = 1, quality_min = "rare"},
    {type = "item", name = "silicon", amount = 1, quality_min = "rare"},
    {type = "item", name = "planetaris-raw-quartz", amount = 5},
    {type = "fluid", name = "sulfuric-acid", amount = 1},
}


-- Crystallization motor
data.raw["recipe"]["planetaris-crystalization-motor"].ingredients = {
    {type = "item", name = "electric-engine-unit", amount = 1, quality_min = "rare"},
    {type = "item", name = "processing-unit", amount = 3, quality_min = "rare"},
    {type = "item", name = "planetaris-polished-emerald", amount = 5},
    {type = "item", name = "planetaris-polished-quartz", amount = 5},
    {type = "item", name = "planetaris-heavy-glass", amount = 1},
}
data.raw["recipe"]["planetaris-crystalization-motor"].surface_conditions = {
    {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100
    }
}


-- Simulating unit
data.raw["recipe"]["planetaris-simulating-unit"].ingredients = {
    {type = "item", name = "processing-unit", amount = 1, quality_min = "rare"},
    {type = "item", name = "planetaris-silica", amount = 5},
    {type = "item", name = "planetaris-fiber-optics-cable", amount = 2},
    {type = "item", name = "supercapacitor", amount = 1},
    {type = "fluid", name = "hyperlanes-superacid", amount = 5},
}
data.raw["recipe"]["planetaris-simulating-unit"].surface_conditions = {
    {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100
    }
}


-- Assembling machine 4
data.raw["recipe"]["planetaris-assembling-machine-4"].ingredients = {
    {type = "item", name = "assembling-machine-3", amount = 2, quality_min = "uncommon"},
    {type = "item", name = "planetaris-simulating-unit", amount = 5},
    {type = "item", name = "speed-module-3", amount = 2, quality_min = "rare"},
    {type = "item", name = "steel-plate", amount = 50, quality_min = "rare"},
    {type = "item", name = "planetaris-heavy-glass", amount = 5},
}
data.raw["recipe"]["planetaris-assembling-machine-4"].surface_conditions = {
    {
        property = "planetaris-crystalization-resistance",
        min = 50,
        max = 100
    }
}


-- Nanoscale lens
data.raw["recipe"]["planetaris-nanoscale-lens"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 1},
    {type = "item", name = "planetaris-polished-diamond", amount = 1},
    {type = "fluid", name = "planetaris-polishing-compound", amount = 5},
}


-- Refraction plant
-- data.raw["recipe"]["planetaris-particle-manipulator"]


-- Refraction generator



-- Particle manipulator
table.insert(data.raw["recipe"]["planetaris-particle-manipulator"].ingredients, {type = "item", name = "electromagnetic-plant", amount = 1, quality_min = "uncommon"})


-- Refraction ray collectors
data.raw["recipe"]["planetaris-refraction-ray-collector"].ingredients = {
    {type = "item", name = "aluminum-plate", amount = 5, quality_min = "rare"},
    {type = "item", name = "copper-cable", amount = 10},
    {type = "item", name = "planetaris-raw-quartz", amount = 5},
    {type = "item", name = "lightning-collector", amount = 1, quality_min = "uncommon"},
}

data.raw["recipe"]["planetaris-big-refraction-ray-collector"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 2},
    {type = "item", name = "tungsten-plate", amount = 10, quality_min = "rare"},
    {type = "item", name = "processing-unit", amount = 5, quality_min = "rare"},
    {type = "item", name = "planetaris-crystalization-motor", amount = 1},
    {type = "item", name = "planetaris-refraction-ray-collector", amount = 1},
}


-- go away
data.raw["technology"]["planetaris-space-facilities-1"].essential = false


-- Space manufacturer
data.raw["recipe"]["planetaris-space-manufacturer"].ingredients = {
    {type = "item", name = "planetaris-assembling-machine-4", amount = 1},
    {type = "item", name = "planetaris-fiber-optics-cable", amount = 30},
    {type = "item", name = "tungsten-plate", amount = 50, quality_min = "rare"},
    {type = "item", name = "planetaris-simulating-unit", amount = 15},
    {type = "item", name = "planetaris-crystalization-motor", amount = 10},
    {type = "item", name = "planetaris-beryllium-plate", amount = 60},
}


-- Hyper belts
data.raw["recipe"]["planetaris-hyper-transport-belt"].ingredients = {
    {type = "item", name = "turbo-transport-belt", amount = 20},
    {type = "item", name = "planetaris-crystalization-motor", amount = 5},
    {type = "item", name = "ai-tier-8", amount = 1},
}
data.raw["recipe"]["planetaris-hyper-transport-belt"].results = {
    {type = "item", name = "planetaris-hyper-transport-belt", amount = 20},
}

data.raw["recipe"]["planetaris-hyper-underground-belt"].ingredients = {
    {type = "item", name = "turbo-underground-belt", amount = 20},
    {type = "item", name = "planetaris-crystalization-motor", amount = 10},
    {type = "item", name = "ai-tier-8", amount = 1},
}
data.raw["recipe"]["planetaris-hyper-underground-belt"].results = {
    {type = "item", name = "planetaris-hyper-underground-belt", amount = 20},
}


data.raw["recipe"]["planetaris-hyper-splitter"].ingredients = {
    {type = "item", name = "turbo-splitter", amount = 20},
    {type = "item", name = "planetaris-simulating-unit", amount = 10},
    {type = "item", name = "planetaris-crystalization-motor", amount = 5},
    {type = "item", name = "ai-tier-8", amount = 2},
}
data.raw["recipe"]["planetaris-hyper-splitter"].results = {
    {type = "item", name = "planetaris-hyper-splitter", amount = 20},
}


-- Carbon nanotube
data.raw["recipe"]["planetaris-carbon-nanotube"].ingredients = {
    {type = "item", name = "carbon", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "carbon-fiber", amount = 10, quality_min = "uncommon"},
    {type = "item", name = "planetaris-polished-quartz", amount = 5},
    {type = "fluid", name = "lava", amount = 50},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1},
}
data.raw["recipe"]["planetaris-carbon-nanotube"].results = {
    {type = "item", name = "planetaris-carbon-nanotube", amount = 1},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
}
data.raw["recipe"]["planetaris-carbon-nanotube"].main_product = "planetaris-carbon-nanotube"


-- Advanced carbon nanotube
data.raw["recipe"]["planetaris-advanced-carbon-nanotube"].ingredients = {
    {type = "item", name = "carbon", amount = 20, quality_min = "rare"},
    {type = "item", name = "carbon-fiber", amount = 10, quality_min = "rare"},
    {type = "item", name = "planetaris-polished-diamond", amount = 3},
    {type = "fluid", name = "molten-copper", amount = 50},
    {type = "fluid", name = "molten-iron", amount = 50},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1},
}
data.raw["recipe"]["planetaris-advanced-carbon-nanotube"].results = {
    {type = "item", name = "planetaris-carbon-nanotube", amount = 3},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
}
data.raw["recipe"]["planetaris-advanced-carbon-nanotube"].main_product = "planetaris-carbon-nanotube"


-- EM radar
data.raw["recipe"]["planetaris-electromagnetic-radar"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 35, quality_min = "rare"},
    {type = "item", name = "planetaris-simulating-unit", amount = 20},
    {type = "item", name = "planetaris-refractory-ceramics", amount = 10},
    {type = "item", name = "planetaris-bismuth-transistor", amount = 10},
    {type = "item", name = "radar", amount = 1},
}


-- Ruby laser
data.raw["recipe"]["planetaris-ruby-laser-turret"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 20, quality_min = "rare"},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "planetaris-ruby-laser", amount = 2},
    {type = "item", name = "laser-turret", amount = 5},
}


-- Bismuth transistor
data.raw["recipe"]["planetaris-bismuth-transistor"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 5, quality_min = "rare"},
    {type = "item", name = "copper-cable", amount = 20, quality_min = "rare"},
    {type = "item", name = "planetaris-polished-bismuth", amount = 2},
    {type = "fluid", name = "sulfuric-acid", amount = 50},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-hyarion"].unit.ingredients = utils.t6_sp
data.raw["technology"]["planet-discovery-hyarion"].unit.count = utils.t6_spcost_planet

-- HYPER TRANSPORT BELT MOVE

data.raw["technology"]["planetaris-crystalization-motor"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-crystalization-motor"].unit.count = utils.t6_spcost_smalltech

data.raw["technology"]["planetaris-diamond-polishing"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-diamond-polishing"].unit.count = utils.t6_spcost_smalltech

data.raw["technology"]["planetaris-big-refraction-ray-collector"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-big-refraction-ray-collector"].unit.count = utils.t6_spcost_smalltech

data.raw["technology"]["planetaris-nanoscale-lens"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-nanoscale-lens"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-advanced-raw-quartz"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-advanced-raw-quartz"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-simulating-unit"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-simulating-unit"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-automation-4"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-automation-4"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["planetaris-refraction-plant"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-refraction-plant"].unit.count = utils.t6_spcost_smalltech

data.raw["technology"]["planetaris-particle-manipulation"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-particle-manipulation"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-ruby-laser"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-ruby-laser"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-unstable-gems"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-unstable-gems"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-beryllium-processing"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-beryllium-processing"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-refraction-science-pack"].unit.ingredients = utils.t6_sp_hyarion
data.raw["technology"]["planetaris-refraction-science-pack"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-ray-collection-productivity"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-ray-collection-productivity"].unit.count_formula = "2^(L-1)*" .. utils.t6_spcost_smalltech

data.raw["technology"]["planetaris-simulating-unit-productivity"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-simulating-unit-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t6_spcost_tech

data.raw["technology"]["planetaris-supercapacitor-productivity"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-supercapacitor-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t6_spcost_tech

data.raw["technology"]["planetaris-ruby-laser-turret"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-ruby-laser-turret"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["planetaris-space-facilities-1"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-space-facilities-1"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["planetaris-bismuth-processing"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-bismuth-processing"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["planetaris-electromagnetic-radar"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-electromagnetic-radar"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["planetaris-zero-grav-accumulator"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["planetaris-zero-grav-accumulator"].unit.count = utils.t6_spcost_bigtech