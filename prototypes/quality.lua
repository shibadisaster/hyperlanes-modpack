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
    mining_drill_resource_drain_multiplier = 1.0 / 1024.0,
    science_pack_drain_multiplier = 95/100,
    cargo_wagon_inventory_size_multiplier = 3.5,
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
    mining_drill_resource_drain_multiplier = 0.0,
    science_pack_drain_multiplier = 95/100,
    cargo_wagon_inventory_size_multiplier = 5.0,
    locomotive_power_multiplier = 2.0,
    rolling_stock_max_speed_multiplier = 1.15
}
data:extend({level7quality})