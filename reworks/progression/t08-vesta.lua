local utils = require("__hyperlanes-modpack__/utils")


data.raw["technology"]["s1_gas_manipulation_science_pack"].essential = true


-- Ceramic
data.raw["recipe"]["ceramic"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 1},
    {type = "item", name = "foundation", amount = 1},
    {type = "fluid", name = "planetaris-pure-sand", amount = 100},
    {type = "fluid", name = "steam", amount = 150},
}
data.raw["recipe"]["ceramic"].results = {
    {type = "item", name = "ceramic", amount = 3}
}
data.raw["recipe"]["ceramic"].categories = {"compressing"}


-- Mesh
data.raw["recipe"]["ske_mesh"].ingredients = {
    {type = "item", name = "ceramic", amount = 1},
    {type = "item", name = "planetaris-carbon-nanotube", amount = 5},
    {type = "item", name = "carbon-fiber", amount = 10},
}


-- Remove sand recipe
data.raw["recipe"]["sand"].enabled = false
data.raw["recipe"]["sand"].hidden = true
table.remove(data.raw["technology"]["planet-discovery-vesta"].effects, 3)


-- Algae water
data.raw["recipe"]["ske_algea_water"].ingredients = {
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
    {type = "fluid", name = "hyperlanes-aerated-water", amount = 100},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 10},
}
data.raw["recipe"]["ske_algea_water"].results = {
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
    {type = "fluid", name = "ske_algea_water", amount_min = 50, amount_max = 100},
}
data.raw["recipe"]["ske_algea_water"].main_product = "ske_algea_water"
data.raw["recipe"]["ske_algea_water"].categories = {"organic"}


-- Gas giant foundation
data.raw["recipe"]["vesta-foundation"].ingredients = {
    {type = "item", name = "ceramic", amount = 10},
    {type = "item", name = "ske_mesh", amount = 10},
    {type = "item", name = "low-density-space-platform-foundation", amount = 20},
    {type = "fluid", name = "nitrogen", amount = 1000},
    {type = "fluid", name = "helium", amount = 1000},
}


-- Brine
data.raw["recipe"]["ske_brine_vesta"].ingredients = {
    {type = "fluid", name = "maraxsis-saline-water", amount = 10},
    {type = "item", name = "salt", amount = 5},
}


-- Nutrients from CO2 nerf
data.raw["recipe"]["nutrients-from-co2"].ingredients = {
    {type = "fluid", name = "carbon-dioxide", amount = 1000},
    {type = "item", name = "algea_nutrient_clump", amount = 1},
}
data.raw["recipe"]["nutrients-from-co2"].results = {
    {type = "item", name = "nutrients", amount = 10},
    {type = "item", name = "algea_nutrient_clump", amount = 1, ignored_by_productivity = 1},
}


-- Water filter
data.raw["recipe"]["ske_water_filter"].ingredients = {
    {type = "item", name = "maraxsis-salt-filter", amount = 1},
    {type = "item", name = "ske_mesh", amount = 1},
    {type = "item", name = "ske_charcoal", amount = 1},
}


-- Combustion furnace
data.raw["recipe"]["vesta-combustion-furnace"].ingredients = {
    {type = "item", name = "electric-furnace", amount = 1},
    {type = "item", name = "flare-stack", amount = 1},
    {type = "item", name = "lithium-plate", amount = 50},
    {type = "item", name = "quantum-processor", amount = 10},
    {type = "item", name = "ske_algea_clump", amount = 2},
}


-- Electrolyzer
data.raw["recipe"]["vesta-electrolyzer"].ingredients = {
    {type = "item", name = "electromagnetic-plant", amount = 1},
    {type = "item", name = "planetaris-bismuth-transistor", amount = 10},
    {type = "item", name = "lithium-plate", amount = 50},
    {type = "item", name = "ske_ammonia_chilled_plate", amount = 20},
    {type = "item", name = "quantum-processor", amount = 20},
    {type = "item", name = "superconductor", amount = 20},
}


-- Heating conductor
data.raw["recipe"]["vesta-heater"].ingredients = {
    {type = "item", name = "heat-exchanger", amount = 2},
    {type = "item", name = "storage-tank", amount = 1},
    {type = "item", name = "heat-pipe", amount = 50},
    {type = "item", name = "ske_ammonia_chilled_plate", amount = 20},
    {type = "item", name = "quantum-processor", amount = 20},
    {type = "item", name = "ai-tier-10", amount = 1},
}


-- Supermagnet
data.raw["recipe"]["supermagnet"].ingredients = {
    {type = "item", name = "electromagnetic-plant", amount = 1},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 20},
    {type = "item", name = "ske_ammonia_chilled_plate", amount = 20},
    {type = "item", name = "iridium-plate", amount = 10},
    {type = "item", name = "quantum-processor", amount = 20},
    {type = "item", name = "planetaris-crystalization-motor", amount = 20},
    {type = "item", name = "ai-tier-10", amount = 1},
    {type = "fluid", name = "electrolyte", amount = 1000},
}


-- Ammonia chilled plate
data.raw["recipe"]["ske_ammonia_chilled_plate"].ingredients = {
    {type = "item", name = "lead-plate", amount = 1},
    {type = "item", name = "tungsten-plate", amount = 1},
    {type = "item", name = "aluminum-plate", amount = 1},
    {type = "fluid", name = "ammonia", amount = 50},
}


-- Oxygenated fuel
data.raw["recipe"]["fluorofuel"].ingredients = {
    {type = "fluid", name = "fluoroketone-cold", amount = 40},
    {type = "fluid", name = "oxygen", amount = 200},
    {type = "fluid", name = "thruster-oxidizer", amount = 100},
}


-- Hydrogenated fuel
data.raw["recipe"]["plasmafuel"].ingredients = {
    {type = "fluid", name = "fusion-plasma", amount = 5},
    {type = "fluid", name = "hydrogen", amount = 400},
    {type = "fluid", name = "thruster-fuel", amount = 100},
}


-- Exotic algae clump
table.insert(
    data.raw["recipe"]["ske_algea_clump_rare"].ingredients, 
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1}
)
table.insert(
    data.raw["recipe"]["ske_algea_clump_rare"].results,
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
)


-- Iridium algae clump
table.insert(
    data.raw["recipe"]["ske_algea_clump_iridium"].ingredients, 
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1}
)
table.insert(
    data.raw["recipe"]["ske_algea_clump_iridium"].results,
    {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98}
)


-- Fusion bots rework (https://www.desmos.com/calculator/2p7wzzgs24)
data.raw["logistic-robot"]["fusion-logistic-robot"].max_payload_size = 20
data.raw["logistic-robot"]["fusion-logistic-robot"].speed = 0.05 * 1.5

data.raw["construction-robot"]["fusion-construction-robot"].max_payload_size = 20
data.raw["construction-robot"]["fusion-construction-robot"].speed = 0.05 * 1.5

data.raw["recipe"]["fusion-logistic-robot"].ingredients = {
    {type = "item", name = "lead-logistic-robot", amount = 1},
    {type = "item", name = "ske_fusion_framework", amount = 1},
    {type = "fluid", name = "ske_supermagnetic", amount = 20},
}

data.raw["recipe"]["fusion-construction-robot"].ingredients = {
    {type = "item", name = "lead-construction-robot", amount = 1},
    {type = "item", name = "ske_fusion_framework", amount = 1},
    {type = "fluid", name = "ske_supermagnetic", amount = 20},
}

data.raw["recipe"]["ske_fusion_framework"].ingredients = {
    {type = "item", name = "flying-robot-frame", amount = 2},
    {type = "item", name = "quantum-processor", amount = 1},
    {type = "item", name = "planetaris-crystalization-motor", amount = 1},
    {type = "item", name = "ske_empty_dt_canister", amount = 2},
    {type = "item", name = "accumulator", amount = 1},
    {type = "fluid", name = "ske_dt_fuel", amount = 200},
}
data.raw["recipe"]["ske_fusion_framework"].categories = {"magnetics"}


-- Plasma pipe
data.raw["recipe"]["magnetic-pipe"].ingredients = {
    {type = "item", name = "zinc-pipe", amount = 5},
    {type = "item", name = "ske_ammonia_chilled_plate", amount = 10},
    {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 5},
    {type = "fluid", name = "ske_supermagnetic", amount = 50},
    {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 100},
}
data.raw["recipe"]["magnetic-pipe"].results = {
    {type = "item", name = "magnetic-pipe", amount = 5},
}
data.raw["recipe"]["magnetic-pipe-to-ground"].ingredients = {
    {type = "item", name = "magnetic-pipe", amount = 10},
    {type = "item", name = "ske_ammonia_chilled_plate", amount = 10},
    {type = "fluid", name = "ske_supermagnetic", amount = 100},
}


-- Supermagnetic fluid
data.raw["recipe"]["ske_supermagnetic"].ingredients = {
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
    {type = "fluid", name = "electrolyte", amount = 10},
    {type = "fluid", name = "helium", amount = 30},
}
data.raw["recipe"]["ske_supermagnetic"].results = {
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1, ignored_by_productivity = 1, independent_probability = 0.90},
    {type = "fluid", name = "ske_supermagnetic", amount = 40},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-vesta"].unit.ingredients = utils.t8_sp
data.raw["technology"]["planet-discovery-vesta"].unit.count = utils.t8_spcost_planet

data.raw["technology"]["carbon-dioxide"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["carbon-dioxide"].unit.count = utils.t8_spcost_tech

data.raw["technology"]["dt-fuel"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["dt-fuel"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["s2_fusion_robots"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["s2_fusion_robots"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["hydrogen-sulfide"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["hydrogen-sulfide"].unit.count = utils.t8_spcost_tech

data.raw["technology"]["s2_intermediate_productivity"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["s2_intermediate_productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t8_spcost_tech

-- Plasma pipes moved to T9

data.raw["technology"]["fusion-missile"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["fusion-missile"].unit.count = utils.t8_spcost_bigtech
data.raw["technology"]["fusion-missile"].prerequisites = {"s1_gas_manipulation_science_pack"}

data.raw["technology"]["ske_fusion_thruster"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["ske_fusion_thruster"].unit.count = utils.t8_spcost_bigtech
data.raw["technology"]["ske_fusion_thruster"].prerequisites = {"s1_gas_manipulation_science_pack"}

-- Plateworking moved to combo tech with Paracelsin

-- Transport belt capacity unified, get rid of this one
data.raw["technology"]["s2_transport-belt-capacity-vesta"].enabled = false
data.raw["technology"]["s2_transport-belt-capacity-vesta"].hidden = true

data.raw["technology"]["s2_worker-robots-storage-vesta"].unit.ingredients = utils.t8_sp_vesta
data.raw["technology"]["s2_worker-robots-storage-vesta"].unit.count = utils.t8_spcost_bigtech





-- ╒═════════╗ ╒═════════╗  ╒════════════╗  ╒═════════╗  ╒═════════╗ ╒═════════╗
-- │  ╓────┐ ║ │  ╓───┐  ║  │  ╓─┐  ╓─┐  ║  └┐  ╓───┐ ╚╗ │  ╓───┐  ║ │  ╓────┐ ║
-- │  ║    └─╜ │  ║   │  ║  │  ║ │  ║ │  ║   │  ║   │  ║ │  ║   │  ║ │  ║    └─╜
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╚═══╛  ║ │  ║   │  ║ │  ╚══════╗
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╓───┐  ║ │  ║   │  ║ └──────┐  ║
-- │  ║    ╒═╗ │  ║   │  ║  │  ║ └──╜ │  ║   │  ║   │  ║ │  ║   │  ║ ╒═╗    │  ║
-- │  ╚════╛ ║ │  ╚═══╛  ║ ╒╛  ╚╗    ╒╛  ╚╗ ╒╛  ╚═══╛ ╓╜ │  ╚═══╛  ║ │ ╚════╛  ║
-- └─────────╜ └─────────╜ └────╜    └────╜ └─────────╜  └─────────╜ └─────────╜

-- Paracelsin + Tellus
data.raw["technology"]["planetaris-space-preservation"].prerequisites = {
    "galvanization-science-pack",
    "planetaris-pathological-science-pack"
}
data.raw["technology"]["planetaris-space-preservation"].unit.ingredients = utils.t8_sp_paracelsin_tellus
data.raw["technology"]["planetaris-space-preservation"].unit.count = utils.t8_spcost_bigtech

-- Paracelsin + Vesta
data.raw["technology"]["s2_plateworkings"].prerequisites = {
    "galvanization-science-pack",
    "s1_gas_manipulation_science_pack"
}
data.raw["technology"]["s2_plateworkings"].unit.ingredients = utils.t8_sp_paracelsin_vesta
data.raw["technology"]["s2_plateworkings"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["s2_plasma_pipes"].prerequisites = {
    "galvanization-science-pack",
    "s1_gas_manipulation_science_pack",
    "zinc-piping"
}
data.raw["technology"]["s2_plasma_pipes"].unit.ingredients = utils.t8_sp_paracelsin_vesta
data.raw["technology"]["s2_plasma_pipes"].unit.count = utils.t8_spcost_bigtech

-- Tellus + Vesta
--      Transport belt capacity: unify this and make it repeatable, with 5x scaling
data.raw["technology"]["tellus-transport-belt-capacity-3"].prerequisites = {
    "planetaris-pathological-science-pack",
    "s1_gas_manipulation_science_pack",
    "transport-belt-capacity-2"
}
data.raw["technology"]["tellus-transport-belt-capacity-3"].unit.ingredients = utils.t8_sp_tellus_vesta
data.raw["technology"]["tellus-transport-belt-capacity-3"].unit.count_formula = "5^(L-3)*" .. utils.t8_spcost_tech
data.raw["technology"]["tellus-transport-belt-capacity-3"].unit.count = nil

table.insert(
    data.raw["technology"]["tellus-transport-belt-capacity-3"].effects,
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 2
    }
)

data.raw["utility-constants"]["default"].max_belt_stack_size = 100
data.raw["utility-constants"]["default"].inserter_hand_stack_max_sprites = 100

data.raw["inserter"]["stack-inserter"].max_belt_stack_size = 100
data.raw["inserter"]["long-stack-inserter"].max_belt_stack_size = 100