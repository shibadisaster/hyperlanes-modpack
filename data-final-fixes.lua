-- Due to fuckery wuckery, we have certain mods (snouz this is your fault) that put their recipes in data-final-fixes. Cool.
local utils = require("__hyperlanes-modpack__/utils")


-- Arig + Muria combo tech
data.raw["technology"]["long-stack-inserter"].prerequisites = {
    "planetaris-silica-processing",
    "offworld-chlorine-compounds-production"
}
data.raw["technology"]["long-stack-inserter"].unit.ingredients = utils.t5_sp_arig_muria
data.raw["technology"]["long-stack-inserter"].unit.count = utils.t5_spcost_bigtech


-- Panglia unlock requirement
data.raw["technology"]["panglia_planet_discovery_panglia"].unit.ingredients = utils.t10_sp
data.raw["technology"]["panglia_planet_discovery_panglia"].unit.count = utils.t10_spcost_planet


-- Return inserter
data.raw["technology"]["return-inserter"].unit.ingredients = table.deepcopy(utils.t8_sp_paracelsin)
data.raw["technology"]["return-inserter"].unit.count = utils.t8_spcost_tech