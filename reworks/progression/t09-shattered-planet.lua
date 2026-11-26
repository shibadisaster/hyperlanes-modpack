local utils = require("__hyperlanes-modpack__/utils")






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
    {type = "item", name = "promethium-science-pack", amount = 10, always_fresh = true, reset_freshness_on_craft = true},
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

data.raw["recipe"]["rubia-biofusion-promethium-science-pack"].enabled = false
data.raw["recipe"]["rubia-biofusion-promethium-science-pack"].hidden = true

data.raw["recipe"]["planetaris-promethium-science-pack"].enabled = false
data.raw["recipe"]["planetaris-promethium-science-pack"].hidden = true



-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["stellar-discovery-solar-system-edge"].prerequisites = {"breeding-exoticia"}
data.raw["technology"]["stellar-discovery-solar-system-edge"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["stellar-discovery-solar-system-edge"].unit.count = utils.t9_spcost_planet
table.insert(data.raw["technology"]["stellar-discovery-solar-system-edge"].effects, {
    type = "unlock-space-location",
    space_location = "shattered-planet"
})

data.raw["technology"]["promethium-science-pack"].prerequisites = {"hyperlanes-time-crystal"}
data.raw["technology"]["promethium-science-pack"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["promethium-science-pack"].unit.count = utils.t9_spcost_bigtech
table.remove(data.raw["technology"]["promethium-science-pack"].effects, 1)
table.remove(data.raw["technology"]["promethium-science-pack"].effects, 2)

data.raw["technology"]["rubia-biofusion-promethium-science-pack"].enabled = false
data.raw["technology"]["rubia-biofusion-promethium-science-pack"].hidden = true

data.raw["technology"]["rubia-cargo-landing-pad-capacity"].enabled = false
data.raw["technology"]["rubia-cargo-landing-pad-capacity"].hidden = true

data.raw["technology"]["muluna-gleba-greenhouses"].unit.ingredients = utils.t10_sp
data.raw["technology"]["muluna-gleba-greenhouses"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["muluna-space-telescope"].unit.ingredients = utils.t10_sp
data.raw["technology"]["muluna-space-telescope"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["research-productivity"].unit.ingredients = utils.t10_sp
data.raw["technology"]["research-productivity"].unit.count_formula = "1.2^(L-1)*" .. utils.t9_spcost_tech

data.raw["technology"]["maraxsis-promethium-quality-1"].unit.ingredients = utils.t10_sp
data.raw["technology"]["maraxsis-promethium-quality-2"].unit.ingredients = utils.t10_sp
data.raw["technology"]["maraxsis-promethium-quality-3"].unit.ingredients = utils.t10_sp
data.raw["technology"]["maraxsis-promethium-quality-4"].unit.ingredients = utils.t10_sp