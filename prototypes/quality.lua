local level6quality = {
    type = "quality",
    name = "mythic",
    level = 7,
    color = {128, 0, 0},
    order = "f",
    next = "ethereal",
    next_probability = 0.0,
    chain_probability = 0.0,
    subgroup = "qualities",
    icon = "__quality__/graphics/icons/quality-uncommon.png",
    beacon_power_usage_multiplier = 1/6,
    mining_drill_resource_drain_multiplier = 1/6,
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
    color = {0, 128, 91},
    order = "g",
    subgroup = "qualities",
    icon = "__quality__/graphics/icons/quality-uncommon.png",
    beacon_power_usage_multiplier = 1/6,
    mining_drill_resource_drain_multiplier = 1/6,
    science_pack_drain_multiplier = 95/100,
    cargo_wagon_inventory_size_multiplier = 5.0,
    locomotive_power_multiplier = 2.0,
    rolling_stock_max_speed_multiplier = 1.15
}
data:extend({level7quality})