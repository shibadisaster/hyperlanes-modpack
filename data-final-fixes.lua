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


-- Return inserter (retiered to Gleba reward)
data.raw["technology"]["return-inserter"].prerequisites = {"agricultural-science-pack"}
data.raw["technology"]["return-inserter"].unit.ingredients = table.deepcopy(utils.t3_sp_gleba)
data.raw["technology"]["return-inserter"].unit.count = utils.t3_spcost_bigtech


-- Why (for T6 combo tech)
data.raw["technology"]["planetaris-hyper-transport-belt"].prerequisites = {
    "planetaris-refraction-science-pack",
    "moshine-tech-ai-tier-8",
    "turbo-transport-belt"
}
data.raw["technology"]["planetaris-hyper-transport-belt"].unit.ingredients = utils.t7_sp
data.raw["technology"]["planetaris-hyper-transport-belt"].unit.count = utils.t6_spcost_bigtech


-- Make Rubia launch researches use broken quality materials
for index, category_name in ipairs(utils.launch_categories) do
    data.raw["technology"]["hyperlanes-launching-" .. category_name].research_trigger.item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="}
end


-- Data science
for index, science_name in ipairs(utils.data_analysis_sciences) do
    table.insert(data.raw["lab"]["neural_computer"].inputs, "hyperlanes-datacell-" .. science_name .. "-analyzed")
end