local utils = require("__hyperlanes-modpack__/utils")


-- Foundry
data.raw["recipe"]["foundry"].ingredients = {
    {type = "item", name = "steel-plate", amount = 50},
    {type = "item", name = "electronic-circuit", amount = 30},
    {type = "item", name = "tungsten-carbide", amount = 50},
    {type = "item", name = "refined-concrete", amount = 20},
    {type = "item", name = "heat-pipe", amount = 5},
    {type = "fluid", name = "lubricant", amount = 20},
    {type = "item", name = "crusher", amount = 1}
}


-- Quality condenser
data.raw["recipe"]["quality-condenser-forked"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 200},
    {type = "item", name = "carbon-fiber", amount = 200},
    {type = "item", name = "superconductor", amount = 200},
    {type = "item", name = "steel-plate", amount = 100, quality_min = "uncommon"},
    {type = "item", name = "copper-cable", amount = 100, quality_min = "uncommon"},
    {type = "item", name = "aluminum-plate", amount = 100, quality_min = "uncommon"},
    {type = "item", name = "centrifuge", amount = 1, quality_min = "uncommon"},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-vulcanus"].unit.ingredients = utils.t3_sp
data.raw["technology"]["planet-discovery-vulcanus"].unit.count = utils.t3_spcost_planet

data.raw["technology"]["artillery"].unit.ingredients = utils.t3_sp_vulcanus
data.raw["technology"]["artillery"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["artillery-shell-damage-1"].unit.ingredients = utils.t3_sp_vulcanus

data.raw["technology"]["artillery-shell-range-1"].unit.ingredients = utils.t3_sp_vulcanus

data.raw["technology"]["artillery-shell-speed-1"].unit.ingredients = utils.t3_sp_vulcanus

data.raw["technology"]["cliff-explosives"].unit.ingredients = utils.t3_sp_vulcanus
data.raw["technology"]["cliff-explosives"].unit.count = utils.t3_spcost_smalltech

data.raw["technology"]["coal-liquefaction"].unit.ingredients = utils.t3_sp_vulcanus
data.raw["technology"]["coal-liquefaction"].unit.count = utils.t3_spcost_smalltech

data.raw["technology"]["low-density-structure-productivity"].unit.ingredients = utils.t3_sp_prod_vulcanus

data.raw["technology"]["muluna-advanced-stone-processing"].unit.ingredients = utils.t3_sp_vulcanus
data.raw["technology"]["muluna-advanced-stone-processing"].unit.count = utils.t3_spcost_tech

data.raw["technology"]["speed-module-3"].unit.ingredients = utils.t3_sp_vulcanus
data.raw["technology"]["speed-module-3"].unit.count = utils.t3_spcost_bigtech

data.raw["technology"]["turbo-transport-belt"].unit.ingredients = utils.t3_sp_vulcanus
data.raw["technology"]["turbo-transport-belt"].unit.count = utils.t3_spcost_bigtech

-- ╒═════════╗ ╒═════════╗  ╒════════════╗  ╒═════════╗  ╒═════════╗ ╒═════════╗
-- │  ╓────┐ ║ │  ╓───┐  ║  │  ╓─┐  ╓─┐  ║  └┐  ╓───┐ ╚╗ │  ╓───┐  ║ │  ╓────┐ ║
-- │  ║    └─╜ │  ║   │  ║  │  ║ │  ║ │  ║   │  ║   │  ║ │  ║   │  ║ │  ║    └─╜
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╚═══╛  ║ │  ║   │  ║ │  ╚══════╗
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╓───┐  ║ │  ║   │  ║ └──────┐  ║
-- │  ║    ╒═╗ │  ║   │  ║  │  ║ └──╜ │  ║   │  ║   │  ║ │  ║   │  ║ ╒═╗    │  ║
-- │  ╚════╛ ║ │  ╚═══╛  ║ ╒╛  ╚╗    ╒╛  ╚╗ ╒╛  ╚═══╛ ╓╜ │  ╚═══╛  ║ │ ╚════╛  ║
-- └─────────╜ └─────────╜ └────╜    └────╜ └─────────╜  └─────────╜ └─────────╜

-- Fulgora + Vulcanus
data.raw["technology"]["rail-support-foundations"].unit.ingredients = utils.t3_sp_fulgora_vulcanus
data.raw["technology"]["rail-support-foundations"].unit.count = utils.t3_spcost_bigtech



-- Fulgora + Gleba
data.raw["technology"]["quality-module"].prerequisites = {
    "agricultural-science-pack",
    "electromagnetic-science-pack",
    "modules"
}
data.raw["technology"]["quality-module"].unit.ingredients = utils.t3_sp_fulgora_gleba
data.raw["technology"]["quality-module"].unit.count = utils.t3_spcost_bigtech
table.remove(data.raw["technology"]["quality-module"].effects, 3) -- Remove Rare quality unlock

--  Quality condenser
data.raw["technology"]["quality-condenser-forked"].prerequisites = {
    "quality-module"
}
data.raw["technology"]["quality-condenser-forked"].unit.ingredients = utils.t3_sp_fulgora_gleba
data.raw["technology"]["quality-condenser-forked"].unit.count = utils.t3_spcost_bigtech

-- Gleba + Vulcanus
data.raw["technology"]["asteroid-reprocessing"].prerequisites = {
    "agricultural-science-pack",
    "metallurgic-science-pack",
}
data.raw["technology"]["asteroid-reprocessing"].unit.ingredients = utils.t3_sp_gleba_vulcanus
data.raw["technology"]["asteroid-reprocessing"].unit.count = utils.t3_spcost_bigtech