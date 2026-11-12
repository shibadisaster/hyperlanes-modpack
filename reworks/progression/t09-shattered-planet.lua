local utils = require("__hyperlanes-modpack__/utils")


data.raw["technology"]["promethium-science-pack"].prerequisites = {"stellar-discovery-solar-system-edge", "biter-egg-handling"}


-- Cryolab rebalance
data.raw["lab"]["cryolab"].surface_conditions = {
    {
        property = "gravity",
        min = 0.0,
        max = 0.0
    }
}
data.raw["lab"]["cryolab"].effect_receiver = data.raw["lab"]["cryolab"].effect_receiver or {}
data.raw["lab"]["cryolab"].effect_receiver.base_effect = {
    productivity = 0.25
}


-- Promethium asteroid chunk spoiling
data.raw["item"]["promethium-asteroid-chunk"].spoil_ticks = 30 * 60

data.raw["item"]["promethium-science-pack"].spoil_ticks = 120 * 60

-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["stellar-discovery-solar-system-edge"].unit.ingredients = utils.t9_sp
data.raw["technology"]["stellar-discovery-solar-system-edge"].unit.count = utils.t9_spcost_planet