local utils = require("__hyperlanes-modpack__/utils")


-- Electric furnace
data.raw["recipe"]["electric-furnace"].ingredients = {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "stone-brick", amount = 10},
    {type = "item", name = "steel-furnace", amount = 1},
}

-- Production and utility science: move after Muluna space science
local prsp_tech = data.raw["technology"]["production-science-pack"]
table.insert(prsp_tech.prerequisites, "space-science-pack")
table.insert(prsp_tech.unit.ingredients, {"space-science-pack", 1})

local utsp_tech = data.raw["technology"]["utility-science-pack"]
table.insert(utsp_tech.prerequisites, "space-science-pack")
table.insert(utsp_tech.unit.ingredients, {"space-science-pack", 1})


-- Thruster
table.insert(data.raw["recipe"]["thruster"].categories, "space-manufacturing")


-- Space platform
table.insert(data.raw["recipe"]["space-platform-foundation"].categories, "space-manufacturing")


-- Speed mod rebalance (including overclock if changed)
data.raw["module"]["speed-module"].effect.quality = -0.005
data.raw["module"]["speed-module-2"].effect.quality = -0.010
data.raw["module"]["speed-module-3"].effect.quality = -0.0125
-- Overclock mod is -5% which is 2 qual3s, no need to change


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["quality-module"].unit.ingredients = utils.placeholder_sp

data.raw["technology"]["rigor-module"].unit.ingredients = utils.placeholder_sp

-- sheer disgust at the horrible blue rails mod sneaking its way into this pack