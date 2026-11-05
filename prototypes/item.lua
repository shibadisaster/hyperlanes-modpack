-- Magnet
local t3_magnet = {
    type = "item",
    name = "hyperlanes-fulgora-magnet",
    icon = "__Moshine__/graphics/icons/magnet.png",
    pictures = {
        {size = 64, filename = "__Moshine__/graphics/icons/magnet.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_1.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_2.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_3.png", scale = 0.5},
    },
    stack_size = 50,
    weight = 5*kg,
}
data:extend({t3_magnet})


-- Supercooled magnet
local t7_magnet = {
    type = "item",
    name = "hyperlanes-supercooled-magnet",
    icon = "__Moshine__/graphics/icons/magnet.png",
    pictures = {
        {size = 64, filename = "__Moshine__/graphics/icons/magnet.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_1.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_2.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_3.png", scale = 0.5},
    },
    stack_size = 50,
    weight = 10*kg,
}
data:extend({t7_magnet})


-- Elementary catalyst
local t4_catalyst = {
    type = "item",
    name = "hyperlanes-elementary-catalyst",
    icon = "__base__/graphics/icons/sulfur.png",
    stack_size = 100,
    weight = 1*kg,
}
data:extend({t4_catalyst})

local t4_activated_catalyst = {
    type = "item",
    name = "hyperlanes-activated-elementary-catalyst",
    icon = "__base__/graphics/icons/sulfur.png",
    stack_size = 100,
    weight = 1*kg,
    spoil_ticks = 180 * 60,
    spoil_result = "hyperlanes-elementary-catalyst"
}
data:extend({t4_activated_catalyst})


-- Volatile catalyst
local t7_catalyst = {
    type = "item",
    name = "hyperlanes-volatile-catalyst",
    icon = "__base__/graphics/icons/sulfur.png",
    stack_size = 100,
    weight = 4*kg,
}
data:extend({t7_catalyst})


-- Osmium algae clump
local t8_osmium_clump = {
    type = "item",
    name = "hyperlanes-osmium-algae-clump",
    icon = "__skewer_planet_vesta_assets__/graphics/icons/algea_clump_iridium.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    weight = 1 * kg
}
data:extend({t8_osmium_clump})


-- Osmium plate
local t8_osmium_plate = {
    type = "item",
    name = "hyperlanes-osmium-plate",
    icon = "__skewer_planet_vesta_assets_2__/graphics/icons/iridium-plate.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 4 * kg
}
data:extend({t8_osmium_plate})


-- Osmiridium alloy plate
local t8_osmiridium_alloy_plate = {
    type = "item",
    name = "hyperlanes-osmiridium-alloy-plate",
    icon = "__skewer_planet_vesta_assets_2__/graphics/icons/iridium-plate.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 5 * kg
}
data:extend({t8_osmiridium_alloy_plate})


-- Artificial lifeform
local t8_artificial_lifeform = {
    type = "item",
    name = "hyperlanes-artificial-lifeform",
    icon = "__base__/graphics/icons/fish-entity.png",
    stack_size = 100,
    weight = 10 * kg
}
data:extend({t8_artificial_lifeform})


-- Microcellular filter
local t8_microcellular_filter = {
    type = "item",
    name = "hyperlanes-microcellular-filter",
    icon = "__space-age__/graphics/icons/carbon-fiber.png",
    stack_size = 100,
    weight = 5 * kg
}
data:extend({t8_microcellular_filter})


-- Enlightened processor
local t10_enlightened_processor = {
    type = "item",
    name = "hyperlanes-enlightened-processor",
    icon = "__base__/graphics/icons/processing-unit.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 10 * kg
}
data:extend({t10_enlightened_processor})


-- Sealant
local t5_sealant = {
    type = "item",
    name = "hyperlanes-sealant",
    icon = "__maraxsis__/graphics/icons/super-sealant-substance-1.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 10 * kg
}
data:extend({t5_sealant})