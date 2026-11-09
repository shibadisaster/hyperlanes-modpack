local utils = require("__hyperlanes-modpack__/utils")


-- Condensing agricultural tower recipe duplicate removal
table.remove(data.raw["technology"]["planetaris-agriculture"].effects, 1)


data.raw["technology"]["planetaris-tellus-rocket-silo"].essential = false


-- Bioassembler
data.raw["recipe"]["planetaris-bioassembler-seed"].ingredients = {
    {type = "item", name = "planetaris-assembling-machine-4", amount = 1, quality_min = "uncommon"},
    {type = "item", name = "biochamber", amount = 1, quality_min = "epic"},
    {type = "item", name = "ai-tier-10", amount = 1},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 20},
    {type = "item", name = "planetaris-crystalization-motor", amount = 20},
    {type = "item", name = "planetaris-root", amount = 50},
    {type = "item", name = "planetaris-chloroplast-seed", amount = 2},
    {type = "item", name = "planetaris-myceliae-seed", amount = 2},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 100},
}
data.raw["recipe"]["planetaris-bioassembler-seed"].categories = {"organic"}


-- Incubator
data.raw["recipe"]["planetaris-incubator"].ingredients = {
    {type = "item", name = "biochamber", amount = 1, quality_min = "epic"},
    {type = "item", name = "ai-tier-10", amount = 1},
    {type = "item", name = "quantum-processor", amount = 20},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 20},
    {type = "item", name = "anti-corrosion-cladding", amount = 20, quality_min = "legendary"},
    {type = "item", name = "planetaris-root", amount = 50},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 50},
}
data.raw["recipe"]["planetaris-incubator"].categories = {"organic"}


-- Roots
data.raw["recipe"]["planetaris-root"].ingredients = {
    {type = "item", name = "cellulose", amount = 10, quality_min = "legendary"},
    {type = "item", name = "planetaris-compost", amount = 20},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 5},
    {type = "item", name = "anti-corrosion-cladding", amount = 2, quality_min = "legendary"},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 5},
}

data.raw["recipe"]["planetaris-root-filler"].ingredients = {
    {type = "item", name = "planetaris-root", amount = 2},
    {type = "item", name = "planetaris-crystalization-motor", amount = 1},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 3},
}

data.raw["recipe"]["planetaris-root-to-ground"].ingredients = {
    {type = "item", name = "planetaris-root", amount = 10},
    {type = "item", name = "cellulose", amount = 10, quality_min = "legendary"},
}

data.raw["recipe"]["planetaris-root-pump"].ingredients = {
    {type = "item", name = "planetaris-root", amount = 2},
    {type = "item", name = "planetaris-crystalization-motor", amount = 1},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 1},
}

data.raw["recipe"]["planetaris-root-storage-tank"].ingredients = {
    {type = "item", name = "planetaris-root", amount = 5},
    {type = "item", name = "cellulose", amount = 20, quality_min = "legendary"},
    {type = "item", name = "storage-tank", amount = 1, quality_min = "epic"},
}


-- Compost
table.insert(
    data.raw["recipe"]["planetaris-compost"].ingredients,
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 1}
)
table.insert(
    data.raw["recipe"]["planetaris-compost"].ingredients,
    {type = "fluid", name = "oxygen", amount = 5}
)


-- Air purifier
data.raw["recipe"]["planetaris-air-purifier"].ingredients = {
    {type = "item", name = "scrubber", amount = 1, quality_min = "epic"},
    {type = "item", name = "ai-tier-10", amount = 1},
    {type = "item", name = "quantum-processor", amount = 5},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 10},
    {type = "item", name = "anti-corrosion-cladding", amount = 10, quality_min = "legendary"},
    {type = "item", name = "planetaris-crystalization-motor", amount = 2},
}


-- Artificial soils
data.raw["recipe"]["planetaris-artificial-chlorophyll-soil"].ingredients = {
    {type = "item", name = "nutrients", amount = 5, quality_min = "uncommon"},
    {type = "item", name = "planetaris-chloroplast-seed", amount = 2},
    {type = "item", name = "artificial-yumako-soil", amount = 5},
    {type = "fluid", name = "planetaris-seed-compound", amount = 20},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 5},
}

data.raw["recipe"]["planetaris-artificial-mycelia-soil"].ingredients = {
    {type = "item", name = "nutrients", amount = 5, quality_min = "uncommon"},
    {type = "item", name = "planetaris-myceliae-seed", amount = 2},
    {type = "item", name = "artificial-jellynut-soil", amount = 5},
    {type = "fluid", name = "planetaris-seed-compound", amount = 20},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 5},
}


-- Overgrowth soils
data.raw["recipe"]["planetaris-overgrowth-chlorophyll-soil"].ingredients = {
    {type = "item", name = "nutrients", amount = 10, quality_min = "rare"},
    {type = "item", name = "planetaris-magnesium-dust", amount = 50},
    {type = "item", name = "planetaris-chloroplast-seed", amount = 5},
    {type = "item", name = "planetaris-wasp-egg", amount = 10},
    {type = "item", name = "overgrowth-yumako-soil", amount = 5},
    {type = "fluid", name = "planetaris-chlorophyll", amount = 100},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 10},
}

data.raw["recipe"]["planetaris-overgrowth-mycelia-soil"].ingredients = {
    {type = "item", name = "nutrients", amount = 10, quality_min = "rare"},
    {type = "item", name = "planetaris-magnesium-dust", amount = 50},
    {type = "item", name = "planetaris-myceliae-seed", amount = 5},
    {type = "item", name = "planetaris-wasp-egg", amount = 10},
    {type = "item", name = "overgrowth-jellynut-soil", amount = 5},
    {type = "fluid", name = "water", amount = 200},
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 10},
}


-- Chloroplast processing
table.insert(
    data.raw["recipe"]["planetaris-chloroplast-processing"].ingredients,
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 1}
)
table.insert(
    data.raw["recipe"]["planetaris-chloroplast-processing"].ingredients,
    {type = "fluid", name = "water", amount = 5}
)
data.raw["recipe"]["planetaris-chloroplast-processing"].categories = {"organic"}


-- Mycelia processing
table.insert(
    data.raw["recipe"]["planetaris-mycelia-processing"].ingredients,
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 1}
)
table.insert(
    data.raw["recipe"]["planetaris-mycelia-processing"].ingredients,
    {type = "fluid", name = "planetaris-chlorophyll", amount = 5}
)
data.raw["recipe"]["planetaris-mycelia-processing"].categories = {"organic"}


-- Artificial skin
table.insert(
    data.raw["recipe"]["planetaris-polimer-skin"].ingredients,
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 20}
)


-- Artificial heart
table.insert(
    data.raw["recipe"]["planetaris-artificial-heart"].ingredients,
    {type = "fluid", name = "hyperlanes-bioslurry", amount = 100}
)


-- Wasp egg
table.insert(
    data.raw["recipe"]["planetaris-wasp-egg"].ingredients,
    {type = "item", name = "pentapod-egg", amount = 1}
)


-- Robowasp rework
data.raw["logistic-robot"]["planetaris-logistic-robowasp"].max_payload_size = 1
data.raw["logistic-robot"]["planetaris-logistic-robowasp"].speed = 0.05 * 4.0

data.raw["recipe"]["planetaris-logistic-robowasp"].ingredients = {
    {type = "item", name = "lead-logistic-robot", amount = 1, quality_min = "rare"},
    {type = "item", name = "planetaris-artificial-heart", amount = 1},
    {type = "item", name = "planetaris-polimer-skin", amount = 1},
    {type = "item", name = "planetaris-magnesium-sheet", amount = 5},
}
data.raw["recipe"]["planetaris-logistic-robowasp"].categories = {"organic"}


-- Belt stack size productivity
data.raw["technology"]["tellus-transport-belt-capacity-3"].max_level = "infinite"
data.raw["technology"]["tellus-transport-belt-capacity-3"].upgrade = true


-- Bioassembler base productivity adjustment
data.raw["assembling-machine"]["planetaris-bioassembler"].effect_receiver = {
    base_effect = {
        productivity = 0.4,
        speed = -0.2
    }
}



-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-tellus"].unit.ingredients = utils.t8_sp
data.raw["technology"]["planet-discovery-tellus"].unit.count = utils.t8_spcost_planet

data.raw["technology"]["planetaris-overgrowth-soil"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-overgrowth-soil"].unit.count = utils.t8_spcost_bigtech

data.raw["technology"]["planetaris-pathogens"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-pathogens"].unit.count = utils.t8_spcost_smalltech

-- Let's retier these maybe?
data.raw["technology"]["planetaris-primary-dyes"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-primary-dyes"].unit.count = utils.t8_spcost_tech

data.raw["technology"]["planetaris-secondary-dyes"].unit.ingredients = utils.t8_sp_tellus_pathological
data.raw["technology"]["planetaris-secondary-dyes"].unit.count = utils.t8_spcost_tech

-- Transport belts unified to combo tech with Vesta

data.raw["technology"]["planetaris-artificial-organisms"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-artificial-organisms"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-advanced-pathological-research"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-advanced-pathological-research"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-fulgora-pathological-research"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-fulgora-pathological-research"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-vulcanus-pathological-research"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-vulcanus-pathological-research"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-gleba-pathological-research"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-gleba-pathological-research"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-hyarion-pathological-research"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-hyarion-pathological-research"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-arig-pathological-research"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-arig-pathological-research"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-parasite-nest"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-parasite-nest"].unit.count = utils.t8_spcost_smalltech

data.raw["technology"]["planetaris-pathological-science-pack"].unit.ingredients = utils.t8_sp_tellus
data.raw["technology"]["planetaris-pathological-science-pack"].unit.count = utils.t8_spcost_tech

data.raw["technology"]["planetaris-bioflux-productivity"].unit.ingredients = utils.t8_sp_tellus_pathological
data.raw["technology"]["planetaris-bioflux-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t8_spcost_tech

data.raw["technology"]["planetaris-enemy-egg-productivity"].unit.ingredients = utils.t8_sp_tellus_pathological
data.raw["technology"]["planetaris-enemy-egg-productivity"].unit.count_formula = "1.5^(L-1)*" .. utils.t8_spcost_tech

data.raw["technology"]["planetaris-robowasps"].unit.ingredients = utils.t8_sp_tellus_pathological
data.raw["technology"]["planetaris-robowasps"].unit.count = utils.t8_spcost_bigtech

-- Space preservation unit moved to combo tech with Paracelsin

data.raw["technology"]["planetaris-three-long-handed-inserter"].unit.ingredients = utils.t8_sp_tellus_pathological
data.raw["technology"]["planetaris-three-long-handed-inserter"].unit.count = utils.t8_spcost_bigtech

-- oh great the third one
data.raw["technology"]["planetaris-long-stack-inserter"].unit.ingredients = utils.t8_sp_tellus_pathological
data.raw["technology"]["planetaris-long-stack-inserter"].unit.count = utils.t8_spcost_bigtech