local utils = require("__hyperlanes-modpack__/utils")


-- Biochamber
data.raw["recipe"]["biochamber"].ingredients = {
    {type = "item", name = "iron-plate", amount = 20},
    {type = "item", name = "electronic-circuit", amount = 5},
    {type = "item", name = "nutrients", amount = 5},
    {type = "item", name = "pentapod-egg", amount = 1},
    {type = "item", name = "landfill", amount = 1},
    {type = "item", name = "muluna-greenhouse", amount = 1}
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-gleba"].unit.ingredients = utils.t3_sp
data.raw["technology"]["planet-discovery-gleba"].unit.count = utils.t3_spcost_planet

data.raw["technology"]["advanced-asteroid-processing"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["advanced-asteroid-processing"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["asteroid-productivity"].unit.ingredients = utils.t3_sp_gleba

data.raw["technology"]["refined-flammables-7"].unit.ingredients = utils.t3_sp_gleba

data.raw["technology"]["stronger-explosives-7"].unit.ingredients = utils.t3_sp_gleba

data.raw["technology"]["captivity"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["captivity"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["health"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["health"].unit.count_formula = "3^L*" .. utils.t3_spcost_smalltech

data.raw["technology"]["carbon-fiber"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["carbon-fiber"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["efficiency-module-3"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["efficiency-module-3"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["epic-quality"].unit.ingredients = utils.placeholder_sp

data.raw["technology"]["muluna-fertilized-greenhouses"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["muluna-fertilized-greenhouses"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["tree-seeding"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["tree-seeding"].unit.count = utils.t3_spcost_smalltech

data.raw["technology"]["fish-breeding"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["fish-breeding"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["rocket-turret"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["rocket-turret"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["toolbelt-equipment"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["toolbelt-equipment"].unit.count = utils.t3_spcost_smalltech

data.raw["technology"]["spidertron"].unit.ingredients = utils.t3_sp_gleba

data.raw["technology"]["stack-inserter"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["stack-inserter"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["transport-belt-capacity-1"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["transport-belt-capacity-1"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["transport-belt-capacity-2"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["transport-belt-capacity-2"].unit.count = utils.t3_spcost_bigtech * 1.5

data.raw["technology"]["biolab"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["biolab"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["overgrowth-soil"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["overgrowth-soil"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["productivity-module-3"].unit.ingredients = utils.t3_sp_gleba
data.raw["technology"]["productivity-module-3"].unit.count = utils.t3_spcost_bigtech