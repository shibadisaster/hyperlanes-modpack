local utils = require("__hyperlanes-modpack__/utils")


-- 


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

data.raw["technology"]["planet-discovery-carna"].prerequisites = {"hyperlanes-t9-epp"}
data.raw["technology"]["planet-discovery-carna"].unit.ingredients = utils.t9_sp
data.raw["technology"]["planet-discovery-carna"].unit.count = utils.t9_spcost_planet

data.raw["technology"]["carnal-science-pack"].essential = true

data.raw["technology"]["advanced-materialization"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["advanced-materialization"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["artificial-global-gleba-soil"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["artificial-global-gleba-soil"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["boompuff-carnabreed"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["boompuff-carnabreed"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["forging-exotic-material"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["forging-exotic-material"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["breeding-exoticia"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["breeding-exoticia"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["slipstack-carnabreed"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["slipstack-carnabreed"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["feron-processing"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["feron-processing"].unit.count = utils.t9_spcost_smalltech

data.raw["technology"]["automation-feron"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["automation-feron"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["biochamber-mk2"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["biochamber-mk2"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["feron-airpump"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["feron-airpump"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["carna-cache-equipment"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carna-cache-equipment"].unit.count = utils.t9_spcost_bigtech

data.raw["technology"]["carna-craft-equipment"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carna-craft-equipment"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carna-reach-equipment"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carna-reach-equipment"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carnal-oil2"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carnal-oil2"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carnal-energy-crystal"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carnal-energy-crystal"].unit.count = utils.t9_spcost_tech

data.raw["technology"]["carnan-spire"].unit.ingredients = utils.t9_sp_carna
data.raw["technology"]["carnan-spire"].unit.count = utils.t9_spcost_bigtech * 2