local utils = require("__hyperlanes-modpack__/utils")


-- Since this requires 4 planetary science packs, exploration science requires vulc, fulg, gleba, AND cerys to obtain, cerys only being doable after the rest are complete because of EPP gating
-- local exsp_tech = data.raw["technology"]["interstellar-science-pack"]
-- table.insert(exsp_tech.prerequisites, "cerysian-science-pack")

-- Nanofoamed polymers: tech moved to require Cerysian science pack 
local nanopoly_tech = data.raw["technology"]["muluna-nanofoamed-polymers"]
table.insert(nanopoly_tech.prerequisites, "cerysian-science-pack")

-- Telescope: tech moved to require nanofoamed polymers
local telesc_tech = data.raw["technology"]["muluna-telescope"]
table.insert(telesc_tech.prerequisites, "muluna-nanofoamed-polymers")


-- Low density space platform foundation
data.raw["recipe"]["low-density-space-platform-foundation"].ingredients = {
    {type = "item", name = "low-density-structure", amount = 1},
    {type = "item", name = "aluminum-plate", amount = 5, quality_min = "uncommon"},
    {type = "item", name = "steel-plate", amount = 5, quality_min = "uncommon"},
    {type = "item", name = "muluna-microcellular-plastic", amount = 5},
    {type = "item", name = "space-platform-foundation", amount = 1},
    {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 5},
}
data.raw["recipe"]["low-density-space-platform-foundation"].surface_conditions = {
    {
        property = "gravity",
        min = 2,
        max = 2,
    },
    {
        property = "oxygen",
        min = 0,
        max = 0,
    }
}
data.raw["recipe"]["low-density-space-platform-foundation"].categories = {"crafting-with-fluid", "space-manufacturing"}

data.raw["technology"]["low-density-space-platform-foundation"].prerequisites = {
    "muluna-nanofoamed-polymers",
    "hyperlanes-advanced-material-microsuspension"
}


-- Rigor module 1
data.raw["technology"]["rigor-module"].prerequisites = {
    "interstellar-science-pack",
    "modules"
}
data.raw["recipe"]["rigor-module"].ingredients = {
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "uranium-235", amount = 1},
}


-- Space chest
table.insert(
    data.raw["recipe"]["space-chest-muluna"].ingredients,
    {type = "item", name = "steel-chest", amount = 1, quality_min = "uncommon"}
)


-- Crusher 2
data.raw["recipe"]["crusher-2"].ingredients = {
    {type = "item", name = "aluminum-plate", amount = 10, quality_min = "uncommon"},
    {type = "item", name = "uranium-238", amount = 2},
    {type = "item", name = "tungsten-plate", amount = 10},
    {type = "item", name = "crusher", amount = 1},
    {type = "item", name = "speed-module-3", amount = 1},
}
table.insert(data.raw["recipe"]["crusher-2"].categories, "space-manufacturing")


-- LDSPF
table.insert(data.raw["recipe"]["low-density-space-platform-foundation"].categories, "space-manufacturing")


-- Cycling steam turbine
data.raw["recipe"]["muluna-cycling-steam-turbine"].ingredients = {
    {type = "item", name = "aluminum-plate", amount = 10, quality_min = "uncommon"},
    {type = "item", name = "tungsten-plate", amount = 10},
    {type = "item", name = "superconductor", amount = 10},
    {type = "item", name = "pipe", amount = 20},
    {type = "item", name = "steam-turbine", amount = 1},
    {type = "item", name = "quality-module", amount = 1},
}


-- Satellite radar
data.raw["recipe"]["muluna-satellite-radar"].ingredients = {
    {type = "item", name = "processing-unit", amount = 500},
    {type = "item", name = "aluminum-plate", amount = 500, quality_min = "uncommon"},
    {type = "item", name = "superconductor", amount = 500},
    {type = "item", name = "silicon-cell", amount = 100},
    {type = "item", name = "muluna-telescope", amount = 50},
    {type = "item", name = "radar", amount = 250},
}


-- Space chest nerf
-- data.raw["container"]["space-chest-muluna"].inventory_size = 3


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["muluna-telescope"].unit.ingredients = utils.t4_sp
data.raw["technology"]["muluna-telescope"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["crusher-2"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["crusher-2"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["muluna-asteroid-upcycling"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["muluna-asteroid-upcycling"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["advanced-space-science-pack"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["advanced-space-science-pack"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["muluna-cycling-steam-turbine"].prerequisites = {
    "interstellar-science-pack"
}
data.raw["technology"]["muluna-cycling-steam-turbine"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["muluna-cycling-steam-turbine"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["water-recycling-productivity"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["water-recycling-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t4_spcost_tech

data.raw["technology"]["thruster-fuel-productivity"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["thruster-fuel-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t4_spcost_bigtech

data.raw["technology"]["muluna-satellite-radar"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["muluna-satellite-radar"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["muluna-vacuum-heating-tower"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["muluna-vacuum-heating-tower"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["rigor-module-3"].unit.ingredients = utils.placeholder_sp

data.raw["technology"]["space-chest-muluna"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["space-chest-muluna"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["rigor-module"].unit.ingredients = utils.t4_sp_muluna
data.raw["technology"]["rigor-module"].unit.count = utils.t4_spcost_bigtech