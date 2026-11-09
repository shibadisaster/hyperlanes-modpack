local utils = require("__hyperlanes-modpack__/utils")


-- Pressure turbine
data.raw["recipe"]["pressure-turbine"].ingredients = {
    {type = "item", name = "muluna-cycling-steam-turbine", amount = 1},
    {type = "item", name = "pumpjack", amount = 1},
    {type = "item", name = "planetaris-crystalization-motor", amount = 5},
    {type = "item", name = "aluminum-plate", amount = 50},
    {type = "item", name = "lithium-plate", amount = 20},
}
data.raw["recipe"]["pressure-turbine"].surface_conditions = {
    {
        property = "pressure",
        min = 5300,
        max = 5300,
    }
}


-- Fusion generator
data.raw["recipe"]["fusion-generator"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 100},
    {type = "item", name = "lead-plate", amount = 50},
    {type = "item", name = "maraxsis-glass-panes", amount = 50},
    {type = "item", name = "quantum-processor", amount = 50},
    {type = "item", name = "pressure-turbine", amount = 1},
}


-- Cryovolcanic mixture
data.raw["recipe"]["cryovolcanic-mixture-separation"].categories = {"cryogenics", "electrochemistry"}


-- Sphalerite processing
data.raw["recipe"]["sphalerite-processing"].ingredients = {
    {type = "item", name = "sphalerite", amount = 5},
    {type = "fluid", name = "steam", amount = 30},
    {type = "fluid", name = "hyperlanes-superacid", amount = 5},
}

data.raw["recipe"]["sphalerite-melting"].ingredients = {
    {type = "item", name = "sphalerite", amount = 50},
    {type = "item", name = "calcite", amount = 20},
    {type = "fluid", name = "steam", amount = 50},
    {type = "fluid", name = "hyperlanes-superacid", amount = 100},
}


-- Tetrahedrite processing
data.raw["recipe"]["tetrahedrite-processing"].ingredients = {
    {type = "item", name = "tetrahedrite", amount = 5},
    {type = "fluid", name = "steam", amount = 30},
    {type = "fluid", name = "hyperlanes-superacid", amount = 5},
}

data.raw["recipe"]["tetrahedrite-melting"].ingredients = {
    {type = "item", name = "tetrahedrite", amount = 50},
    {type = "item", name = "calcite", amount = 20},
    {type = "fluid", name = "steam", amount = 50},
    {type = "fluid", name = "hyperlanes-superacid", amount = 100},
}


-- Zinc leaching
data.raw["recipe"]["zinc-leaching"].ingredients = {
    {type = "item", name = "calcite", amount = 20},
    {type = "fluid", name = "nitric-acid", amount = 40},
    {type = "fluid", name = "zinc-concentrate", amount = 40},
    {type = "fluid", name = "planetaris-aluminium", amount = 10},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
}
data.raw["recipe"]["zinc-leaching"].results = {
    {type = "item", name = "calcite", amount = 10, ignored_by_productivity = 10},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
    {type = "fluid", name = "dirty-zinc-solution", amount = 20},
}
data.raw["recipe"]["zinc-leaching"].main_product = "dirty-zinc-solution"


-- Zinc purification
data.raw["recipe"]["zinc-purification"].ingredients = {
    {type = "item", name = "planetaris-bismuth-transistor", amount = 2},
    {type = "item", name = "hyperlanes-microcellular-filter", amount = 1},
    {type = "fluid", name = "dirty-zinc-solution", amount = 20},
    {type = "fluid", name = "steam", amount = 20},
}
data.raw["recipe"]["zinc-purification"].results = {
    {type = "item", name = "stone", amount_min = 5, amount_max = 20},
    {type = "item", name = "hyperlanes-microcellular-filter", amount = 1, independent_probability = 0.95, ignored_by_productivity = 1},
    {type = "item", name = "planetaris-bismuth-transistor", amount = 1, ignored_by_productivity = 1},
    {type = "fluid", name = "zinc-solution", amount = 20},
}
data.raw["recipe"]["zinc-purification"].categories = {"electrochemistry", "electromagnetics"}


-- Electrochemical plant
data.raw["recipe"]["electrochemical-plant"].ingredients = {
    {type = "item", name = "electromagnetic-plant", amount = 1},
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "quantum-processor", amount = 30},
    {type = "item", name = "zinc-plate", amount = 25},
    {type = "item", name = "zinc-solder", amount = 20},
    {type = "item", name = "ai-tier-10", amount = 1},
}


-- Mechanical plant
data.raw["recipe"]["mechanical-plant"].ingredients = {
    {type = "item", name = "planetaris-assembling-machine-4", amount = 2},
    {type = "item", name = "quantum-processor", amount = 30},
    {type = "item", name = "planetaris-crystalization-motor", amount = 30},
    {type = "item", name = "zinc-plate", amount = 25},
    {type = "item", name = "zinc-rivets", amount = 20},
    {type = "item", name = "ai-tier-10", amount = 1},
}


-- Zinc pipe
table.insert(
    data.raw["recipe"]["zinc-pipe"].ingredients,
    {type = "item", name = "pipe", amount = 1}
)


-- Super accumulator
data.raw["recipe"]["accumulator-v2"].ingredients = {
    {type = "item", name = "supercapacitor", amount = 60},
    {type = "item", name = "zinc-solder", amount = 5},
    {type = "item", name = "electric-coil", amount = 5},
    {type = "item", name = "galvanized-steel-plate", amount = 10},
    {type = "item", name = "big-accumulator", amount = 6},
    {type = "fluid", name = "hyperlanes-superacid", amount = 100},
}


-- Solar matrix
data.raw["recipe"]["solar-matrix"].ingredients = {
    {type = "item", name = "planetaris-carbon-nanotube", amount = 10},
    {type = "item", name = "zinc-solder", amount = 10},
    {type = "item", name = "electric-coil", amount = 2},
    {type = "item", name = "galvanized-steel-plate", amount = 5},
    {type = "item", name = "big-solar-panel", amount = 10},
    {type = "fluid", name = "nitrogen", amount = 100},
}


-- Fusion generator can't be placed here!
table.insert(
    data.raw["fusion-generator"]["fusion-generator"].surface_conditions,
    {
        property = "temperature",
        min = 150,
    }
)


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-paracelsin"].unit.ingredients = utils.t8_sp
data.raw["technology"]["planet-discovery-paracelsin"].unit.count = utils.t8_spcost_planet

data.raw["technology"]["advanced-repair-device"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["advanced-repair-device"].unit.count = utils.t8_spcost_tech

data.raw["technology"]["concrete-productivity"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["concrete-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t8_spcost_tech

data.raw["technology"]["galvanized-steel"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["galvanized-steel"].unit.count = utils.t8_spcost_smalltech

-- Return inserter
-- refer to data-final-fixes

data.raw["technology"]["vaterite-formation"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["vaterite-formation"].unit.count = utils.t8_spcost_tech

data.raw["technology"]["vaterite-processing-productivity"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["vaterite-processing-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t8_spcost_tech

data.raw["technology"]["accumulator-v2"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["accumulator-v2"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["elevated-pipe"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["elevated-pipe"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["macerating"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["macerating"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["solar-matrix"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["solar-matrix"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["zinc-piping"].unit.ingredients = utils.t8_sp_paracelsin
data.raw["technology"]["zinc-piping"].unit.count = utils.t8_spcost_bigtech