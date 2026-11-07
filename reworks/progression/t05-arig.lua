local utils = require("__hyperlanes-modpack__/utils")


-- Sifter
data.raw["recipe"]["planetaris-sifter"].ingredients = {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "iron-gear-wheel", amount = 10},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "carbon-fiber", amount = 20},
    {type = "item", name = "crusher", amount = 1},
    {type = "item", name = "hyperlanes-sealant", amount = 5},
}

-- Press
data.raw["recipe"]["planetaris-press"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 20},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "processing-unit", amount = 10},
    {type = "item", name = "planetaris-glass-panel", amount = 10},
    {type = "item", name = "hyperlanes-sealant", amount = 10},
}

-- Condensing agricultural tower
data.raw["recipe"]["condensing-agricultural-tower"].ingredients = {
    {type = "item", name = "carbon-fiber", amount = 20},
    {type = "item", name = "processing-unit", amount = 25},
    {type = "item", name = "planetaris-glass-panel", amount = 10},
    {type = "item", name = "hyperlanes-sealant", amount = 10},
    {type = "item", name = "agricultural-tower", amount = 1},
    {type = "item", name = "storage-tank", amount = 1},
}
data.raw["recipe"]["condensing-agricultural-tower"].surface_conditions = {
    {
        property="planetaris-dust-concentration",
        min=50,
        max=100
    }
}


-- Heavy glass
data.raw["recipe"]["planetaris-heavy-glass"].ingredients = {
    {type = "item", name = "planetaris-glass-panel", amount = 2},
    {type = "item", name = "tungsten-plate", amount = 4},
    {type = "item", name = "silicon-carbide", amount = 2},
    {type = "item", name = "hyperlanes-sealant", amount = 4},
}
data.raw["recipe"]["planetaris-heavy-glass"].surface_conditions = {
    {
        property="planetaris-dust-concentration",
        min=50,
        max=100
    }
}
data.raw["recipe"]["planetaris-heavy-glass"].categories = {"compressing"}


-- Sand sifting
data.raw["recipe"]["planetaris-sand-sifting"].ingredients = {
    {type = "fluid", name = "planetaris-sand", amount = 200},
    {type = "item", name = "hyperlanes-fulgora-magnet", amount = 1},
}
data.raw["recipe"]["planetaris-advanced-sand-sifting"].ingredients = {
    {type = "fluid", name = "planetaris-sand", amount = 200},
    {type = "item", name = "hyperlanes-fulgora-magnet", amount = 1},
}


data.raw["technology"]["condensing-agricultural-tower"].essential = false
data.raw["technology"]["planetaris-arig-rocket-part"].essential = false


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-arig"].unit.ingredients = utils.t5_sp