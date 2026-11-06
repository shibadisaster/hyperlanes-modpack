-- Pressure turbine
data.raw["recipe"]["pressure-turbine"].ingredients = {
    {type = "item", name = "muluna-cycling-steam-turbine", amount = 1},
    {type = "item", name = "pumpjack", amount = 1},
    {type = "item", name = "planetaris-crystalization-motor", amount = 5},
    {type = "item", name = "aluminum-plate", amount = 50},
    {type = "item", name = "lithium-plate", amount = 20},
}


-- Fusion generator
data.raw["recipe"]["fusion-generator"].ingredients = {
    {type = "item", name = "tungsten-plate", amount = 100},
    {type = "item", name = "lead-plate", amount = 50},
    {type = "item", name = "maraxsis-glass-panes", amount = 50},
    {type = "item", name = "quantum-processor", amount = 50},
    {type = "item", name = "pressure-turbine", amount = 1},
}


-- Cryovolcanic mixture
data.raw["recipe"]["cryovolcanic-mixture-separation"].categories = {"cryogenics", "electrochemistry"}


-- Sphalerite processing
data.raw["recipe"]["sphalerite-processing"].ingredients = {
    {type = "item", name = "sphalerite", amount = 5},
    {type = "fluid", name = "steam", amount = 30},
    {type = "fluid", name = "hyperlanes-superacid", amount = 5},
}

data.raw["recipe"]["sphalerite-melting"].ingredients = {
    {type = "item", name = "sphalerite", amount = 50},
    {type = "item", name = "calcite", amount = 20},
    {type = "fluid", name = "steam", amount = 50},
    {type = "fluid", name = "hyperlanes-superacid", amount = 100},
}


-- Tetrahedrite processing
data.raw["recipe"]["tetrahedrite-processing"].ingredients = {
    {type = "item", name = "tetrahedrite", amount = 5},
    {type = "fluid", name = "steam", amount = 30},
    {type = "fluid", name = "hyperlanes-superacid", amount = 5},
}

data.raw["recipe"]["tetrahedrite-melting"].ingredients = {
    {type = "item", name = "tetrahedrite", amount = 50},
    {type = "item", name = "calcite", amount = 20},
    {type = "fluid", name = "steam", amount = 50},
    {type = "fluid", name = "hyperlanes-superacid", amount = 100},
}


-- Zinc leaching
data.raw["recipe"]["zinc-leaching"].ingredients = {
    {type = "item", name = "calcite", amount = 20},
    {type = "fluid", name = "nitric-acid", amount = 40},
    {type = "fluid", name = "zinc-concentrate", amount = 40},
    {type = "fluid", name = "planetaris-aluminium", amount = 10},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
}
data.raw["recipe"]["zinc-leaching"].results = {
    {type = "item", name = "calcite", amount = 10, ignored_by_productivity = 10},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
    {type = "fluid", name = "dirty-zinc-solution", amount = 20},
}
data.raw["recipe"]["zinc-leaching"].main_product = "dirty-zinc-solution"


-- Zinc purification
data.raw["recipe"]["zinc-purification"].ingredients = {
    {type = "item", name = "planetaris-bismuth-transistor", amount = 2},
    {type = "item", name = "hyperlanes-microcellular-filter", amount = 1},
    {type = "fluid", name = "dirty-zinc-solution", amount = 20},
    {type = "fluid", name = "steam", amount = 20},
}
data.raw["recipe"]["zinc-purification"].results = {
    {type = "item", name = "stone", amount_min = 5, amount_max = 20},
    {type = "item", name = "hyperlanes-microcellular-filter", amount = 1, independent_probability = 0.95, ignored_by_productivity = 1},
    {type = "item", name = "planetaris-bismuth-transistor", amount = 1, ignored_by_productivity = 1},
    {type = "fluid", name = "zinc-solution", amount = 20},
}
data.raw["recipe"]["zinc-purification"].categories = {"electrochemistry", "electromagnetics"}


-- Electrochemical plant
data.raw["recipe"]["electrochemical-plant"].ingredients = {
    {type = "item", name = "electromagnetic-plant", amount = 1},
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "quantum-processor", amount = 30},
    {type = "item", name = "zinc-plate", amount = 25},
    {type = "item", name = "zinc-solder", amount = 20},
    {type = "item", name = "ai-tier-10", amount = 1},
}


-- Mechanical plant
data.raw["recipe"]["mechanical-plant"].ingredients = {
    {type = "item", name = "planetaris-assembling-machine-4", amount = 2},
    {type = "item", name = "quantum-processor", amount = 30},
    {type = "item", name = "planetaris-crystalization-motor", amount = 30},
    {type = "item", name = "zinc-plate", amount = 25},
    {type = "item", name = "zinc-rivets", amount = 20},
    {type = "item", name = "ai-tier-10", amount = 1},
}