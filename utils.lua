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







return utils