local utils = require("__hyperlanes-modpack__/utils")


data.raw["technology"]["rubia-project-trashdragon"].essential = true
data.raw["technology"]["planetslib-rubia-cargo-drops"].essential = true
data.raw["technology"]["craptonite-processing"].essential = true


-- Quality module 2
data.raw["recipe"]["quality-module-2"].ingredients = {
    {type = "item", name = "quality-module", amount = 4},
    {type = "item", name = "advanced-circuit", amount = 5},
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "planetaris-heavy-glass", amount = 2},
}


-- Let's kill the stupid techs that kill people
data.raw["technology"]["rubia-craptonite-cannister"].enabled = false
data.raw["technology"]["rubia-craptonite-cannister"].hidden = true

data.raw["technology"]["rubia-craptonite-eyedrop"].enabled = false
data.raw["technology"]["rubia-craptonite-eyedrop"].hidden = true

data.raw["technology"]["rubia-craptonite-belt-buckle"].enabled = false
data.raw["technology"]["rubia-craptonite-belt-buckle"].hidden = true

data.raw["technology"]["rubia-craptonite-boots"].enabled = false
data.raw["technology"]["rubia-craptonite-boots"].hidden = true

data.raw["technology"]["rubia-craptonite-circlet"].enabled = false
data.raw["technology"]["rubia-craptonite-circlet"].hidden = true

data.raw["technology"]["rubia-craptonite-earring"].enabled = false
data.raw["technology"]["rubia-craptonite-earring"].hidden = true

data.raw["technology"]["rubia-craptonite-grillz"].enabled = false
data.raw["technology"]["rubia-craptonite-grillz"].hidden = true

data.raw["technology"]["rubia-craptonite-hook"].enabled = false
data.raw["technology"]["rubia-craptonite-hook"].hidden = true

data.raw["technology"]["rubia-craptonite-lamp"].enabled = false
data.raw["technology"]["rubia-craptonite-lamp"].hidden = true

data.raw["technology"]["rubia-craptonite-satchel"].enabled = false
data.raw["technology"]["rubia-craptonite-satchel"].hidden = true

data.raw["technology"]["rubia-craptonite-sunglasses"].enabled = false
data.raw["technology"]["rubia-craptonite-sunglasses"].hidden = true

-- TODO: get rid of the HELL TECHNOLOGY that uses "69 unknown items" that we toss into the wind


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-rubia"].unit.ingredients = utils.t5_sp
data.raw["technology"]["planet-discovery-rubia"].unit.count = utils.t5_spcost_planet

data.raw["technology"]["braking-force-8"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["braking-force-8"].unit.count_formula = "2^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["craptonite-productivity"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["craptonite-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["craptonite-wall"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["craptonite-wall"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["rubia-efficiency-module4"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["rubia-efficiency-module4"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["craptonite-axe"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["craptonite-axe"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["axe-mining-speed"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["axe-mining-speed"].unit.count_formula = "2^(L-1)*" .. utils.t5_spcost_tech
data.raw["technology"]["axe-mining-speed"].prerequisites = {"craptonite-axe"}

data.raw["technology"]["rubia-holmium-craptalysis"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["rubia-holmium-craptalysis"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["rubia-long-bulk-inserter"].unit.ingredients = utils.placeholder_sp
data.raw["technology"]["rubia-long-bulk-inserter"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["rubia-long-stack-inserter"].unit.ingredients = utils.placeholder_sp
data.raw["technology"]["rubia-long-stack-inserter"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["rubia-biochamber-productivity-bonus"].unit.ingredients = utils.t5_sp_rubia_biofusion
data.raw["technology"]["rubia-biochamber-productivity-bonus"].unit.count_formula = "2^(L-0)*" .. utils.t5_spcost_smalltech

data.raw["technology"]["rubia-bio-utility-science-pack"].unit.ingredients = utils.t5_sp_rubia_biofusion
data.raw["technology"]["rubia-bio-utility-science-pack"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["rubia-bio-flying-robot-frame"].unit.ingredients = utils.t5_sp_rubia_biofusion
data.raw["technology"]["rubia-bio-flying-robot-frame"].unit.count = utils.t5_spcost_tech

data.raw["technology"]["rubia-biofusion-promethium-science-pack"].unit.ingredients = utils.placeholder_sp
data.raw["technology"]["rubia-biofusion-promethium-science-pack"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["rubia-cargo-landing-pad-capacity"].unit.ingredients = utils.placeholder_sp
data.raw["technology"]["rubia-cargo-landing-pad-capacity"].unit.count = utils.t5_spcost_bigtech

data.raw["technology"]["rubia-nutrient-productivity"].unit.ingredients = utils.t5_sp_rubia_biofusion
data.raw["technology"]["rubia-nutrient-productivity"].unit.count_formula = "1.8^(L-1)*" .. utils.t5_spcost_tech

data.raw["technology"]["planetslib-rubia-cargo-drops"].unit.ingredients = utils.t5_sp_rubia
data.raw["technology"]["planetslib-rubia-cargo-drops"].unit.count = utils.t5_spcost_smalltech


-- ╒═════════╗ ╒═════════╗  ╒════════════╗  ╒═════════╗  ╒═════════╗ ╒═════════╗
-- │  ╓────┐ ║ │  ╓───┐  ║  │  ╓─┐  ╓─┐  ║  └┐  ╓───┐ ╚╗ │  ╓───┐  ║ │  ╓────┐ ║
-- │  ║    └─╜ │  ║   │  ║  │  ║ │  ║ │  ║   │  ║   │  ║ │  ║   │  ║ │  ║    └─╜
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╚═══╛  ║ │  ║   │  ║ │  ╚══════╗
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╓───┐  ║ │  ║   │  ║ └──────┐  ║
-- │  ║    ╒═╗ │  ║   │  ║  │  ║ └──╜ │  ║   │  ║   │  ║ │  ║   │  ║ ╒═╗    │  ║
-- │  ╚════╛ ║ │  ╚═══╛  ║ ╒╛  ╚╗    ╒╛  ╚╗ ╒╛  ╚═══╛ ╓╜ │  ╚═══╛  ║ │ ╚════╛  ║
-- └─────────╜ └─────────╜ └────╜    └────╜ └─────────╜  └─────────╜ └─────────╜

-- Arig + Muria
-- refer to data-final-fixes

-- Arig + Rubia
data.raw["technology"]["quality-module-2"].prerequisites = {
    "planetaris-compression-science",
    "planetslib-rubia-cargo-drops",
    "quality-module"
}
data.raw["technology"]["quality-module-2"].unit.ingredients = utils.t5_sp_arig_rubia
data.raw["technology"]["quality-module-2"].unit.count = utils.t5_spcost_bigtech
table.insert(
    data.raw["technology"]["quality-module-2"].effects,
    {
        type = "unlock-quality",
        quality = "rare"
    }
)

-- Muria + Rubia
data.raw["technology"]["oxygenated-bacteria-cultivation"].prerequisites = {
    "offworld-chlorine-compounds-production",
    "planetslib-rubia-cargo-drops"
}
data.raw["technology"]["oxygenated-bacteria-cultivation"].unit.ingredients = utils.t5_sp_muria_rubia
data.raw["technology"]["oxygenated-bacteria-cultivation"].unit.count = utils.t5_spcost_bigtech