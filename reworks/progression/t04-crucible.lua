local utils = require("__hyperlanes-modpack__/utils")


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