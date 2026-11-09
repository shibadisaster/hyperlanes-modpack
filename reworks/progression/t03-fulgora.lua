local utils = require("__hyperlanes-modpack__/utils")


-- EM plant
data.raw["recipe"]["electromagnetic-plant"].ingredients = {
    {type = "item", name = "steel-plate", amount = 50},
    {type = "item", name = "processing-unit", amount = 50},
    {type = "item", name = "holmium-plate", amount = 150},
    {type = "item", name = "refined-concrete", amount = 50},
    {type = "item", name = "hyperlanes-fulgora-magnet", amount = 50},
    {type = "item", name = "silicon-cell", amount = 20},
    {type = "item", name = "assembling-machine-3", amount = 1}
}


table.insert(
    data.raw["technology"]["electromagnetic-plant"].effects,
    {
        type = "unlock-recipe",
        recipe = "hyperlanes-fulgora-magnet"
    }
)

data.raw["recipe"]["quality-module"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "superconductor", amount = 1},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-fulgora"].unit.ingredients = utils.t3_sp
data.raw["technology"]["planet-discovery-fulgora"].unit.count = utils.t3_spcost_planet

data.raw["technology"]["battery-mk3-equipment"].unit.ingredients = utils.t3_sp_fulgora
data.raw["technology"]["battery-mk3-equipment"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["energy-shield-mk2-equipment"].unit.ingredients = utils.t3_sp_fulgora
data.raw["technology"]["energy-shield-mk2-equipment"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["lightning-collector"].unit.ingredients = utils.t3_sp_fulgora
data.raw["technology"]["lightning-collector"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["mech-armor"].unit.ingredients = utils.t3_sp_fulgora

data.raw["technology"]["personal-roboport-mk2-equipment"].unit.ingredients = utils.t3_sp_fulgora
data.raw["technology"]["personal-roboport-mk2-equipment"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["quality-module-3"].unit.ingredients = utils.placeholder_sp
data.raw["technology"]["quality-module-3"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["tesla-weapons"].unit.ingredients = utils.t3_sp_fulgora
data.raw["technology"]["tesla-weapons"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["processing-unit-productivity"].unit.ingredients = utils.t3_sp_prod_fulgora
data.raw["technology"]["processing-unit-productivity"].unit.count_formula = "1.5^L*" .. utils.t3_spcost_tech

data.raw["technology"]["scrap-recycling-productivity"].unit.ingredients = utils.t3_sp_prod_fulgora
data.raw["technology"]["scrap-recycling-productivity"].unit.count_formula = "1.5^L*" .. utils.t3_spcost_tech