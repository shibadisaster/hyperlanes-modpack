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


-- Dyes
data.raw["recipe"]["planetaris-red-dye"].ingredients = {
    {type = "item", name = "copper-ore", amount = 1}, -- copper is green actually but sure
    {type = "item", name = "alumina-crushed", amount = 5},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planetaris-red-dye"].categories = {"chemistry"}

data.raw["recipe"]["planetaris-blue-dye"].ingredients = {
    {type = "item", name = "iron-ore", amount = 1}, -- iron is red actually but sure
    {type = "item", name = "alumina-crushed", amount = 5},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planetaris-blue-dye"].categories = {"chemistry"}

data.raw["recipe"]["planetaris-green-dye"].ingredients = {
    {type = "item", name = "muluna-sapling", amount = 1}, -- what
    {type = "item", name = "alumina-crushed", amount = 5},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planetaris-green-dye"].categories = {"chemistry"}

data.raw["recipe"]["planetaris-yellow-dye"].ingredients = {
    {type = "item", name = "sulfur", amount = 1},
    {type = "item", name = "planetaris-red-dye", amount = 5},
    {type = "item", name = "planetaris-green-dye", amount = 5},
}
data.raw["recipe"]["planetaris-yellow-dye"].categories = {"chemistry"}

data.raw["recipe"]["planetaris-cyan-dye"].ingredients = {
    {type = "item", name = "oxide-asteroid-chunk", amount = 1},
    {type = "item", name = "planetaris-blue-dye", amount = 5},
    {type = "item", name = "planetaris-green-dye", amount = 5},
}
data.raw["recipe"]["planetaris-cyan-dye"].categories = {"chemistry"}

data.raw["recipe"]["planetaris-magenta-dye"].ingredients = {
    {type = "fluid", name = "muluna-roboport-propellant", amount = 20},
    {type = "item", name = "planetaris-blue-dye", amount = 5},
    {type = "item", name = "planetaris-red-dye", amount = 5},
}
data.raw["recipe"]["planetaris-magenta-dye"].categories = {"chemistry"}


-- Anorthite chunk
data.raw["item"]["anorthite-chunk"].order = "d[hyperlanes]-e[chunk]-" .. utils.planet_tier_orders["muluna"]
data.raw["item"]["muluna-lunar-regolith"].order = "zzz"



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

data.raw["technology"]["planetaris-primary-dyes"].prerequisites = {"space-science-pack"}
data.raw["technology"]["planetaris-primary-dyes"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["planetaris-primary-dyes"].unit.count = utils.t2_spcost_tech

data.raw["technology"]["planetaris-secondary-dyes"].prerequisites = {"planetaris-primary-dyes"}
data.raw["technology"]["planetaris-secondary-dyes"].unit.ingredients = utils.t2_sp_muluna
data.raw["technology"]["planetaris-secondary-dyes"].unit.count = utils.t2_spcost_tech