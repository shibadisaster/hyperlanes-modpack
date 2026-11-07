local utils = {}


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


local t3_sp_fulgora = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"electromagnetic-science-pack", 1},
}
utils.t3_sp_fulgora = t3_sp_fulgora


local t3_sp_gleba = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"agricultural-science-pack", 1},
}
utils.t3_sp_gleba = t3_sp_gleba


local t3_sp_vulcanus = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"military-science-pack", 1},
    {"chemical-science-pack", 1},
    {"production-science-pack", 1},
    {"utility-science-pack", 1},
    {"space-science-pack", 1},
    {"metallurgic-science-pack", 1},
}
utils.t3_sp_vulcanus = t3_sp_vulcanus


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







return utils