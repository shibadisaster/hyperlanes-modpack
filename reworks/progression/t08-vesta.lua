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