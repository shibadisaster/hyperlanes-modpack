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
    {type = "item", name = "iron-ore", amount = 20},
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
    {type = "item", name = "tungsten-plate", amount = 25},
    {type = "item", name = "processing-unit", amount = 25},
    {type = "item", name = "planetaris-raw-quartz", amount = 50},
    {type = "item", name = "hyperlanes-sealant", amount = 5},
    {type = "item", name = "centrifuge", amount = 1},
}


-- Geode mining drill
data.raw["recipe"]["hyarion-geode-mining-drill"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 10},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "planetaris-polished-quartz", amount = 10},
    {type = "item", name = "big-mining-drill", amount = 1},
}


-- Optical cable
data.raw["recipe"]["planetaris-fiber-optics-cable"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 2},
    {type = "item", name = "planetaris-polished-diamond", amount = 1},
    {type = "item", name = "planetaris-polished-sapphire", amount = 1},
    {type = "item", name = "muluna-data-cable", amount = 2},
}


-- Silica
data.raw["recipe"]["planetaris-silica"].ingredients = {
    {type = "item", name = "calcite", amount = 1},
    {type = "item", name = "silicon", amount = 1},
    {type = "item", name = "planetaris-raw-quartz", amount = 5},
    {type = "fluid", name = "sulfuric-acid", amount = 1},
}


-- Crystallization motor
data.raw["recipe"]["planetaris-crystalization-motor"].ingredients = {
    {type = "item", name = "electric-engine-unit", amount = 1},
    {type = "item", name = "processing-unit", amount = 3},
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
    {type = "item", name = "processing-unit", amount = 1},
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
-- table.insert(data.raw["recipe"]["planetaris-refraction-plant"].ingredients, {type = "item", name = "electromagnetic-plant", amount = 1})


-- Particle manipulator
table.insert(data.raw["recipe"]["planetaris-particle-manipulator"].ingredients, {type = "item", name = "electromagnetic-plant", amount = 1})


-- Refraction ray collectors
data.raw["recipe"]["planetaris-refraction-ray-collector"].ingredients = {
    {type = "item", name = "aluminum-plate", amount = 5},
    {type = "item", name = "copper-cable", amount = 10},
    {type = "item", name = "planetaris-raw-quartz", amount = 5},
    {type = "item", name = "lightning-collector", amount = 1},
}

data.raw["recipe"]["planetaris-big-refraction-ray-collector"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 2},
    {type = "item", name = "tungsten-plate", amount = 10},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "planetaris-crystalization-motor", amount = 1},
    {type = "item", name = "planetaris-refraction-ray-collector", amount = 1},
}


-- go away
data.raw["technology"]["planetaris-space-facilities-1"].essential = false


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

-- Move quality 3 here
data.raw["technology"]["quality-module-3"].prerequisites = {
    "planetaris-refraction-science-pack",
    "quality-module-2"
}
data.raw["technology"]["quality-module-3"].unit.ingredients = utils.t6_sp_hyarion_refraction
data.raw["technology"]["quality-module-3"].unit.count = utils.t6_spcost_bigtech
table.insert(
    data.raw["technology"]["quality-module-3"].effects,
    {
        type = "unlock-quality",
        quality = "epic"
    }
)

-- Kill epic quality tech
data.raw["technology"]["epic-quality"].enabled = false
data.raw["technology"]["epic-quality"].hidden = true