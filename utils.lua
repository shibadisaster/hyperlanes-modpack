local utils = {}





utils.placeholder_sp = {
    {"promethium-science-pack", 1},
}


-- stupid
utils.tier_order = {
    [1] = "a",
    [2] = "b",
    [3] = "c",
    [4] = "d",
    [5] = "e",
    [6] = "f",
    [7] = "g",
    [8] = "h",
    [9] = "i",
    [10] = "j",
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
    ["battlefield-science-pack"] = "t04-b",
    ["planet-crucible-science-pack"] = "t04-c",
    ["interstellar-science-pack"] = "t04-d",
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
    ["carnal-science-pack"] = "t09-a",
    ["promethium-science-pack"] = "t09-b"
}

utils.science_colors = {
    ["automation-science-pack"] = {255, 63, 63},
    ["logistic-science-pack"] = {63, 255, 63},
    ["military-science-pack"] = {95, 95, 95},
    ["chemical-science-pack"] = {0, 230, 253},
    ["production-science-pack"] = {255, 29, 215},
    ["utility-science-pack"] = {255, 255, 23},
    ["space-science-pack"] = {207, 207, 207},
    ["metallurgic-science-pack"] = {255, 162, 12},
    ["agricultural-science-pack"] = {184, 221, 0},
    ["electromagnetic-science-pack"] = {255, 52, 120},
    ["battlefield-science-pack"] = {82, 60, 56},
    ["cerysian-science-pack"] = {0, 253, 171},
    ["planet-crucible-science-pack"] = {128, 64, 96},
    ["interstellar-science-pack"] = {150, 150, 150},
    ["planetaris-compression-science-pack"] = {208, 190, 115},
    ["biorecycling-science-pack"] = {182, 128, 61},
    ["rubia-biofusion-science-pack"] = {184, 168, 0},
    ["acidworking-science-pack"] = {154, 255, 48},
    ["planetaris-polishing-science-pack"] = {168, 177, 208},
    ["planetaris-refraction-science-pack"] = {255, 255, 255},
    ["cryogenic-science-pack"] = {95, 63, 255},
    ["hydraulic-science-pack"] = {0, 188, 225},
    ["gas-manipulation-science-pack"] = {210, 176, 255},
    ["planetaris-bioengineering-science-pack"] = {216, 229, 79},
    ["planetaris-pathological-science-pack"] = {227, 144, 57},
    ["galvanization-science-pack"] = {160, 35, 0},
    ["carnal-science-pack"] = {0, 255, 255},
    ["promethium-science-pack"] = {12, 4, 123}
}

utils.science_colors_hex= {
    ["automation-science-pack"] = "FF3F3F",
    ["logistic-science-pack"] = "3FFF3F",
    ["military-science-pack"] = "5F5F5F",
    ["chemical-science-pack"] = "00E6FF",
    ["production-science-pack"] = "FF1DD7",
    ["utility-science-pack"] = "FFFF17",
    ["space-science-pack"] = "CFCFCF",
    ["metallurgic-science-pack"] = "FFA20C",
    ["agricultural-science-pack"] = "B8DD00",
    ["electromagnetic-science-pack"] = "FF3478",
    ["battlefield-science-pack"] = "523C38",
    ["cerysian-science-pack"] = "00FDAB",
    ["planet-crucible-science-pack"] = "804060",
    ["interstellar-science-pack"] = "969696",
    ["planetaris-compression-science-pack"] = "D0BE73",
    ["biorecycling-science-pack"] = "B6803D",
    ["rubia-biofusion-science-pack"] = "B8A800",
    ["acidworking-science-pack"] = "9AFF30",
    ["planetaris-polishing-science-pack"] = "A8B1D0",
    ["planetaris-refraction-science-pack"] = "FFFFFF",
    ["cryogenic-science-pack"] = "5F3EFF",
    ["hydraulic-science-pack"] = "00BCE1",
    ["gas-manipulation-science-pack"] = "D2B0FF",
    ["planetaris-bioengineering-science-pack"] = "D8E54F",
    ["planetaris-pathological-science-pack"] = "E39039",
    ["galvanization-science-pack"] = "A02300",
    ["carnal-science-pack"] = "00FFFF",
    ["promethium-science-pack"] = "0C047B"
}

utils.science_data_names = {
    ["automation-science-pack"] = "automation",
    ["logistic-science-pack"] = "logistic",
    ["military-science-pack"] = "military",
    ["chemical-science-pack"] = "chemical",
    ["production-science-pack"] = "production",
    ["utility-science-pack"] = "utility",
    ["space-science-pack"] = "space",
    ["metallurgic-science-pack"] = "metallurgic",
    ["agricultural-science-pack"] = "agricultural",
    ["electromagnetic-science-pack"] = "electromagnetic",
    ["battlefield-science-pack"] = "battlefield",
    ["cerysian-science-pack"] = "radiation",
    ["planet-crucible-science-pack"] = "ABCDEFGHIJKLMNOPidk",
    ["interstellar-science-pack"] = "exploration",
    ["planetaris-compression-science-pack"] = "compression",
    ["biorecycling-science-pack"] = "biorecycling",
    ["rubia-biofusion-science-pack"] = "biofusion",
    ["acidworking-science-pack"] = "acidworking",
    ["planetaris-polishing-science-pack"] = "polishing",
    ["planetaris-refraction-science-pack"] = "refraction",
    ["cryogenic-science-pack"] = "cryogenic",
    ["hydraulic-science-pack"] = "hydraulic",
    ["gas-manipulation-science-pack"] = "gas_manipulation",
    ["planetaris-bioengineering-science-pack"] = "bioengineering",
    ["planetaris-pathological-science-pack"] = "pathological",
    ["galvanization-science-pack"] = "galvanization",
    ["carnal-science-pack"] = "ABCDEFGHIJKLMNOPidk2",
    ["promethium-science-pack"] = "interstellar"
}

utils.science_names = {
    ["automation-science-pack"] = "Automation",
    ["logistic-science-pack"] = "Logistic",
    ["military-science-pack"] = "Military",
    ["chemical-science-pack"] = "Chemical",
    ["production-science-pack"] = "Production",
    ["utility-science-pack"] = "Utility",
    ["space-science-pack"] = "Space",
    ["metallurgic-science-pack"] = "Metallurgic",
    ["agricultural-science-pack"] = "Agricultural",
    ["electromagnetic-science-pack"] = "Electromagnetic",
    ["battlefield-science-pack"] = "Battlefield",
    ["cerysian-science-pack"] = "Radiation",
    ["planet-crucible-science-pack"] = "ABCDEFGHIJKLMNOPIDK",
    ["interstellar-science-pack"] = "Exploration",
    ["planetaris-compression-science-pack"] = "Compression",
    ["biorecycling-science-pack"] = "Biorecycling",
    ["rubia-biofusion-science-pack"] = "Biofusion",
    ["acidworking-science-pack"] = "Acidworking",
    ["planetaris-polishing-science-pack"] = "Polishing",
    ["planetaris-refraction-science-pack"] = "Refraction",
    ["cryogenic-science-pack"] = "Cryogenic",
    ["hydraulic-science-pack"] = "Hydraulic",
    ["gas-manipulation-science-pack"] = "Gas manipulation",
    ["planetaris-bioengineering-science-pack"] = "Bioengineering",
    ["planetaris-pathological-science-pack"] = "Pathological",
    ["galvanization-science-pack"] = "Galvanization",
    ["carnal-science-pack"] = "ABCDEFGHIJKLMNOPIDK2",
    ["promethium-science-pack"] = "Interstellar"
}

utils.science_enlightenment_noun = {
    ["automation-science-pack"] = "automation",
    ["logistic-science-pack"] = "logistics",
    ["military-science-pack"] = "warfare",
    ["chemical-science-pack"] = "chemistry",
    ["production-science-pack"] = "production",
    ["utility-science-pack"] = "utility",
    ["space-science-pack"] = "space",
    ["metallurgic-science-pack"] = "metallurgy",
    ["agricultural-science-pack"] = "agriculture",
    ["electromagnetic-science-pack"] = "electromagnetics",
    ["battlefield-science-pack"] = "advanced warfare",
    ["cerysian-science-pack"] = "radioactivity",
    ["planet-crucible-science-pack"] = "ABCDEFGHIJKLMNOPidk",
    ["interstellar-science-pack"] = "astronomy",
    ["planetaris-compression-science-pack"] = "compression",
    ["biorecycling-science-pack"] = "biorecycling",
    ["rubia-biofusion-science-pack"] = "biofusion",
    ["acidworking-science-pack"] = "acidworking",
    ["planetaris-polishing-science-pack"] = "polishing",
    ["planetaris-refraction-science-pack"] = "refraction",
    ["cryogenic-science-pack"] = "cryogenics",
    ["hydraulic-science-pack"] = "hydraulics",
    ["gas-manipulation-science-pack"] = "gas manipulation",
    ["planetaris-bioengineering-science-pack"] = "bioengineering",
    ["planetaris-pathological-science-pack"] = "pathology",
    ["galvanization-science-pack"] = "galvanization",
    ["carnal-science-pack"] = "ABCDEFGHIJKLMNOPidk2",
    ["promethium-science-pack"] = "cosmology"
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
    "battlefield-science-pack",
    "planet-crucible-science-pack",
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
    "carnal-science-pack",
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
    "battlefield-science-pack",
    "planet-crucible-science-pack",
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
    "carnal-science-pack",
    "promethium-science-pack"
}

utils.planets = {
    "nauvis",
    "muluna",
    "fulgora",
    "gleba",
    "vulcanus",
    "castra",
    "cerys",
    "crucible",
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
    "carna",
    "panglia"
}

utils.planet_tier_associations = {
    ["nauvis"] = 1,
    ["muluna"] = 2,
    ["fulgora"] = 3,
    ["gleba"] = 3,
    ["vulcanus"] = 3,
    ["castra"] = 4,
    ["cerys"] = 4,
    ["crucible"] = 4,
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
    ["carna"] = 9,
    ["panglia"] = 10
}

utils.asteroids = {
    "metallic-asteroid-chunk",
    "carbonic-asteroid-chunk",
    "oxide-asteroid-chunk",
    "anorthite-chunk",
    "hyperlanes-fulgora-asteroid-chunk",
    "hyperlanes-gleba-asteroid-chunk",
    "hyperlanes-vulcanus-asteroid-chunk",
    "hyperlanes-castra-asteroid-chunk",
    "hyperlanes-cerys-asteroid-chunk",
    "hyperlanes-crucible-asteroid-chunk",
    "hyperlanes-arig-asteroid-chunk",
    "hyperlanes-muria-asteroid-chunk",
    "hyperlanes-rubia-asteroid-chunk",
    "bismuth-asteroid-chunk",
    "hyperlanes-moshine-asteroid-chunk",
    "hyperlanes-aquilo-asteroid-chunk",
    "hyperlanes-maraxsis-asteroid-chunk",
    "hyperlanes-paracelsin-asteroid-chunk",
    "hyperlanes-tellus-asteroid-chunk",
    "hyperlanes-vesta-asteroid-chunk",
    "hyperlanes-carna-asteroid-chunk",
    "promethium-asteroid-chunk",
    "hyperlanes-panglia-asteroid-chunk",
}

utils.asteroid_prefix = {
    ["metallic-asteroid-chunk"] = "Metallic",
    ["carbonic-asteroid-chunk"] = "Carbonic",
    ["oxide-asteroid-chunk"] = "Oxide",
    ["anorthite-chunk"] = "Anorthite",
    ["hyperlanes-fulgora-asteroid-chunk"] = "Holmic",
    ["hyperlanes-gleba-asteroid-chunk"] = "Organic",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "Volcanic",
    ["hyperlanes-castra-asteroid-chunk"] = "Castran???",
    ["hyperlanes-cerys-asteroid-chunk"] = "Radioactive",
    ["hyperlanes-crucible-asteroid-chunk"] = "Cruciblean???",
    ["hyperlanes-arig-asteroid-chunk"] = "Sandstone",
    ["hyperlanes-muria-asteroid-chunk"] = "Acidic",
    ["hyperlanes-rubia-asteroid-chunk"] = "Junk-laden",
    ["bismuth-asteroid-chunk"] = "Bismuth",
    ["hyperlanes-moshine-asteroid-chunk"] = "Neodymium",
    ["hyperlanes-aquilo-asteroid-chunk"] = "Icy",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "Saline",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "Deepfrozen",
    ["hyperlanes-tellus-asteroid-chunk"] = "Pathogenic",
    ["hyperlanes-vesta-asteroid-chunk"] = "Algae-laden",
    ["hyperlanes-carna-asteroid-chunk"] = "Carnan???",
    ["promethium-asteroid-chunk"] = "Promethium",
    ["hyperlanes-panglia-asteroid-chunk"] = "Timewarped",
}

utils.asteroid_prefix_lowercase = {
    ["metallic-asteroid-chunk"] = "metallic",
    ["carbonic-asteroid-chunk"] = "carbonic",
    ["oxide-asteroid-chunk"] = "oxide",
    ["anorthite-chunk"] = "anorthite",
    ["hyperlanes-fulgora-asteroid-chunk"] = "holmic",
    ["hyperlanes-gleba-asteroid-chunk"] = "organic",
    ["hyperlanes-vulcanus-asteroid-chunk"] = "volcanic",
    ["hyperlanes-castra-asteroid-chunk"] = "castran???",
    ["hyperlanes-cerys-asteroid-chunk"] = "radioactive",
    ["hyperlanes-crucible-asteroid-chunk"] = "cruciblean???",
    ["hyperlanes-arig-asteroid-chunk"] = "sandstone",
    ["hyperlanes-muria-asteroid-chunk"] = "acidic",
    ["hyperlanes-rubia-asteroid-chunk"] = "junk-laden",
    ["bismuth-asteroid-chunk"] = "bismuth",
    ["hyperlanes-moshine-asteroid-chunk"] = "neodymium",
    ["hyperlanes-aquilo-asteroid-chunk"] = "icy",
    ["hyperlanes-maraxsis-asteroid-chunk"] = "saline",
    ["hyperlanes-paracelsin-asteroid-chunk"] = "deepfrozen",
    ["hyperlanes-tellus-asteroid-chunk"] = "pathogenic",
    ["hyperlanes-vesta-asteroid-chunk"] = "algae-laden",
    ["hyperlanes-carna-asteroid-chunk"] = "carnan???",
    ["promethium-asteroid-chunk"] = "promethium",
    ["hyperlanes-panglia-asteroid-chunk"] = "timewarped",
}

utils.upcyclable_asteroids = {
    "metallic-asteroid-chunk",
    "carbonic-asteroid-chunk",
    "oxide-asteroid-chunk",
    "anorthite-chunk",
    "hyperlanes-fulgora-asteroid-chunk",
    "hyperlanes-gleba-asteroid-chunk",
    "hyperlanes-vulcanus-asteroid-chunk",
    "hyperlanes-castra-asteroid-chunk",
    "hyperlanes-cerys-asteroid-chunk",
    "hyperlanes-crucible-asteroid-chunk",
    "hyperlanes-arig-asteroid-chunk",
    "hyperlanes-muria-asteroid-chunk",
    "hyperlanes-rubia-asteroid-chunk",
    "bismuth-asteroid-chunk",
    "hyperlanes-moshine-asteroid-chunk",
    "hyperlanes-aquilo-asteroid-chunk",
    "hyperlanes-maraxsis-asteroid-chunk",
    "hyperlanes-paracelsin-asteroid-chunk",
    "hyperlanes-tellus-asteroid-chunk",
    "hyperlanes-vesta-asteroid-chunk",
    "hyperlanes-carna-asteroid-chunk",
    "hyperlanes-panglia-asteroid-chunk",
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

utils.t4_sp_castra = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_castra, {"battlefield-science-pack", 1})

utils.t4_sp_crucible = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_crucible, {"planet-crucible-science-pack", 1})

utils.t4_sp_castra_cerys = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_castra_cerys, {"battlefield-science-pack", 1})

utils.t4_sp_castra_crucible = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_castra_crucible, {"battlefield-science-pack", 1})
table.insert(utils.t4_sp_castra_crucible, {"planet-crucible-science-pack", 1})

utils.t4_sp_cerys_crucible = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_cerys_crucible, {"planet-crucible-science-pack", 1})

utils.t4_sp_premuluna = table.deepcopy(utils.t4_sp)
table.insert(utils.t4_sp_premuluna, {"battlefield-science-pack", 1})
table.insert(utils.t4_sp_premuluna, {"planet-crucible-science-pack", 1})



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
    {"battlefield-science-pack", 1},
    {"planet-crucible-science-pack", 1},
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
utils.launch_category_names = {
    ["assembling"] = "Assembling",
    ["mining"] = "Mining",
    ["extraction"] = "Extraction",
    ["crushing"] = "Crushing",
    ["smelting"] = "Smelting",
    ["research"] = "Research",
    ["recycling"] = "Recycling",
    ["materials"] = "Materials",
    ["chemistry"] = "Chemistry",
    ["magnetics"] = "Magnetics",
    ["cultivation"] = "Cultivation",
    ["radioactivity"] = "Radioactive",
    ["personal"] = "Personal"
}
utils.resources_to_launch_icons = {
    ["assembling"] = "__base__/graphics/icons/inserter.png",
    ["mining"] = "__base__/graphics/icons/copper-ore.png",
    ["extraction"] = "__base__/graphics/icons/fluid/crude-oil.png",
    ["crushing"] = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
    ["smelting"] = "__base__/graphics/icons/stone-brick.png",
    ["research"] = "__base__/graphics/icons/automation-science-pack.png",
    ["recycling"] = "__space-age__/graphics/icons/scrap.png",
    ["materials"] = "__space-age__/graphics/icons/carbon.png",
    ["chemistry"] = "__base__/graphics/icons/solid-fuel.png",
    ["magnetics"] = "__base__/graphics/icons/iron-plate.png",
    ["cultivation"] = "__base__/graphics/icons/wood.png",
    ["radioactivity"] = "__base__/graphics/icons/uranium-238.png",
    ["personal"] = "__base__/graphics/icons/fish.png"
}
utils.resource_base_cost = {
    ["assembling"] = 10000,
    ["mining"] = 70000,
    ["extraction"] = 5000,
    ["crushing"] = 20000,
    ["smelting"] = 30000,
    ["research"] = 10000,
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
        "planetaris-bioassembler",
        "algite-assembler",
        "feron-assembler"
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
        "oil-refinery",
        "molybdenum-miner",
        "molybdenum-airpump",
        "feron-airpump"
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
        "combustion-furnace",
        "planet-crucible-kiln"
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
        "planetaris-refraction-plant",
        "planet-crucible-pressure-forge",
        "molybdenum-seiver",
        "algite-knowledge-chamber"
    },
    ["chemistry"] = {
        "chemical-plant",
        "acidworking-plant",
        "cryogenic-plant",
        "electrochemical-plant",
        "heating-conductor"
    },
    ["magnetics"] = {
        "electromagnetic-plant",
        "vesta-electrolyzer",
        "supermagnet"
    },
    ["cultivation"] = {
        "biochamber",
        "feron-biochamber",
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
    {"battlefield-science-pack", 1},
    {"planet-crucible-science-pack", 1},
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
    "battlefield",
    "cerysian",
    "planet-crucible",
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
    "carnal",
    "promethium",
}

utils.data_analysis_sciences_technology_associations = {
    ["automation"]                  = "automation-science-pack",
    ["logistic"]                    = "logistic-science-pack",
    ["military"]                    = "military-science-pack",
    ["chemical"]                    = "chemical-science-pack",
    ["space"]                       = "space-science-pack",
    ["production"]                  = "production-science-pack",
    ["utility"]                     = "utility-science-pack",
    ["electromagnetic"]             = "electromagnetic-science-pack",
    ["agricultural"]                = "agricultural-science-pack",
    ["metallurgic"]                 = "metallurgic-science-pack",
    ["battlefield"]                 = "battlefield-science-pack",
    ["cerysian"]                    = "cerysian-science-pack",
    ["planet-crucible"]             = "planet-crucible-science-pack",
    ["interstellar"]                = "interstellar-science-pack",
    ["planetaris-compression"]      = "planetaris-compression-science",
    ["acidworking"]                 = "acidworking-science-pack",
    ["biorecycling"]                = "craptonite-processing",
    ["rubia-biofusion"]             = "rubia-biofusion-science-pack",
    ["planetaris-polishing"]        = "planetaris-polishing-science-pack",
    ["planetaris-refraction"]       = "planetaris-refraction-science-pack",
    ["cryogenic"]                   = "cryogenic-science-pack",
    ["hydraulic"]                   = "hydraulic-science-pack",
    ["galvanization"]               = "galvanization-science-pack",
    ["planetaris-bioengineering"]   = "planetaris-bioengineering-science-pack",
    ["planetaris-pathological"]     = "planetaris-pathological-science-pack",
    ["gas-manipulation"]            = "s1_gas_manipulation_science_pack",
    ["carnal"]                      = "carnal-science-pack",
    ["promethium"]                  = "promethium-science-pack",
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
    {"battlefield-science-pack", 1},
    {"planet-crucible-science-pack", 1},
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
    {"battlefield-science-pack", 1},
    {"planet-crucible-science-pack", 1},
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
    {"battlefield-science-pack", 1},
    {"planet-crucible-science-pack", 1},
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

utils.t9_sp_carna = table.deepcopy(utils.t9_sp)
table.insert(utils.t9_sp_carna, {"carnal-science-pack", 1})


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
    {"battlefield-science-pack", 1},
    {"planet-crucible-science-pack", 1},
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
    {"carnal-science-pack", 1},
    {"promethium-science-pack", 1}
}
utils.t10_sp = t10_sp
utils.t10_spcost_epp = 500000
utils.t10_spcost_planet = 50000
utils.t10_spcost_tech = 15000
utils.t10_spcost_bigtech = utils.t10_spcost_tech * 2
utils.t10_spcost_smalltech = utils.t10_spcost_tech / 2







return utils