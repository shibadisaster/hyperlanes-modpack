local utils = {}





utils.placeholder_sp = {
    {"promethium-science-pack", 1},
}


-- Science order
utils.science_order = {
    ["automation-science-pack"] = "t01-a",
    ["logistic-science-pack"] = "t01-b",
    ["military-science-pack"] = "t01-c",
    ["chemical-science-pack"] = "t01-d",
    ["production-science-pack"] = "t02-b",
    ["utility-science-pack"] = "t02-c",
    ["space-science-pack"] = "t02-a",
    ["metallurgic-science-pack"] = "t03-a",
    ["agricultural-science-pack"] = "t03-b",
    ["electromagnetic-science-pack"] = "t03-c",
    ["cerysian-science-pack"] = "t04-a",
    ["interstellar-science-pack"] = "t04-b",
    ["planetaris-compression-science-pack"] = "t05-a",
    ["biorecycling-science-pack"] = "t05-b",
    ["rubia-biofusion-science-pack"] = "t05-c",
    ["acidworking-science-pack"] = "t05-d",
    ["planetaris-polishing-science-pack"] = "t06-a",
    ["planetaris-refraction-science-pack"] = "t06-b",
    ["cryogenic-science-pack"] = "t07-a",
    ["hydraulic-science-pack"] = "t07-b",
    ["gas-manipulation-science-pack"] = "t08-a",
    ["planetaris-bioengineering-science-pack"] = "t08-b",
    ["planetaris-pathological-science-pack"] = "t08-c",
    ["galvanization-science-pack"] = "t08-d",
    ["promethium-science-pack"] = "t09-a"
}

utils.progression_sciences = {
    "automation-science-pack",
    "logistic-science-pack",
    "military-science-pack",
    "chemical-science-pack",
    "production-science-pack",
    "utility-science-pack",
    "space-science-pack",
    "metallurgic-science-pack",
    "agricultural-science-pack",
    "electromagnetic-science-pack",
    "interstellar-science-pack",
    "planetaris-compression-science-pack",
    "biorecycling-science-pack",
    "acidworking-science-pack",
    "planetaris-polishing-science-pack",
    "planetaris-refraction-science-pack",
    "cryogenic-science-pack",
    "hydraulic-science-pack",
    "gas-manipulation-science-pack",
    "planetaris-bioengineering-science-pack",
    "planetaris-pathological-science-pack",
    "galvanization-science-pack",
    "promethium-science-pack"
}

utils.all_sciences = {
    "automation-science-pack",
    "logistic-science-pack",
    "military-science-pack",
    "chemical-science-pack",
    "production-science-pack",
    "utility-science-pack",
    "space-science-pack",
    "metallurgic-science-pack",
    "agricultural-science-pack",
    "electromagnetic-science-pack",
    "cerysian-science-pack",
    "interstellar-science-pack",
    "planetaris-compression-science-pack",
    "biorecycling-science-pack",
    "rubia-biofusion-science-pack",
    "acidworking-science-pack",
    "planetaris-polishing-science-pack",
    "planetaris-refraction-science-pack",
    "cryogenic-science-pack",
    "hydraulic-science-pack",
    "gas-manipulation-science-pack",
    "planetaris-bioengineering-science-pack",
    "planetaris-pathological-science-pack",
    "galvanization-science-pack",
    "promethium-science-pack"
}

utils.planets = {
    "nauvis",
    "muluna",
    "fulgora",
    "gleba",
    "vulcanus",
    "cerys",
    "arig",
    "muria",
    "rubia",
    "hyarion",
    "moshine",
    "aquilo",
    "maraxsis",
    "paracelsin",
    "tellus",
    "vesta",
    "panglia"
}

utils.planet_tier_associations = {
    ["nauvis"] = 1,
    ["muluna"] = 2,
    ["fulgora"] = 3,
    ["gleba"] = 3,
    ["vulcanus"] = 3,
    ["cerys"] = 4,
    ["arig"] = 5,
    ["muria"] = 5,
    ["rubia"] = 5,
    ["hyarion"] = 6,
    ["moshine"] = 6,
    ["aquilo"] = 7,
    ["maraxsis"] = 7,
    ["paracelsin"] = 8,
    ["tellus"] = 8,
    ["vesta"] = 8,
    ["panglia"] = 10
}

utils.planet_tier_orders = {
    ["nauvis"] = "a",
    ["muluna"] = "b",
    ["fulgora"] = "c",
    ["gleba"] = "c",
    ["vulcanus"] = "c",
    ["cerys"] = "d",
    ["arig"] = "e",
    ["muria"] = "e",
    ["rubia"] = "e",
    ["hyarion"] = "f",
    ["moshine"] = "f",
    ["aquilo"] = "g",
    ["maraxsis"] = "g",
    ["paracelsin"] = "h",
    ["tellus"] = "h",
    ["vesta"] = "h",
    ["panglia"] = "j"
}






-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗  ╒══╗ 
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ ╒╛  ║ 
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ └┐  ║ 
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║  │  ║ 
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║  │  ║ 
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║  │  ║ 
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ ╒╛  ╚╗
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └────╜


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ │ ╓────┐  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ └─╜  ╒═╛ ╓╜
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║    ╒═╛ ╓─╜ 
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║  ╒═╛ ╓─╜   
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║ ╒╛ ╓─╜     
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ │  ╚══════╗
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └─────────╜


local t2_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1}
}
utils.t2_sp = t2_sp
utils.t2_spcost_epp = 2000
utils.t2_spcost_planet = 1000
utils.t2_spcost_tech = 500
utils.t2_spcost_bigtech = utils.t2_spcost_tech * 2
utils.t2_spcost_smalltech = utils.t2_spcost_tech / 2

utils.t2_sp_muluna = table.deepcopy(utils.t2_sp)
table.insert(utils.t2_sp_muluna, {"space-science-pack", 1})

utils.t2_sp_muluna_mil = table.deepcopy(utils.t2_sp_muluna)
table.insert(utils.t2_sp_muluna_mil, {"military-science-pack", 1})

utils.t2_sp_muluna_prod = table.deepcopy(utils.t2_sp_muluna)
table.insert(utils.t2_sp_muluna_prod, {"production-science-pack", 1})

utils.t2_sp_muluna_util = table.deepcopy(utils.t2_sp_muluna)
table.insert(utils.t2_sp_muluna_util, {"utility-science-pack", 1})


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ └──────┐  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║        │  ║
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║   ╒════╛  ║
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║   └────┐  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║        │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ ╒══════╛  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └─────────╜


local t3_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
}
utils.t3_sp = t3_sp
utils.t3_spcost_epp = 5000
utils.t3_spcost_planet = 2000
utils.t3_spcost_tech = 1000
utils.t3_spcost_bigtech = utils.t3_spcost_tech * 2
utils.t3_spcost_smalltech = utils.t3_spcost_tech / 2

utils.t3_sp_fulgora = table.deepcopy(utils.t3_sp)
table.insert(utils.t3_sp_fulgora, {"electromagnetic-science-pack", 1})

utils.t3_sp_gleba = table.deepcopy(utils.t3_sp)
table.insert(utils.t3_sp_gleba, {"agricultural-science-pack", 1})

utils.t3_sp_vulcanus = table.deepcopy(utils.t3_sp)
table.insert(utils.t3_sp_vulcanus, {"metallurgic-science-pack", 1})

utils.t3_sp_prod_fulgora = table.deepcopy(utils.t2_sp)
table.insert(utils.t3_sp_prod_fulgora, {"production-science-pack", 1})
table.insert(utils.t3_sp_prod_fulgora, {"electromagnetic-science-pack", 1})

utils.t3_sp_prod_gleba = table.deepcopy(utils.t2_sp)
table.insert(utils.t3_sp_prod_gleba, {"production-science-pack", 1})
table.insert(utils.t3_sp_prod_gleba, {"agricultural-science-pack", 1})

utils.t3_sp_prod_vulcanus = table.deepcopy(utils.t2_sp)
table.insert(utils.t3_sp_prod_vulcanus, {"production-science-pack", 1})
table.insert(utils.t3_sp_prod_vulcanus, {"metallurgic-science-pack", 1})

utils.t3_sp_fulgora_vulcanus = table.deepcopy(utils.t3_sp)
table.insert(utils.t3_sp_fulgora_vulcanus, {"electromagnetic-science-pack", 1})
table.insert(utils.t3_sp_fulgora_vulcanus, {"metallurgic-science-pack", 1})

utils.t3_sp_fulgora_gleba = table.deepcopy(utils.t3_sp)
table.insert(utils.t3_sp_fulgora_gleba, {"electromagnetic-science-pack", 1})
table.insert(utils.t3_sp_fulgora_gleba, {"agricultural-science-pack", 1})

utils.t3_sp_gleba_vulcanus = table.deepcopy(utils.t3_sp)
table.insert(utils.t3_sp_gleba_vulcanus, {"agricultural-science-pack", 1})
table.insert(utils.t3_sp_gleba_vulcanus, {"metallurgic-science-pack", 1})


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒══╗   ╒══╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ │  ║   │  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ │  ║   │  ║
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║ │  ╚═══╛  ║
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║ └──────┐  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║        │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║        │  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜        └──╜


local t4_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
}
utils.t4_sp = t4_sp
utils.t4_spcost_epp = 10000
utils.t4_spcost_planet = 3000
utils.t4_spcost_tech = 1500
utils.t4_spcost_bigtech = utils.t4_spcost_tech * 2
utils.t4_spcost_smalltech = utils.t4_spcost_tech / 2

utils.t4_sp_cerys = {
    {"cerysian-science-pack", 1},
    {"logistic-science-pack", 1},
    {"space-science-pack", 1},
}

utils.t4_sp_muluna = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_muluna, {"interstellar-science-pack", 1})



-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ │  ╓──────╜
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ │  ║       
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║ │  ╚══════╗
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║ └──────┐  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║        │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ ╒══════╛  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └─────────╜


local t5_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
    {"interstellar-science-pack", 1}
}
utils.t5_sp = t5_sp
utils.t5_spcost_epp = 15000
utils.t5_spcost_planet = 5000
utils.t5_spcost_tech = 2000
utils.t5_spcost_bigtech = utils.t5_spcost_tech * 2
utils.t5_spcost_smalltech = utils.t5_spcost_tech / 2

utils.t5_sp_arig = table.deepcopy(utils.t5_sp)
table.insert(utils.t5_sp_arig, {"planetaris-compression-science-pack", 1})

utils.t5_sp_muria = table.deepcopy(utils.t5_sp)
table.insert(utils.t5_sp_muria, {"acidworking-science-pack", 1})

utils.t5_sp_rubia = table.deepcopy(utils.t5_sp)
table.insert(utils.t5_sp_rubia, {"biorecycling-science-pack", 1})

utils.t5_sp_rubia_biofusion = table.deepcopy(utils.t5_sp_rubia)
table.insert(utils.t5_sp_rubia_biofusion, {"rubia-biofusion-science-pack", 1})

utils.t5_sp_arig_muria = table.deepcopy(utils.t5_sp)
table.insert(utils.t5_sp_arig_muria, {"planetaris-compression-science-pack", 1})
table.insert(utils.t5_sp_arig_muria, {"acidworking-science-pack", 1})

utils.t5_sp_arig_rubia = table.deepcopy(utils.t5_sp)
table.insert(utils.t5_sp_arig_rubia, {"planetaris-compression-science-pack", 1})
table.insert(utils.t5_sp_arig_rubia, {"biorecycling-science-pack", 1})

utils.t5_sp_muria_rubia = table.deepcopy(utils.t5_sp)
table.insert(utils.t5_sp_muria_rubia, {"acidworking-science-pack", 1})
table.insert(utils.t5_sp_muria_rubia, {"biorecycling-science-pack", 1})


-- Launching
utils.launch_categories = {
    "assembling",
    "mining",
    "extraction",
    "crushing",
    "smelting",
    "research",
    "recycling",
    "materials",
    "chemistry",
    "magnetics",
    "cultivation",
    "radioactivity",
    "personal"
}
utils.resources_to_launch = {
    ["assembling"] = "inserter",
    ["mining"] = "copper-ore",
    ["extraction"] = "crude-oil-barrel",
    ["crushing"] = "metallic-asteroid-chunk",
    ["smelting"] = "stone-brick",
    ["research"] = "automation-science-pack",
    ["recycling"] = "scrap",
    ["materials"] = "carbon",
    ["chemistry"] = "solid-fuel",
    ["magnetics"] = "iron-plate",
    ["cultivation"] = "wood",
    ["radioactivity"] = "uranium-238",
    ["personal"] = "raw-fish"
}
utils.resource_base_cost = {
    ["assembling"] = 10000,
    ["mining"] = 70000,
    ["extraction"] = 50000,
    ["crushing"] = 20000,
    ["smelting"] = 30000,
    ["research"] = 3000,
    ["recycling"] = 30000,
    ["materials"] = 20000,
    ["chemistry"] = 10000,
    ["magnetics"] = 50000,
    ["cultivation"] = 5000,
    ["radioactivity"] = 5000,
    ["personal"] = 2000
}
utils.level_scaling = 3
utils.launch_building_associations = {
    ["assembling"] = {
        "assembling-machine-1",
        "assembling-machine-2",
        "assembling-machine-3",
        "planetaris-assembling-machine-4",
        "planetaris-space-manufacturer",
        "maraxsis-hydro-plant",
        "mechanical-plant",
        "planetaris-bioassembler"
    },
    ["mining"] = {
        "burner-mining-drill",
        "electric-mining-drill",
        "big-mining-drill",
        "hyarion-geode-mining-drill"
    },
    ["extraction"] = {
        "pumpjack",
        "pressure-turbine",
        "oil-refinery"
    },
    ["crushing"] = {
        "muluna-steam-crusher",
        "crusher",
        "crusher-2",
        "panglia_crusher"
    },
    ["smelting"] = {
        "stone-furnace",
        "steel-furnace",
        "electric-furnace",
        "foundry",
        "smelting-plant",
        "vesta-combustion-furnace"
    },
    ["research"] = {
        "lab",
        "biolab",
        "cerys-lab",
        "neural_computer",
    },
    ["recycling"] = {
        "recycler",
        "biorecycling-plant"
    },
    ["materials"] = {
        "planetaris-press",
        "planetaris-sifter",
        "planetaris-polisher",
        "planetaris-particle-manipulator",
        "planetaris-refraction-plant"
    },
    ["chemistry"] = {
        "chemical-plant",
        "acidworking-plant",
        "cryogenic-plant",
        "electrochemical-plant",
        "vesta-heater"
    },
    ["magnetics"] = {
        "electromagnetic-plant",
        "vesta-electrolyzer",
        "supermagnet"
    },
    ["cultivation"] = {
        "biochamber",
        "biovat",
        "planetaris-incubator"
    },
    ["radioactivity"] = {
        "centrifuge",
        "cerys-fulgoran-cryogenic-plant",
        "cerys-fulgoran-crusher"
    },
    ["personal"] = {}
}
utils.launch_effect_icons = {
    ["assembling"] = "__base__/graphics/icons/assembling-machine-3.png",
    ["mining"] = "__space-age__/graphics/icons/big-mining-drill.png",
    ["extraction"] = "__base__/graphics/icons/pumpjack.png",
    ["crushing"] = "__space-age__/graphics/icons/crusher.png",
    ["smelting"] = "__base__/graphics/icons/electric-furnace.png",
    ["research"] = "__base__/graphics/icons/lab.png",
    ["recycling"] = "__recycler__/graphics/icons/recycler.png",
    ["materials"] = "__planetaris-arig__/graphics/icons/press.png",
    ["chemistry"] = "__base__/graphics/icons/chemical-plant.png",
    ["magnetics"] = "__space-age__/graphics/icons/electromagnetic-plant.png",
    ["cultivation"] = "__space-age__/graphics/icons/biochamber.png",
    ["radioactivity"] = "__base__/graphics/icons/centrifuge.png",
    ["personal"] = "__space-age__/graphics/icons/mech-armor.png"
}


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ │  ╓──────╜
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ │  ║       
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║ │  ╚══════╗
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║ │  ╓───┐  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║ │  ║   │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ │  ╚═══╛  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └─────────╜


local t6_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
    {"interstellar-science-pack", 1},
    {"planetaris-compression-science-pack", 1},
    {"biorecycling-science-pack", 1},
    {"acidworking-science-pack", 1}
}
utils.t6_sp = t6_sp
utils.t6_spcost_epp = 30000
utils.t6_spcost_planet = 10000
utils.t6_spcost_tech = 3500
utils.t6_spcost_bigtech = utils.t6_spcost_tech * 2
utils.t6_spcost_smalltech = utils.t6_spcost_tech / 2


utils.t6_sp_hyarion = table.deepcopy(utils.t6_sp)
table.insert(utils.t6_sp_hyarion, {"planetaris-polishing-science-pack", 1})

utils.t6_sp_hyarion_refraction = table.deepcopy(utils.t6_sp_hyarion)
table.insert(utils.t6_sp_hyarion_refraction, {"planetaris-refraction-science-pack", 1})

utils.data_analysis_sciences = {
    "automation",
    "logistic",
    "military",
    "chemical",
    "space",
    "production",
    "utility",
    "electromagnetic",
    "agricultural",
    "metallurgic",
    "cerysian",
    "interstellar",
    "planetaris-compression",
    "acidworking",
    "biorecycling",
    "rubia-biofusion",
    "planetaris-polishing",
    "planetaris-refraction",
    "cryogenic",
    "hydraulic",
    "galvanization",
    "planetaris-bioengineering",
    "planetaris-pathological",
    "gas-manipulation",
    "promethium",
}


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ └──────┐  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║       ╒╛  ║
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║      ╒╛  ╓╜
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║     ╒╛  ╓╜ 
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║     │  ╓╜  
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║     │  ║   
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜     └──╜   


local t7_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
    {"interstellar-science-pack", 1},
    {"planetaris-compression-science-pack", 1},
    {"biorecycling-science-pack", 1},
    {"acidworking-science-pack", 1},
    {"planetaris-polishing-science-pack", 1},
    {"planetaris-refraction-science-pack", 1}
}
utils.t7_sp = t7_sp
utils.t7_spcost_epp = 60000
utils.t7_spcost_planet = 15000
utils.t7_spcost_tech = 5000
utils.t7_spcost_bigtech = utils.t7_spcost_tech * 2
utils.t7_spcost_smalltech = utils.t7_spcost_tech / 2

utils.t7_sp_aquilo = table.deepcopy(utils.t7_sp)
table.insert(utils.t7_sp_aquilo, {"cryogenic-science-pack", 1})

utils.t7_sp_maraxsis = table.deepcopy(utils.t7_sp)
table.insert(utils.t7_sp_maraxsis, {"hydraulic-science-pack", 1})


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ │  ╓───┐  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ │  ║   │  ║
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║ │  ╚═══╛  ║
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║ │  ╓───┐  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║ │  ║   │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ │  ╚═══╛  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └─────────╜


local t8_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
    {"interstellar-science-pack", 1},
    {"planetaris-compression-science-pack", 1},
    {"biorecycling-science-pack", 1},
    {"acidworking-science-pack", 1},
    {"planetaris-polishing-science-pack", 1},
    {"planetaris-refraction-science-pack", 1},
    {"cryogenic-science-pack", 1},
    {"hydraulic-science-pack", 1}
}
utils.t8_sp = t8_sp
utils.t8_spcost_epp = 100000
utils.t8_spcost_planet = 25000
utils.t8_spcost_tech = 7500
utils.t8_spcost_bigtech = utils.t8_spcost_tech * 2
utils.t8_spcost_smalltech = utils.t8_spcost_tech / 2

utils.t8_sp_paracelsin = table.deepcopy(utils.t8_sp)
table.insert(utils.t8_sp_paracelsin, {"galvanization-science-pack", 1})

utils.t8_sp_tellus = table.deepcopy(utils.t8_sp)
table.insert(utils.t8_sp_tellus, {"planetaris-bioengineering-science-pack", 1})

utils.t8_sp_tellus_pathological = table.deepcopy(utils.t8_sp_tellus)
table.insert(utils.t8_sp_tellus_pathological, {"planetaris-pathological-science-pack", 1})

utils.t8_sp_vesta = table.deepcopy(utils.t8_sp)
table.insert(utils.t8_sp_vesta, {"gas-manipulation-science-pack", 1})

utils.t8_sp_paracelsin_tellus = table.deepcopy(utils.t8_sp)
table.insert(utils.t8_sp_paracelsin_tellus, {"galvanization-science-pack", 1})
table.insert(utils.t8_sp_paracelsin_tellus, {"planetaris-bioengineering-science-pack", 1})
table.insert(utils.t8_sp_paracelsin_tellus, {"planetaris-pathological-science-pack", 1})

utils.t8_sp_paracelsin_vesta = table.deepcopy(utils.t8_sp)
table.insert(utils.t8_sp_paracelsin_vesta, {"galvanization-science-pack", 1})
table.insert(utils.t8_sp_paracelsin_vesta, {"gas-manipulation-science-pack", 1})

utils.t8_sp_tellus_vesta = table.deepcopy(utils.t8_sp)
table.insert(utils.t8_sp_tellus_vesta, {"planetaris-bioengineering-science-pack", 1})
table.insert(utils.t8_sp_tellus_vesta, {"planetaris-pathological-science-pack", 1})
table.insert(utils.t8_sp_tellus_vesta, {"gas-manipulation-science-pack", 1})


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗      ╒═════════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      │  ╓───┐  ║ │  ╓───┐  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      │  ║   │  ║ │  ║   │  ║
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║      │  ║   │  ║ │  ╚═══╛  ║
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜      │  ║   │  ║ └──────┐  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗        │  ║   │  ║        │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      │  ╚═══╛  ║ ╒══════╛  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └─────────╜ └─────────╜


local t9_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
    {"interstellar-science-pack", 1},
    {"planetaris-compression-science-pack", 1},
    {"biorecycling-science-pack", 1},
    {"acidworking-science-pack", 1},
    {"planetaris-polishing-science-pack", 1},
    {"planetaris-refraction-science-pack", 1},
    {"cryogenic-science-pack", 1},
    {"hydraulic-science-pack", 1},
    {"gas-manipulation-science-pack", 1},
    {"planetaris-bioengineering-science-pack", 1},
    {"planetaris-pathological-science-pack", 1},
    {"galvanization-science-pack", 1},
}
utils.t9_sp = t9_sp
utils.t9_spcost_epp = 200000
utils.t9_spcost_planet = 30000
utils.t9_spcost_tech = 10000
utils.t9_spcost_bigtech = utils.t9_spcost_tech * 2
utils.t9_spcost_smalltech = utils.t9_spcost_tech / 2


-- ╒══════════╗ ╒══════╗ ╒═════════╗ ╒══════════╗       ╒══╗  ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └─┐  ╓─╜ └┐  ╓───┐ ║ └┐  ╓───┐  ║      ╒╛  ║  │  ╓───┐  ║
-- └─╜ │  ║ └─╜   │  ║    │  ║   └─╜  │  ║   │  ║      └┐  ║  │  ║   │  ║
--     │  ║       │  ║    │  ╚══╗     │  ╚═══╛  ║       │  ║  │  ║   │  ║
--     │  ║       │  ║    │  ╓──╜     │  ╓┐  ╓──╜       │  ║  │  ║   │  ║
--     │  ║       │  ║    │  ║   ╒═╗  │  ║└┐ ╚╗         │  ║  │  ║   │  ║
--    ╒╛  ╚╗    ╒═╛  ╚═╗ ╒╛  ╚═══╛ ║ ╒╛  ╚╗└┐ ╚═╗      ╒╛  ╚╗ │  ╚═══╛  ║
--    └────╜    └──────╜ └─────────╜ └────╜ └───╜      └────╜ └─────────╜


local t10_sp = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
    {"agricultural-science-pack", 1},
    {"electromagnetic-science-pack", 1},
    {"interstellar-science-pack", 1},
    {"planetaris-compression-science-pack", 1},
    {"biorecycling-science-pack", 1},
    {"acidworking-science-pack", 1},
    {"planetaris-polishing-science-pack", 1},
    {"planetaris-refraction-science-pack", 1},
    {"cryogenic-science-pack", 1},
    {"hydraulic-science-pack", 1},
    {"gas-manipulation-science-pack", 1},
    {"planetaris-bioengineering-science-pack", 1},
    {"planetaris-pathological-science-pack", 1},
    {"galvanization-science-pack", 1},
    {"promethium-science-pack", 1}
}
utils.t10_sp = t10_sp
utils.t10_spcost_epp = 500000
utils.t10_spcost_planet = 50000
utils.t10_spcost_tech = 15000
utils.t10_spcost_bigtech = utils.t10_spcost_tech * 2
utils.t10_spcost_smalltech = utils.t10_spcost_tech / 2







return utils