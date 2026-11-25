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