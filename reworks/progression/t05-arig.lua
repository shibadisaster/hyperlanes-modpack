local utils = require("__hyperlanes-modpack__/utils")


-- Sifter
data.raw["recipe"]["planetaris-sifter"].ingredients = {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "iron-gear-wheel", amount = 10},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "carbon-fiber", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "crusher", amount = 1},
    {type = "item", name = "hyperlanes-sealant", amount = 5},
}

-- Press
data.raw["recipe"]["planetaris-press"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 20, quality_min = "uncommon"},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "processing-unit", amount = 10},
    {type = "item", name = "planetaris-glass-panel", amount = 10},
    {type = "item", name = "hyperlanes-sealant", amount = 10},
}

-- Condensing agricultural tower
data.raw["recipe"]["condensing-agricultural-tower"].ingredients = {
    {type = "item", name = "carbon-fiber", amount = 20, quality_min = "uncommon"},
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
    {type = "item", name = "tungsten-plate", amount = 4, quality_min = "uncommon"},
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
data.raw["recipe"]["planetaris-sand-sifting"].surface_conditions = {
    {
        property="planetaris-dust-concentration",
        min=50,
        max=100
    }
}
data.raw["recipe"]["planetaris-advanced-sand-sifting"].surface_conditions = {
    {
        property="planetaris-dust-concentration",
        min=50,
        max=100
    }
}


-- Rigor module 2
data.raw["recipe"]["rigor-module-2"].ingredients = {
    {type = "item", name = "rigor-module", amount = 4},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "plutonium-238", amount = 2},
}


-- Big chest
table.insert(
    data.raw["recipe"]["planetaris-big-chest"].ingredients,
    {type = "item", name = "steel-chest", amount = 4, quality_min = "uncommon"}
)


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
data.raw["technology"]["planet-discovery-arig"].unit.count = utils.t5_spcost_planet

data.raw["technology"]["planetaris-arig-roboport"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-arig-roboport"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["planetaris-cactus-plastic-productivity"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-cactus-plastic-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t5_spcost_smalltech

data.raw["technology"]["planetaris-advanced-sand-sifting"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-advanced-sand-sifting"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["planetaris-heavy-glass"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-heavy-glass"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["planetaris-sandstone-foundation"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-sandstone-foundation"].unit.count = utils.t5_spcost_smalltech

data.raw["technology"]["planetaris-silica-processing"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-silica-processing"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["planetaris-heavy-glass-productivity"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-heavy-glass-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["planetaris-water-harvesting"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-water-harvesting"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["planetaris-big-chest"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-big-chest"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["planetaris-advanced-solar-panel"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-advanced-solar-panel"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["planetaris-supported-solar-panel"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-supported-solar-panel"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["planetaris-raw-quartz-productivity"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["planetaris-raw-quartz-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["rigor-module-2"].prerequisites = {
    "rigor-module",
    "planetaris-compression-science"
}
data.raw["technology"]["rigor-module-2"].unit.ingredients = utils.t5_sp_arig
data.raw["technology"]["rigor-module-2"].unit.count = utils.t5_spcost_bigtech