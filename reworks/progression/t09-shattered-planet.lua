local utils = require("__hyperlanes-modpack__/utils")


-- Promethium science pack tech
data.raw["technology"]["promethium-science-pack"].prerequisites = {"stellar-discovery-solar-system-edge"}


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

data.raw["recipe"]["cryolab"].ingredients = {
    {type = "item", name = "biolab", amount = 3, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1, quality_min = "uncommon"},
    {type = "item", name = "ai-tier-10", amount = 10, quality_min = "legendary"},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 50},
    {type = "item", name = "quantum-processor", amount = 200, quality_min = "rare"},
    {type = "item", name = "cerys-radioactive-module-charged", amount = 50, quality_min = "legendary"},
    {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 1000},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 500},
}



-- Promethium asteroid chunk spoiling
data.raw["item"]["promethium-asteroid-chunk"].spoil_ticks = 30 * 60


-- Interstellar science pack
data.raw["item"]["promethium-science-pack"].spoil_ticks = 120 * 60
data.raw["recipe"]["promethium-science-pack"].ingredients = {
    {type = "item", name = "datacell-cosmic-data", amount = 1},
    {type = "item", name = "quantum-processor", amount = 1, quality_min = "rare"},
    {type = "item", name = "rubia-biofusion-science-pack", amount = 1, quality_min = "legendary"},
    {type = "item", name = "promethium-asteroid-chunk", amount = 25},
    {type = "item", name = "hyperlanes-time-crystal-a", amount = 1},
    {type = "item", name = "hyperlanes-unstable-substrate", amount = 1},
}
data.raw["recipe"]["promethium-science-pack"].energy_required = 0.8
data.raw["recipe"]["promethium-science-pack"].results = {
    {type = "item", name = "hyperlanes-time-crystal-a", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
    {type = "item", name = "promethium-science-pack", amount = 10},
}
data.raw["recipe"]["promethium-science-pack"].surface_conditions = {
    {
        property = "gravity",
        min = 0.0,
        max = 0.0
    }
}
data.raw["recipe"]["promethium-science-pack"].main_product = "promethium-science-pack"
data.raw["recipe"]["promethium-science-pack"].categories = {"particle-manipulation"}



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