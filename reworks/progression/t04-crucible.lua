local utils = require("__hyperlanes-modpack__/utils")


-- Kiln
data.raw["recipe"]["planet-crucible-kiln"].ingredients = {
    {type = "item", name = "electric-furnace", amount = 1},
    {type = "item", name = "tungsten-plate", amount = 100, quality_min = "uncommon"},
    {type = "item", name = "heat-pipe", amount = 50},
    {type = "item", name = "planet-crucible-emery", amount = 50},
    {type = "item", name = "stone-brick", amount = 50},
    {type = "item", name = "pipe", amount = 50},
}


-- Alum
data.raw["recipe"]["planet-crucible-alum"].ingredients = {
    {type = "item", name = "planet-crucible-emery", amount = 5},
    {type = "item", name = "alumina-crushed", amount = 1},
    {type = "fluid", name = "sulfuric-acid", amount = 12},
}


-- Pressure forge
data.raw["recipe"]["planet-crucible-pressure-forge"].ingredients = {
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "tungsten-plate", amount = 50, quality_min = "uncommon"},
    {type = "item", name = "planet-crucible-ruby", amount = 20},
    {type = "item", name = "planet-crucible-diamond", amount = 10},
    {type = "item", name = "planet-crucible-emery", amount = 50},
    {type = "item", name = "refined-concrete", amount = 50},
    {type = "item", name = "pipe", amount = 50},
    {type = "fluid", name = "planet-crucible-hydraulic-fluid", amount = 200},
}


-- Hydrogen condensation
data.raw["recipe"]["planet-crucible-hydrogen-condensation"].categories = {"chemistry", "cryogenics"}
data.raw["recipe"]["planet-crucible-hydrogen-condensation"].ingredients = {
    {type = "fluid", name = "hydrogen", amount = 100},
    {type = "item", name = "ice", amount = 10},
}
data.raw["recipe"]["planet-crucible-hydrogen-condensation"].results = {
    {type = "fluid", name = "planet-crucible-hydrogen-liquid", amount = 10},
    {type = "fluid", name = "water", amount = 200},
}


-- Lithium hydride
data.raw["recipe"]["planet-crucible-lithium-hydride"].categories = {"chemistry", "cryogenics"}
data.raw["recipe"]["planet-crucible-lithium-hydride"].ingredients = {
    {type = "fluid", name = "planet-crucible-hydrogen-liquid", amount = 100},
    {type = "fluid", name = "lithium-brine", amount = 50},
}


-- Hydrogen remetallization
data.raw["recipe"]["planet-crucible-hydrogen-remetallization"].categories = {"chemistry", "cryogenics"}
data.raw["recipe"]["planet-crucible-hydrogen-remetallization"].results[5] = {type = "fluid", name = "lithium-brine", amount = 150, ignored_by_productivity = 150}


-- Advanced thruster oxidizer (we aren't gonna touch this even!)
data.raw["recipe"]["planet-crucible-thruster-oxidizer-adv"].categories = {"cryogenics"}


-- Offshore pump
table.insert(data.raw["recipe"]["planet-crucible-offshore-pump"].ingredients,
    {type = "item", name = "offshore-pump", amount = 1}
)


-- Thruster
data.raw["recipe"]["planet-crucible-thruster"].ingredients = {
    {type = "item", name = "thruster", amount = 1},
    {type = "item", name = "processing-unit", amount = 10, quality_min = "uncommon"},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "planet-crucible-ruby", amount = 10},
    {type = "item", name = "planet-crucible-diamond", amount = 5},
}


-- TODO: lenses
table.insert(data.raw["recipe"]["planet-crucible-lens-1"].categories, "chemistry")
data.raw["recipe"]["planet-crucible-lens-1"].ingredients = {
    {type = "item", name = "planet-crucible-lens-0", amount = 1},
    {type = "item", name = "tungsten-plate", amount = 5, quality_min = "uncommon"},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planet-crucible-lens-1"].results = {
    {type = "item", name = "planet-crucible-lens-1", amount = 1},
}

table.insert(data.raw["recipe"]["planet-crucible-lens-2"].categories, "chemistry")
data.raw["recipe"]["planet-crucible-lens-2"].ingredients = {
    {type = "item", name = "planet-crucible-lens-0", amount = 1},
    {type = "fluid", name = "sulfuric-acid", amount = 50},
}
data.raw["recipe"]["planet-crucible-lens-2"].results = {
    {type = "item", name = "planet-crucible-lens-2", amount = 1},
}

table.insert(data.raw["recipe"]["planet-crucible-lens-3"].categories, "chemistry")
data.raw["recipe"]["planet-crucible-lens-3"].ingredients = {
    {type = "item", name = "planet-crucible-lens-0", amount = 1},
    {type = "item", name = "heat-pipe", amount = 5, quality_min = "uncommon"},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planet-crucible-lens-3"].results = {
    {type = "item", name = "planet-crucible-lens-3", amount = 1},
}

table.insert(data.raw["recipe"]["planet-crucible-lens-4"].categories, "chemistry")
data.raw["recipe"]["planet-crucible-lens-4"].ingredients = {
    {type = "item", name = "planet-crucible-lens-0", amount = 1},
    {type = "item", name = "superconductor", amount = 5, quality_min = "uncommon"},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planet-crucible-lens-4"].results = {
    {type = "item", name = "planet-crucible-lens-4", amount = 1},
}

table.insert(data.raw["recipe"]["planet-crucible-lens-5"].categories, "chemistry")
data.raw["recipe"]["planet-crucible-lens-5"].ingredients = {
    {type = "item", name = "planet-crucible-lens-0", amount = 1},
    {type = "item", name = "bioflux", amount = 10},
    {type = "fluid", name = "sulfuric-acid", amount = 20},
}
data.raw["recipe"]["planet-crucible-lens-5"].results = {
    {type = "item", name = "planet-crucible-lens-5", amount = 1},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-crucible"].prerequisites = {"hyperlanes-t4-epp"}
data.raw["technology"]["planet-discovery-crucible"].unit.ingredients = utils.t4_sp
data.raw["technology"]["planet-discovery-crucible"].unit.count = utils.t4_spcost_planet

data.raw["technology"]["oil-processing-productivity"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["oil-processing-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t4_spcost_tech

data.raw["technology"]["planet-crucible-gem-synthesis"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-gem-synthesis"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["planet-crucible-gem-productivity"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-gem-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t4_spcost_tech

data.raw["technology"]["planet-crucible-offshore-pump"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-offshore-pump"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["planet-crucible-optics"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-optics"].unit.count = utils.t4_spcost_smalltech

data.raw["technology"]["planet-crucible-night-vision-mk2"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-night-vision-mk2"].unit.count = utils.t4_spcost_tech

data.raw["technology"]["stone-brick-productivity"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["stone-brick-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t4_spcost_tech

data.raw["technology"]["planet-crucible-thruster"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-thruster"].unit.count = utils.t4_spcost_smalltech

data.raw["technology"]["planet-crucible-laser"].prerequisites = {"planet-crucible-optics"}
data.raw["technology"]["planet-crucible-laser"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-laser"].unit.count = utils.t4_spcost_bigtech

-- Go over these lenses for an idea of how to retier? Maybe post-Hyarion as its refraction and to coincide with unlock of ruby laser turret to let this one retain its niche 
data.raw["technology"]["planet-crucible-lens-one"].prerequisites = {"planet-crucible-laser"}
data.raw["technology"]["planet-crucible-lens-one"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-lens-one"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["planet-crucible-lens-two"].prerequisites = {"planet-crucible-laser"}
data.raw["technology"]["planet-crucible-lens-two"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-lens-two"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["planet-crucible-lens-three"].prerequisites = {"planet-crucible-laser"}
data.raw["technology"]["planet-crucible-lens-three"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-lens-three"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["planet-crucible-lens-four"].prerequisites = {"planet-crucible-laser"}
data.raw["technology"]["planet-crucible-lens-four"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-lens-four"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["planet-crucible-lens-five"].prerequisites = {"planet-crucible-laser"}
data.raw["technology"]["planet-crucible-lens-five"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-lens-five"].unit.count = utils.t4_spcost_bigtech

data.raw["technology"]["planet-crucible-personal-laser-mk2"].prerequisites = {"planet-crucible-laser"}
data.raw["technology"]["planet-crucible-personal-laser-mk2"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-personal-laser-mk2"].unit.count = utils.t4_spcost_bigtech

-- lithium-hydride moved to combo tech with Cerys

data.raw["technology"]["planet-crucible-hydrogen-metallization-productivity"].unit.ingredients = utils.t4_sp_crucible
data.raw["technology"]["planet-crucible-hydrogen-metallization-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t4_spcost_tech