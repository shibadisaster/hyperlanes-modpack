-- Magnet
local t3_magnet = {
    type = "item",
    name = "hyperlanes-fulgora-magnet",
    icon = "__hyperlanes-modpack__/graphics/icons/fulgora-magnet.png",
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
    icon = "__hyperlanes-modpack__/graphics/icons/supercooled-magnet.png",
    pictures = {
        {size = 64, filename = "__Moshine__/graphics/icons/magnet.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_1.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_2.png", scale = 0.5},
        {size = 64, filename = "__Moshine__/graphics/icons/magnet_3.png", scale = 0.5},
    },
    stack_size = 50,
    weight = 10*kg,
    spoil_ticks = 300 * 60,
    spoil_result = "magnet"
}
data:extend({t7_magnet})


-- Elementary catalyst
local t4_catalyst = {
    type = "item",
    name = "hyperlanes-elementary-catalyst",
    icon = "__hyperlanes-modpack__/graphics/icons/elementary-catalyst.png",
    stack_size = 100,
    weight = 1*kg,
}
data:extend({t4_catalyst})

local t4_activated_catalyst = {
    type = "item",
    name = "hyperlanes-activated-elementary-catalyst",
    icon = "__hyperlanes-modpack__/graphics/icons/activated-elementary-catalyst.png",
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
    icon = "__hyperlanes-modpack__/graphics/icons/volatile-catalyst.png",
    stack_size = 100,
    weight = 4*kg,

    spoil_ticks = 180 * 60,
    spoil_to_trigger_result = {
        items_per_trigger = 25,
        trigger = {
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "medium-explosion"
                        }
                    }
                }
            },
            {
                type = "area",
                radius = 1,
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = {amount = 60, type = "explosion"}
                        }
                    }
                }
            },
        }
    }
}
data:extend({t7_catalyst})


-- Osmium algae clump
local t8_osmium_clump = {
    type = "item",
    name = "hyperlanes-osmium-algae-clump",
    icon = "__hyperlanes-modpack__/graphics/icons/osmium-algae-clump.png",
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
    icon = "__hyperlanes-modpack__/graphics/icons/osmium-plate.png",
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
    icon = "__hyperlanes-modpack__/graphics/icons/osmiridium-plate.png",
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
    icon = "__hyperlanes-modpack__/graphics/icons/artificial-lifeform.png",
    stack_size = 100,
    weight = 10 * kg
}
data:extend({t8_artificial_lifeform})


-- Microcellular filter
local t8_microcellular_filter = {
    type = "item",
    name = "hyperlanes-microcellular-filter",
    icon = "__hyperlanes-modpack__/graphics/icons/microcellular-filter.png",
    stack_size = 100,
    weight = 5 * kg
}
data:extend({t8_microcellular_filter})


-- Enlightened processor
local t10_enlightened_processor = {
    type = "item",
    name = "hyperlanes-enlightened-processor",
    icon = "__hyperlanes-modpack__/graphics/icons/enlightened-processor.png",
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
    icon = "__hyperlanes-modpack__/graphics/icons/sealant.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 100,
    weight = 10 * kg
}
data:extend({t5_sealant})


-- Purified lead
local t5_purified_lead = {
    type = "item",
    name = "hyperlanes-purified-lead",
    icon = "__hyperlanes-modpack__/graphics/icons/purified-lead.png",
    -- subgroup = "vesta-items-organic",
    -- order = "a[vesta-organics]-i[algea-clump-iridium]",
    -- inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
    -- pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
    -- drop_sound = space_age_item_sounds.agriculture_inventory_move,
    stack_size = 50,
    weight = 10 * kg
}
data:extend({t5_purified_lead})


-- Loaded simulating unit
local t7_losimunit = {
    type = "item",
    name = "hyperlanes-loaded-simulating-unit",
    icon = "__hyperlanes-modpack__/graphics/icons/loaded-simulating-unit.png",
    stack_size = 100,
    weight = 10 * kg
}
data:extend({t7_losimunit})


-- Antimatter chunk
local t9_antimatter_chunk = {
    type = "item",
    name = "hyperlanes-antimatter-chunk",
    icon = "__hyperlanes-modpack__/graphics/icons/antimatter-chunk.png",
    stack_size = 1,
    weight = 100 * kg,
    spoil_ticks = 30 * 60
}
data:extend({t9_antimatter_chunk})


-- Antimatter particulate
local t9_antimatter_particulate = {
    type = "item",
    name = "hyperlanes-antimatter-particulate",
    icon = "__hyperlanes-modpack__/graphics/icons/antimatter-particulate.png",
    stack_size = 100,
    weight = 1 * kg,
    spoil_ticks = 30 * 60
}
data:extend({t9_antimatter_particulate})


-- Time crystal A
local t9_time_crystal_a = {
    type = "item",
    name = "hyperlanes-time-crystal-a",
    icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png",
    stack_size = 1,
    weight = 100 * kg,
    spoil_ticks = 1 * 60,
    spoil_result = "hyperlanes-time-crystal-b"
}
data:extend({t9_time_crystal_a})


-- Time crystal B
local t9_time_crystal_b = {
    type = "item",
    name = "hyperlanes-time-crystal-b",
    icon = "__space-age__/graphics/icons/carbonic-asteroid-chunk.png",
    stack_size = 1,
    weight = 100 * kg,
    spoil_ticks = 1 * 60,
    spoil_result = "hyperlanes-time-crystal-a"
}
data:extend({t9_time_crystal_b})