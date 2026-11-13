local utils = require("__hyperlanes-modpack__/utils")


-- Lithium
data.raw["recipe"]["lithium"].ingredients = {
    {type = "item", name = "holmium-plate", amount = 2, quality_min = "epic"},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_stats = 1},
    {type = "fluid", name = "lithium-brine", amount = 50},
    {type = "fluid", name = "ammonia", amount = 50},
}
data.raw["recipe"]["lithium"].results = {
    {type = "item", name = "lithium", amount = 5},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
}
data.raw["recipe"]["lithium"].main_product = "lithium"


-- Fluoroketone
data.raw["recipe"]["fluoroketone"].ingredients = {
    {type = "item", name = "lithium", amount = 1},
    {type = "item", name = "methane-ice", amount = 10, quality_min = "epic"},
    {type = "fluid", name = "fluorine", amount = 50},
    {type = "fluid", name = "ammonia", amount = 50},
}


-- Cryogenic plant
data.raw["recipe"]["cryogenic-plant"].ingredients = {
    {type = "item", name = "planetaris-simulating-unit", amount = 20},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "chemical-plant", amount = 2, quality_min = "rare"},
    {type = "item", name = "lithium-plate", amount = 20},
    {type = "item", name = "refined-concrete", amount = 50, quality_min = "epic"},
    {type = "item", name = "glass", amount = 10},
    {type = "item", name = "superconductor", amount = 20, quality_min = "epic"},
}


-- Foundation
data.raw["recipe"]["foundation"].ingredients = {
    {type = "item", name = "landfill", amount = 5, quality_min = "epic"},
    {type = "item", name = "planetaris-carbon-nanotube", amount = 5},
    {type = "item", name = "refined-concrete", amount = 10, quality_min = "epic"},
    {type = "item", name = "glass", amount = 10},
    {type = "fluid", name = "fluoroketone-cold", amount = 20},
    {type = "fluid", name = "hyperlanes-metamaterial-microsuspension", amount = 10},
}


-- Ice platform
data.raw["recipe"]["ice-platform"].ingredients = {
    {type = "item", name = "ice", amount = 50},
    {type = "item", name = "muluna-microcellular-plastic", amount = 2},
    {type = "fluid", name = "ammonia", amount = 400},
}


-- Quantum processor
data.raw["recipe"]["quantum-processor"].ingredients = {
    {type = "item", name = "hyperlanes-loaded-simulating-unit", amount = 1},
    {type = "item", name = "superconductor", amount = 4, quality_min = "epic"},
    {type = "item", name = "planetaris-carbon-nanotube", amount = 4},
    {type = "item", name = "lithium-plate", amount = 2, quality_min = "uncommon"},
    {type = "item", name = "glass", amount = 2},
    {type = "fluid", name = "fluoroketone-cold", amount = 10},
    {type = "fluid", name = "planetaris-aluminium", amount = 10},
}


-- Fusion reactor
data.raw["recipe"]["fusion-reactor"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 200, quality_min = "epic"},
    {type = "item", name = "lead-plate", amount = 100, quality_min = "uncommon"},
    {type = "item", name = "glass", amount = 100},
    {type = "item", name = "quantum-processor", amount = 250},
    {type = "item", name = "cerys-mixed-oxide-reactor", amount = 1},
}


-- -- Fusion generator moved to Paracelsin
-- table.remove(data.raw["technology"]["fusion-reactor"].effects, 2)


-- Big rocket silo
data.raw["recipe"]["muluna-big-rocket-silo"].categories = {"advanced-crafting", "space-manufacturing"}
data.raw["recipe"]["muluna-big-rocket-silo"].ingredients = {
    {type = "item", name = "rocket-silo", amount = 1, quality_min = "rare"},
    {type = "item", name = "steel-plate", amount = 3000, quality_min = "epic"},
    {type = "item", name = "refined-concrete", amount = 2000, quality_min = "epic"},
    {type = "item", name = "foundation", amount = 100},
    {type = "item", name = "pipe", amount = 300, quality_min = "epic"},
    {type = "item", name = "quantum-processor", amount = 300},
    {type = "item", name = "planetaris-crystalization-motor", amount = 100},
}


-- Railgun
data.raw["recipe"]["railgun"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 10, quality_min = "epic"},
    {type = "item", name = "superconductor", amount = 10, quality_min = "epic"},
    {type = "item", name = "quantum-processor", amount = 20},
    {type = "fluid", name = "fluoroketone-cold", amount = 10},
}


-- Railgun turret
data.raw["recipe"]["railgun-turret"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 30, quality_min = "epic"},
    {type = "item", name = "superconductor", amount = 50, quality_min = "epic"},
    {type = "item", name = "carbon-fiber", amount = 20, quality_min = "epic"},
    {type = "item", name = "quantum-processor", amount = 100},
    {type = "fluid", name = "fluoroketone-cold", amount = 100},
    {type = "item", name = "rubia-sniper-turret", amount = 1},
}


-- Fusion reactor equipment
data.raw["recipe"]["fusion-reactor-equipment"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 250, quality_min = "epic"},
    {type = "item", name = "supercapacitor", amount = 25, quality_min = "epic"},
    {type = "item", name = "carbon-fiber", amount = 100, quality_min = "epic"},
    {type = "item", name = "quantum-processor", amount = 250},
    {type = "item", name = "fusion-power-cell", amount = 10},
    {type = "item", name = "fission-reactor-equipment", amount = 1},
}

data.raw["recipe"]["fusion-reactor-equipment-from-mixed-oxide"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 250, quality_min = "epic"},
    {type = "item", name = "supercapacitor", amount = 25, quality_min = "epic"},
    {type = "item", name = "carbon-fiber", amount = 100, quality_min = "epic"},
    {type = "item", name = "quantum-processor", amount = 250},
    {type = "item", name = "fusion-power-cell", amount = 10},
    {type = "item", name = "mixed-oxide-reactor-equipment", amount = 1},
}


-- Railgun ammo
data.raw["recipe"]["railgun-ammo"].ingredients = {
    {type = "item", name = "steel-plate", amount = 5, quality_min = "uncommon"},
    {type = "item", name = "copper-cable", amount = 10},
    {type = "item", name = "explosives", amount = 2, quality_min = "uncommon"},
}
data.raw["recipe"]["railgun-ammo"].results = {
    {type = "item", name = "railgun-ammo", amount = 1, quality_change = -1},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-aquilo"].unit.ingredients = utils.t7_sp
data.raw["technology"]["planet-discovery-aquilo"].unit.count = utils.t7_spcost_planet

data.raw["technology"]["captive-biter-spawner"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["captive-biter-spawner"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["foundation"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["foundation"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["quantum-processor"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["quantum-processor"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["cerys-radiative-heaters"].unit.count = utils.t7_spcost_smalltech

data.raw["technology"]["rocket-part-productivity-aquilo"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["rocket-part-productivity-aquilo"].unit.count_formula = "1.5^(L-1)*" .. utils.t7_spcost_tech

data.raw["technology"]["sun_heat_cooler_2_tech"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["sun_heat_cooler_2_tech"].unit.count = utils.t7_spcost_tech


-- Move legendary quality to Maraxsis


data.raw["technology"]["muluna-fertilized-greenhouses-vulcanus"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["muluna-fertilized-greenhouses-vulcanus"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["muluna-big-rocket-silo"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["muluna-big-rocket-silo"].unit.count = utils.t7_spcost_bigtech


-- Move Cryolab to T9


data.raw["technology"]["fusion-reactor"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["fusion-reactor"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["fusion-reactor-equipment"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["fusion-reactor-equipment"].unit.count = utils.t7_spcost_bigtech

data.raw["technology"]["railgun"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["railgun"].unit.count = utils.t7_spcost_tech

data.raw["technology"]["railgun-damage-1"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["railgun-damage-1"].unit.count_formula = "2^(L-1)*" .. utils.t7_spcost_tech

data.raw["technology"]["railgun-shooting-speed-1"].unit.ingredients = utils.t7_sp_aquilo
data.raw["technology"]["railgun-shooting-speed-1"].unit.count_formula = "2^(L-1)*" .. utils.t7_spcost_tech