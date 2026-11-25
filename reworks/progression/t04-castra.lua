local utils = require("__hyperlanes-modpack__/utils")


-- Fix Battlefield science pack
local item = table.deepcopy(data.raw["tool"]["battlefield-science-pack"])

item.type = "item"
item.durability = nil
item.durability_description_value = nil
item.durability_description_key = nil
item.infinite = nil

data.raw["tool"]["battlefield-science-pack"] = nil
data:extend({item})


-- Forge
data.raw["recipe"]["forge"].ingredients = {
    {type = "item", name = "assembling-machine-3", amount = 1},
    {type = "item", name = "tungsten-plate", amount = 50, quality_min = "uncommon"},
    {type = "item", name = "electric-engine-unit", amount = 50},
    {type = "item", name = "nickel-plate", amount = 100},
    {type = "item", name = "gunpowder", amount = 250},
}



-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-castra"].prerequisites = {"hyperlanes-t4-epp"}
data.raw["technology"]["planet-discovery-castra"].unit.ingredients = utils.t4_sp
data.raw["technology"]["planet-discovery-castra"].unit.count = utils.t4_spcost_planet

data.raw["technology"]["battlefield-science-pack"].essential = true

data.raw["technology"]["advanced-nickel-processing"].unit.ingredients = utils.t4_sp_castra
data.raw["technology"]["advanced-nickel-processing"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["atomic-bomb"].unit.ingredients = utils.t4_sp_castra
data.raw["technology"]["atomic-bomb"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["carbon-fiber-wall"].unit.ingredients = utils.t4_sp_castra
data.raw["technology"]["carbon-fiber-wall"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["castra-enemy-research"].unit.ingredients = utils.t4_sp_castra
data.raw["technology"]["castra-enemy-research"].unit.count = utils.t4_spcost_smalltech

data.raw["technology"]["combat-roboport"].unit.ingredients = utils.t4_sp_castra
data.raw["technology"]["combat-roboport"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["holmium-catalyzing"].unit.ingredients = utils.t4_sp_castra
data.raw["technology"]["holmium-catalyzing"].unit.count = utils.t4_spcost_bigtech

-- data.raw["technology"]["follower-robot-count-1"].unit.ingredients = utils.t4_sp_castra
-- data.raw["technology"]["follower-robot-count-2"].unit.ingredients = utils.t4_sp_castra
-- data.raw["technology"]["follower-robot-count-3"].unit.ingredients = utils.t4_sp_castra
-- data.raw["technology"]["follower-robot-count-4"].unit.ingredients = utils.t4_sp_castra
-- data.raw["technology"]["follower-robot-count-5"].unit.ingredients = utils.t4_sp_castra

-- Lithium battery tech moved to combo tech with Cerys