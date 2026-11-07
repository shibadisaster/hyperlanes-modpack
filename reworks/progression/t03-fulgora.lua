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
