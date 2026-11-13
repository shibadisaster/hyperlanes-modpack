local utils = require("__hyperlanes-modpack__/utils")


data.raw["technology"]["panglia_collect_dna_fish"].essential = false
data.raw["technology"]["panglia_collect_dna_biter"].essential = false
data.raw["technology"]["panglia_collect_dna_demolisher"].essential = false
data.raw["technology"]["panglia_collect_dna_pentapod"].essential = false


-- Hull
data.raw["wall"]["snouz_wall_hull"].max_health = 1000
data.raw["wall"]["snouz_wall_hull"].healing_per_tick = 10.0 / 60.0


-- ╒══════════╗ ╒═════════╗ ╒═════════╗ ╒════╗╒════╗ ╒═════════╗
-- │ ╓─┐  ╓─┐ ║ └┐  ╓───┐ ║ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ │  ╓────┐ ║
-- └─╜ │  ║ └─╜  │  ║   └─╜ │  ║    └─╜  │  ║  │  ║  │  ║    └─╜
--     │  ║      │  ╚══╗    │  ║         │  ╚══╛  ║  │  ╚══════╗
--     │  ║      │  ╓──╜    │  ║         │  ╓──┐  ║  └──────┐  ║
--     │  ║      │  ║   ╒═╗ │  ║    ╒═╗  │  ║  │  ║  ╒═╗    │  ║
--    ╒╛  ╚╗    ╒╛  ╚═══╛ ║ │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ │ ╚════╛  ║
--    └────╜    └─────────╜ └─────────╜ └────╜└────╜ └─────────╜

-- refer to data-final-fixes

data.raw["technology"]["panglia_crusher"].prerequisites = {"panglia_panglite_fiber"}
data.raw["technology"]["panglia_crusher"].unit.ingredients = utils.t10_sp
data.raw["technology"]["panglia_crusher"].unit.count = utils.t10_spcost_smalltech

data.raw["technology"]["panglia_advanced_circuit_from_panglite_fiber"].enabled = false
data.raw["technology"]["panglia_advanced_circuit_from_panglite_fiber"].hidden = true

data.raw["technology"]["panglia_low_density_structure_from_panglite_fiber"].enabled = false
data.raw["technology"]["panglia_low_density_structure_from_panglite_fiber"].hidden = true

data.raw["technology"]["panglia_branbalite_slurry_to_lubricant"].enabled = false
data.raw["technology"]["panglia_branbalite_slurry_to_lubricant"].hidden = true

data.raw["technology"]["panglia_branbalite_slurry_to_rocket_fuel"].enabled = false
data.raw["technology"]["panglia_branbalite_slurry_to_rocket_fuel"].hidden = true

data.raw["technology"]["panglia_advanced_optics_nanotech"].prerequisites = {"panglia_panglite_glass"}

data.raw["technology"]["panglia_worker-robots-speed"].enabled = false
data.raw["technology"]["panglia_worker-robots-speed"].hidden = true

data.raw["technology"]["panglia_worker-robots-storage-1"].enabled = false
data.raw["technology"]["panglia_worker-robots-storage-1"].hidden = true

data.raw["technology"]["panglia_worker-robots-storage-2"].enabled = false
data.raw["technology"]["panglia_worker-robots-storage-2"].hidden = true

data.raw["technology"]["panglia_universe_precursor"].prerequisites = {"panglia_crusher"}

data.raw["technology"]["matter_printer-technology"].prerequisites = {"panglia_universe_precursor"}

data.raw["technology"]["panglia_universe_precursor_volcanic"].prerequisites = {"matter_printer-technology"}

data.raw["technology"]["snouz_wall_hull"].prerequisites = {"panglia_panglite_fiber"}

data.raw["technology"]["snouz_long_electric_gun_turret"].prerequisites = {"panglia_panglite_fiber"}

data.raw["technology"]["panglia_simulation_chamber"].prerequisites = {"panglia_dna_manipulation_phasetwo_tech"}