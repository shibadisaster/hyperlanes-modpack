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
    data.raw["technology"]["hyperlanes-launching-" .. category_name .. "-1"].research_trigger.item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="}
    data.raw["technology"]["hyperlanes-launching-" .. category_name .. "-2"].research_trigger.item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="}
    data.raw["technology"]["hyperlanes-launching-" .. category_name .. "-3"].research_trigger.item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="}
    data.raw["technology"]["hyperlanes-launching-" .. category_name .. "-4"].research_trigger.item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="}
    data.raw["technology"]["hyperlanes-launching-" .. category_name .. "-5"].research_trigger.item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="}
end


-- Data science
for index, science_name in ipairs(utils.data_analysis_sciences) do
    table.insert(data.raw["lab"]["neural_computer"].inputs, "hyperlanes-datacell-" .. science_name .. "-analyzed")
end


-- Tweak muluna datacell graphic slightly
data.raw["item"]["datacell-empty-astronomical-data"].icon = nil
data.raw["item"]["datacell-empty-astronomical-data"].icons = {
    {
        icon = "__Moshine__/graphics/icons/data/datacell-empty.png"
    },
    {
        icon = "__muluna-graphics__/graphics/icons/raw-astronomical-data.png",
        scale = 0.375,
        shift = {0, -2.5}
    },
}


-- Launch tech icons use yeet icons
-- for index, category_name in ipairs(utils.launch_categories) do
--     data.raw["technology"]["hyperlanes-launching-" .. category_name].icons[2].icon = data.raw["item"]["yeet-" .. utils.resources_to_launch[category_name]].icon
-- end