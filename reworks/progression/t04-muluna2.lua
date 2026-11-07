local utils = require("__hyperlanes-modpack__/utils")


-- Since this requires 4 planetary science packs, exploration science requires vulc, fulg, gleba, AND cerys to obtain, cerys only being doable after the rest are complete because of EPP gating
-- local exsp_tech = data.raw["technology"]["interstellar-science-pack"]
-- table.insert(exsp_tech.prerequisites, "cerysian-science-pack")

-- Nanofoamed polymers: tech moved to require Cerysian science pack 
local nanopoly_tech = data.raw["technology"]["muluna-nanofoamed-polymers"]
table.insert(nanopoly_tech.prerequisites, "cerysian-science-pack")

-- Telescope: tech moved to require nanofoamed polymers
local telesc_tech = data.raw["technology"]["muluna-telescope"]
table.insert(telesc_tech.prerequisites, "muluna-nanofoamed-polymers")


-- Low density space platform foundation
data.raw["recipe"]["low-density-space-platform-foundation"].surface_conditions = {
    {
        property = "gravity",
        min = 2,
        max = 2,
    },
    {
        property = "oxygen",
        min = 0,
        max = 0,
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