local utils = require("__hyperlanes-modpack__/utils")


-- Lead smelting
data.raw["recipe"]["muria-lead-plate"].ingredients = {
    {type = "item", name = "hyperlanes-purified-lead", amount = 2},
}
data.raw["recipe"]["molten-lead"].ingredients = {
    {type = "item", name = "hyperlanes-purified-lead", amount = 10},
    {type = "fluid", name = "hydrogen", amount = 100}
}

-- Acidworking plant
data.raw["recipe"]["acidworking-plant"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 20},
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "lead-plate", amount = 10},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "chemical-plant", amount = 3},
    {type = "fluid", name = "chlorine", amount = 50},
}

-- Smelting plant
data.raw["recipe"]["smelting-plant"].ingredients = {
    {type = "item", name = "aluminum-plate", amount = 20},
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "lead-plate", amount = 10},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "foundry", amount = 1},
    {type = "item", name = "electric-furnace", amount = 3},
    {type = "fluid", name = "oxygen", amount = 50},
}


-- Lead bots
data.raw["recipe"]["lead-logistic-robot"].ingredients = {
    {type = "item", name = "logistic-robot", amount = 1},
    {type = "item", name = "flying-robot-frame", amount = 1},
    {type = "item", name = "anti-corrosion-cladding", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
}

data.raw["recipe"]["lead-construction-robot"].ingredients = {
    {type = "item", name = "construction-robot", amount = 1},
    {type = "item", name = "flying-robot-frame", amount = 1},
    {type = "item", name = "anti-corrosion-cladding", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-muria"].unit.ingredients = utils.t5_sp