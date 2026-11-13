local utils = require("__hyperlanes-modpack__/utils")

local level6quality = {
    type = "quality",
    name = "mythic",
    level = 7,
    color = {255, 26, 26},
    order = "f",
    next = "ethereal",
    next_probability = 0.0,
    chain_probability = 0.0,
    subgroup = "qualities",
    icon = "__hyperlanes-modpack__/graphics/icons/quality-mythic.png",
    beacon_power_usage_multiplier = 1/6,
    mining_drill_resource_drain_multiplier = 1/6,
    science_pack_drain_multiplier = 95/100,
    cargo_wagon_inventory_size_multiplier = 2.5,
    locomotive_power_multiplier = 2.0,
    rolling_stock_max_speed_multiplier = 1.15
}
data:extend({level6quality})


local level7quality = {
    type = "quality",
    name = "ethereal",
    level = 10,
    color = {102, 255, 212},
    order = "g",
    subgroup = "qualities",
    icon = "__hyperlanes-modpack__/graphics/icons/quality-ethereal.png",
    beacon_power_usage_multiplier = 1/6,
    mining_drill_resource_drain_multiplier = 1/6,
    science_pack_drain_multiplier = 95/100,
    cargo_wagon_inventory_size_multiplier = 2.5,
    locomotive_power_multiplier = 2.0,
    rolling_stock_max_speed_multiplier = 1.15
}
data:extend({level7quality})


-- local level6quality_tech = {
--     type = "technology",
--     name = "hyperlanes-quality-6",
--     icon_size = 256,
--     icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
--     effects = {
--         {
--             type = "unlock-quality",
--             quality = "mythic"
--         }
--     },
--     unit =
--     {
--         count = utils.t9_spcost_bigtech,
--         ingredients = utils.t9_sp,
--         time = 60
--     },
--     prerequisites = {"hyperlanes-t9-epp","legendary-quality"},
--     order = "c-a",
--     essential = false
-- }
-- data:extend({level6quality_tech})


local level7quality_tech = {
    type = "technology",
    name = "hyperlanes-ethereal-quality",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-quality",
            quality = "ethereal"
        }
    },
    unit =
    {
        count = utils.t10_spcost_bigtech,
        ingredients = utils.t10_sp,
        time = 60
    },
    prerequisites = {"hyperlanes-victory","hyperlanes-quality-module-4"},
    order = "c-a",
    essential = false
}
data:extend({level7quality_tech})


local level0quality = {
    type = "quality",
    name = "broken",
    level = 0,
    color = {116, 58, 36},
    order = "a",
    next = "normal",
    next_probability = 0.0,
    chain_probability = 0.0,
    subgroup = "qualities",
    icon = "__hyperlanes-modpack__/graphics/icons/q0.png",
}
data:extend({level0quality})