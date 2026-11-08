local utils = require("__hyperlanes-modpack__/utils")


-- Sand unification
data.raw["recipe"]["concrete-from-molten-iron-and-sand"].ingredients = {
    {type = "fluid", name = "planetaris-sand", amount = 60},
    {type = "fluid", name = "molten-iron", amount = 20},
    {type = "fluid", name = "water", amount = 100},
}

data.raw["recipe"]["petroleum-from-sand-sulfur-steam-carbon"].ingredients = {
    {type = "item", name = "sulfur", amount = 10},
    {type = "item", name = "coal", amount = 5},
    {type = "fluid", name = "planetaris-sand", amount = 80},
    {type = "fluid", name = "steam", amount = 50},
}


-- Tempered glass
data.raw["recipe"]["glass"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 3},
    {type = "item", name = "planetaris-raw-diamond", amount = 3},
    {type = "item", name = "silicon-carbide", amount = 5},
    {type = "item", name = "carbon-fiber", amount = 5},
    {type = "fluid", name = "hyperlanes-superacid", amount = 20},
}


-- Neodymium magnet
data.raw["recipe"]["magnet"].ingredients = {
    {type = "item", name = "neodymium", amount = 1},
    {type = "item", name = "hyperlanes-fulgora-magnet", amount = 2},
    {type = "fluid", name = "molten-iron", amount = 20},
    {type = "item", name = "hyperlanes-sealant", amount = 2},
}


-- Advanced data cable
data.raw["recipe"]["optical-cable"].ingredients = {
    {type = "item", name = "muluna-data-cable", amount = 2},
    {type = "item", name = "silicon-carbide", amount = 1},
    {type = "item", name = "glass", amount = 1},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}


-- Silicon (disable)
data.raw["recipe"]["silicon"].enabled = false
data.raw["recipe"]["silicon"].hidden = true

data.raw["technology"]["moshine-tech-silicon"].enabled = false
data.raw["technology"]["moshine-tech-silicon"].prerequisites = {}
data.raw["technology"]["moshine-tech-silicon"].hidden = true
data.raw["technology"]["moshine-tech-silicon-carbide"].enabled = false
data.raw["technology"]["moshine-tech-silicon-carbide"].hidden = true
data.raw["technology"]["moshine-tech-silicon-cell"].enabled = false
data.raw["technology"]["moshine-tech-silicon-cell"].hidden = true

-- Remove prerequisites
data.raw["technology"]["moshine-tech-cosmicscanner-construction1"].prerequisites = {"moshine-concrete-from-molten-iron-and-sand"}
data.raw["technology"]["minimalist-rails"].prerequisites = {"planet-discovery-moshine"}
data.raw["technology"]["moshine-tech-cosmicscanner-construction2"].prerequisites = {"moshine-tech-cosmicscanner-construction1", "moshine-tech-magnet"}
data.raw["technology"]["moshine-tech-datacell-empty"].prerequisites = {"moshine-tech-magnet"}
data.raw["technology"]["moshine-tech-data-processor-building"].prerequisites = {"moshine-tech-datacell-empty"}
data.raw["technology"]["sun_heat_cooler_2_tech"].prerequisites = {"cryogenic-science-pack", "sun_heat_cooler_1_tech"}


-- Sun heat cooler
-- data.raw["recipe"]["sun_heat_cooler_1"].ingredients = {
--     {type = "item", name = "neodymium", amount = 1},
--     {type = "item", name = "hyperlanes-fulgora-magnet", amount = 2},
--     {type = "fluid", name = "molten-iron", amount = 20},
--     {type = "item", name = "hyperlanes-sealant", amount = 2},
-- }


-- Empty datacell
data.raw["recipe"]["datacell-empty"].ingredients = {
    {type = "item", name = "magnet", amount = 1},
    {type = "item", name = "silicon-cell", amount = 1},
    {type = "item", name = "glass", amount = 1},
    {type = "item", name = "processing-unit", amount = 1}
}


-- Cosmic scanner
data.raw["recipe"]["moshine_cosmicscanner-construction-stage-1"].ingredients = {
    {type = "item", name = "refined-concrete", amount = 1200},
    {type = "item", name = "tungsten-plate", amount = 600},
    {type = "item", name = "low-density-space-platform-foundation", amount = 500},
    {type = "item", name = "radar", amount = 50},
    {type = "item", name = "silicon-carbide", amount = 500},
}

data.raw["recipe"]["moshine_cosmicscanner-construct-1"].ingredients = {
    {type = "item", name = "magnet", amount = 120},
    {type = "item", name = "silicon-carbide", amount = 100},
    {type = "item", name = "carbon-fiber", amount = 100},
    {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 10}
}

data.raw["recipe"]["moshine_cosmicscanner-construct-2"].ingredients = {
    {type = "item", name = "data-processor", amount = 1},
    {type = "item", name = "silicon-cell", amount = 200},
    {type = "item", name = "glass", amount = 50},
    {type = "item", name = "hyperlanes-advanced-material-microsuspension-barrel", amount = 10}
}

data.raw["recipe"]["moshine_cosmicscanner-construct-3"].ingredients = {
    {type = "item", name = "data-extractor", amount = 1},
    {type = "item", name = "tesla-turret", amount = 1},
    {type = "item", name = "planetaris-crystalization-motor", amount = 10},
    {type = "item", name = "quantum-processor", amount = 10}
}

data.raw["recipe"]["moshine_cosmicscanner-construct-4"].ingredients = {
    {type = "item", name = "biolab", amount = 1},
    {type = "item", name = "maraxsis-sonar", amount = 1},
    {type = "item", name = "ai-tier-8", amount = 1},
    {type = "item", name = "maraxsis-glass-panes", amount = 100},
    {type = "item", name = "hyperlanes-supercooled-magnet", amount = 10}
}


-- Data processor
data.raw["recipe"]["data-processor"].ingredients = {
    {type = "item", name = "biolab", amount = 1},
    {type = "item", name = "silicon-carbide", amount = 5},
    {type = "item", name = "productivity-module-3", amount = 5},
    {type = "item", name = "optical-cable", amount = 10},
    {type = "fluid", name = "hyperlanes-superacid", amount = 50},
}
data.raw["recipe"]["data-processor"].categories = {
    "crafting-with-fluid",
    -- "thinkingbrain"
}


-- Neural computer
data.raw["recipe"]["neural_computer"].ingredients = {
    {type = "item", name = "data-processor", amount = 1},
    {type = "item", name = "datacell-empty", amount = 100},
    {type = "item", name = "processing-unit", amount = 50},
    {type = "item", name = "silicon-carbide", amount = 40},
    {type = "item", name = "magnet", amount = 20},
}


-- Optical fiber storage tank
data.raw["recipe"]["opticalfiber-storage-tank"].ingredients = {
    {type = "item", name = "datacell-empty", amount = 100},
    {type = "item", name = "processing-unit", amount = 15},
    {type = "item", name = "optical-cable", amount = 5},
    {type = "fluid", name = "hyperlanes-superacid", amount = 50},
}
data.raw["recipe"]["opticalfiber-storage-tank"].categories = {
    "crafting-with-fluid",
    -- "thinkingbrain"
}


-- Data extractor
-- all good :)


-- 3D data storage
-- all good :)


-- Processing grid
-- all good :)


-- AI trainer
-- all good?


-- Webbed processor
data.raw["recipe"]["webbed_processor_tile"].ingredients = {
    {type = "item", name = "low-density-space-platform-foundation", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "optical-cable", amount = 1},
    {type = "item", name = "model-stable", amount = 1},
}


-- equation.data
data.raw["recipe"]["datacell-equation"].ingredients = {
    {type = "item", name = "datacell-empty", amount = 1},
    {type = "fluid", name = "muluna-astronomical-data", amount = 120},
}


-- out_signal.data
data.raw["recipe"]["cosmic-data-outsignal-creation"].ingredients = {
    {type = "item", name = "interstellar-science-pack", amount = 1},
    {type = "item", name = "biorecycling-science-pack", amount = 1},
    {type = "item", name = "acidworking-science-pack", amount = 1},
    {type = "item", name = "planetaris-compression-science-pack", amount = 1},
    {type = "fluid", name = "raw-data", amount = 15000},
    {type = "fluid", name = "solved-equation-data", amount = 1000},
}
data.raw["recipe"]["cosmic-data-outsignal-creation"].energy_required = 100.0
data.raw["recipe"]["cosmic-data-outsignal-creation"].results = {
    {type = "fluid", name = "cosmic-data-outsignal", amount = 200},
}


-- get it out of my sight
data.raw["technology"]["sun_heat_cooler_1_tech"].essential = false
data.raw["technology"]["sun_heat_cooler_2_tech"].essential = false
data.raw["technology"]["moshine-tech-ai-tier-8"].essential = true
data.raw["technology"]["moshine-tech-ai-tier-10"].essential = true






-- ╒══════════╗  ╒════════╗  ╒══════════╗ ╒══════════╗      ╒═════════╗
-- └┐  ╓───┐  ║  │  ╓──┐  ║  └┐  ╓───┐  ║ │ ╓─┐  ╓─┐ ║      │ ╓────┐  ║
--  │  ║   │  ║  │  ║  │  ║   │  ║   │  ║ └─╜ │  ║ └─╜      └─╜  ╒═╛ ╓╜
--  │  ╚═══╛  ║  │  ╚══╛  ║   │  ╚═══╛  ║     │  ║             ╒═╛ ╓─╜ 
--  │  ╓──────╜  │  ╓──┐  ║   │  ╓┐  ╓──╜     │  ║           ╒═╛ ╓─╜   
--  │  ║         │  ║  │  ║   │  ║└┐ ╚╗       │  ║          ╒╛ ╓─╜     
-- ╒╛  ╚╗       ╒╛  ╚╗╒╛  ╚╗ ╒╛  ╚╗└┐ ╚═╗    ╒╛  ╚╗         │  ╚══════╗
-- └────╜       └────╜└────╜ └────╜ └───╜    └────╜         └─────────╜
table.insert(data.raw["technology"]["moshine-tech-cosmicscanner-construction4"].prerequisites, "cryogenic-science-pack")
table.insert(data.raw["technology"]["moshine-tech-cosmicscanner-construction4"].prerequisites, "maraxsis-project-seadragon")

data.raw["recipe"]["ai-tier-9"].ingredients = {
    {type = "item", name = "hyperlanes-ai-tier-8-primed", amount = 1},
}

data.raw["recipe"]["ai-tier-10"].ingredients = {
    {type = "item", name = "hyperlanes-ai-tier-9-primed", amount = 1},
}


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-moshine"].unit.ingredients = utils.t6_sp
data.raw["technology"]["planet-discovery-moshine"].unit.count = utils.t6_spcost_planet

data.raw["technology"]["minimalist-rails"].unit.ingredients = utils.t6_sp
data.raw["technology"]["minimalist-rails"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["minimalist-elevated-rails"].unit.ingredients = utils.t6_sp
data.raw["technology"]["minimalist-elevated-rails"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["moshine-tech-glass"].unit.ingredients = utils.t6_sp
data.raw["technology"]["moshine-tech-glass"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["moshine-petroleum-from-sand-sulfur-steam-carbon"].unit.ingredients = utils.t6_sp
data.raw["technology"]["moshine-petroleum-from-sand-sulfur-steam-carbon"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["moshine-concrete-from-molten-iron-and-sand"].unit.ingredients = utils.t6_sp
data.raw["technology"]["moshine-concrete-from-molten-iron-and-sand"].unit.count = utils.t6_spcost_tech

data.raw["technology"]["sun_heat_cooler_1_tech"].unit.ingredients = utils.t6_sp
data.raw["technology"]["sun_heat_cooler_1_tech"].unit.count = utils.t6_spcost_smalltech

data.raw["technology"]["tech-space-trains"].unit.ingredients = utils.t6_sp
data.raw["technology"]["tech-space-trains"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["moshine-tech-cosmicscanner-construction1"].unit.ingredients = utils.t6_sp
data.raw["technology"]["moshine-tech-cosmicscanner-construction1"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["moshine-tech-cosmicscanner-construction2"].unit.ingredients = utils.t6_sp
data.raw["technology"]["moshine-tech-cosmicscanner-construction2"].unit.count = utils.t6_spcost_bigtech

data.raw["technology"]["moshine-tech-data-processor-building"].unit.ingredients = utils.t6_sp
data.raw["technology"]["moshine-tech-data-processor-building"].unit.count = utils.t6_spcost_smalltech
 
-- move sun_heat_cooler_2_tech


-- ╒═════════╗ ╒═════════╗  ╒════════════╗  ╒═════════╗  ╒═════════╗ ╒═════════╗
-- │  ╓────┐ ║ │  ╓───┐  ║  │  ╓─┐  ╓─┐  ║  └┐  ╓───┐ ╚╗ │  ╓───┐  ║ │  ╓────┐ ║
-- │  ║    └─╜ │  ║   │  ║  │  ║ │  ║ │  ║   │  ║   │  ║ │  ║   │  ║ │  ║    └─╜
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╚═══╛  ║ │  ║   │  ║ │  ╚══════╗
-- │  ║        │  ║   │  ║  │  ║ │  ║ │  ║   │  ╓───┐  ║ │  ║   │  ║ └──────┐  ║
-- │  ║    ╒═╗ │  ║   │  ║  │  ║ └──╜ │  ║   │  ║   │  ║ │  ║   │  ║ ╒═╗    │  ║
-- │  ╚════╛ ║ │  ╚═══╛  ║ ╒╛  ╚╗    ╒╛  ╚╗ ╒╛  ╚═══╛ ╓╜ │  ╚═══╛  ║ │ ╚════╛  ║
-- └─────────╜ └─────────╜ └────╜    └────╜ └─────────╜  └─────────╜ └─────────╜

-- Hyper belts
-- refer to data-final-fixes