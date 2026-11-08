local utils = {}





utils.placeholder_sp = {
    {"promethium-science-pack", 1},
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