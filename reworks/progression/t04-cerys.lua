local utils = require("__hyperlanes-modpack__/utils")


data.raw["technology"]["planetslib-cerys-cargo-drops"].essential = true


-- Remove Lithium from Cerys, replacing it with Lithium brine
data.raw["recipe"]["cerys-lubricant-synthesis"].ingredients = {
    {type = "fluid", name = "lithium-brine", amount = 50},
    {type = "fluid", name = "light-oil", amount = 50},
}

data.raw["recipe"]["cerys-neutron-bomb"].ingredients = {
    {type = "item", name = "plutonium-239", amount = 5},
    {type = "item", name = "artillery-shell", amount = 1},
    {type = "fluid", name = "lithium-brine", amount = 50},
}
data.raw["recipe"]["cerys-neutron-bomb"].categories = {"crafting-with-fluid"}

data.raw["recipe"]["cerys-mixed-oxide-reactor"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 500},
    {type = "item", name = "electric-engine-unit", amount = 20},
    {type = "fluid", name = "lithium-brine", amount = 2500},
    {type = "item", name = "refined-concrete", amount = 500},
}
data.raw["recipe"]["cerys-mixed-oxide-reactor"].categories = {"crafting-with-fluid"}

table.remove(data.raw["technology"]["cerys-mixed-oxide-reactors"].effects, 2)
table.remove(data.raw["technology"]["cerys-fulgoran-cryogenics"].effects, 6)


-- Radioactive module
data.raw["recipe"]["cerys-radioactive-module-charged"].ingredients = {
    {type = "item", name = "uranium-235", amount = 4},
    {type = "item", name = "superconductor", amount = 4, quality_min = "uncommon"},
    {type = "item", name = "productivity-module-2", amount = 8},
    {type = "fluid", name = "nitric-acid", amount = 25},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["moon-discovery-cerys"].unit.ingredients = utils.t4_sp
data.raw["technology"]["moon-discovery-cerys"].unit.count = utils.t4_spcost_planet