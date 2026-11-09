local utils = require("__hyperlanes-modpack__/utils")


-- Steam crusher
data.raw["recipe"]["muluna-steam-crusher"].ingredients = {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "engine-unit", amount = 10},
    {type = "item", name = "aluminum-plate", amount = 20},
    {type = "item", name = "pipe", amount = 6}
}
-- TODO: gate this recipe to Muluna
local stcr_tech = data.raw["technology"]["muluna-steam-crusher"]
table.insert(stcr_tech.prerequisites, "muluna-aluminum-processing")


-- Crusher
data.raw["recipe"]["crusher"].ingredients = {
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "low-density-structure", amount = 20},
    {type = "item", name = "muluna-steam-crusher", amount = 1},
}
table.insert(data.raw["recipe"]["crusher"].categories, "space-manufacturing")


-- Asteroid collector
table.insert(data.raw["recipe"]["asteroid-collector"].categories, "space-manufacturing")




-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["efficiency-module-2"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["efficiency-module-2"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["speed-module-2"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["speed-module-2"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["rigor-module-2"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["rigor-module-2"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["quality-module-2"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["quality-module-2"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["productivity-module-2"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["productivity-module-2"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["landing-pad-unloading-bay"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["landing-pad-unloading-bay"].unit.count = utils.t2_spcost_bigtech

data.raw["technology"]["production-science-pack"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["production-science-pack"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["utility-science-pack"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["utility-science-pack"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["muluna-rocket-buggy"].unit.ingredients = utils.t2_sp_muluna_mil
data.raw["technology"]["muluna-rocket-buggy"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["muluna-silicon-processing"].unit.ingredients = utils.t2_sp_muluna_prod
data.raw["technology"]["muluna-silicon-processing"].unit.count = utils.t2_spcost_smalltech