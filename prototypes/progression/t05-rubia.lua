local utils = require("__hyperlanes-modpack__/utils")

-- Metamaterial microsuspension
local metamicrosuspension_recipe = {
    type = "recipe",
    name = "hyperlanes-metamaterial-microsuspension",
    enabled = false,
    ingredients =
    {
        {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 100},
        {type = "item", name = "rubia-bacteria-A", amount = 3},
        {type = "item", name = "rubia-bacteria-B", amount = 3},
        {type = "item", name = "craptonite-frame", amount = 10},
        {type = "item", name = "muluna-microcellular-plastic", amount = 10, quality_min = "rare"},
    },
    energy_required = 30.0,
    results = {
        {type = "fluid", name = "hyperlanes-metamaterial-microsuspension", amount = 100}
    },
    allow_productivity = true,
    categories = {"biorecycling"},
    auto_recycle = true
}
data:extend({metamicrosuspension_recipe})


-- ╒════╗       ╒════════╗  ╒════╗ ╒════╗  ╒════╗   ╒════╗ ╒═════════╗ ╒════╗╒════╗ ╒══════╗  ╒════╗   ╒════╗ ╒════════╗ 
-- └┐  ╓╜       │  ╓──┐  ║  └┐  ╓╜ └┐  ╓╜  │    ╚╗  └┐  ╓╜ │  ╓────┐ ║ └┐  ╓╜└┐  ╓╜ └─┐  ╓─╜  │    ╚╗  └┐  ╓╜ │  ╓───┐ ║ 
--  │  ║        │  ║  │  ║   │  ║   │  ║   │  ╟┐ ╚╗  │  ║  │  ║    └─╜  │  ║  │  ║    │  ║    │  ╟┐ ╚╗  │  ║  │  ║   └─╜ 
--  │  ║        │  ╚══╛  ║   │  ║   │  ║   │  ║└┐ ╚╗ │  ║  │  ║         │  ╚══╛  ║    │  ║    │  ║└┐ ╚╗ │  ║  │  ║       
--  │  ║        │  ╓──┐  ║   │  ║   │  ║   │  ║ └┐ ╚╗│  ║  │  ║         │  ╓──┐  ║    │  ║    │  ║ └┐ ╚╗│  ║  │  ║ ╒════╗
--  │  ║   ╒═╗  │  ║  │  ║   │  ║   │  ║   │  ║  └┐ ╚╡  ║  │  ║    ╒═╗  │  ║  │  ║    │  ║    │  ║  └┐ ╚╡  ║  │  ║ └┐  ╓╜
-- ╒╛  ╚═══╛ ║ ╒╛  ╚╗╒╛  ╚╗  │  ╚═══╛  ║  ╒╛  ╚╗  └┐    ║  │  ╚════╛ ║ ╒╛  ╚╗╒╛  ╚╗ ╒═╛  ╚═╗ ╒╛  ╚╗  └┐    ║  │  ╚══╛  ║ 
-- └─────────╜ └────╜└────╜  └─────────╜  └────╜   └────╜  └─────────╜ └────╜└────╜ └──────╜ └────╜   └────╜  └────────╜ 


local launching_tech = {
    type = "technology",
    name = "hyperlanes-launching-bonuses",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {},
    unit =
    {
        count = utils.t5_spcost_bigtech,
        ingredients = utils.t5_sp_rubia,
        time = 60
    },
    prerequisites = {"planetslib-rubia-cargo-drops"},
    order = "c-a",
    essential = false
}
data:extend({launching_tech})


for index, category_name in ipairs(utils.launch_categories) do
    local launch_item_tech = {
        type = "technology",
        name = "hyperlanes-launching-" .. category_name,
        icon_size = 256,
        icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
        effects = {},
        research_trigger = {
            type = "craft-item",
            -- item = {name = "yeet-" .. utils.resources_to_launch[category_name], quality = "broken", comparator = "="},
            item = "yeet-" .. utils.resources_to_launch[category_name],
            count = utils.resource_base_cost[category_name]
        },
        prerequisites = {"hyperlanes-launching-bonuses"},
        order = "zzz-launching",
        essential = false
    }
    data:extend({launch_item_tech})

    -- for level = 2, 5, 1 do
    --     local ext_launch_item_tech = {
    --         type = "technology",
    --         name = "hyperlanes-launching-" .. category_name .. "-" .. level,
    --         icon_size = 256,
    --         icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    --         effects = {},
    --         research_trigger = {
    --             type = "craft-item",
    --             item = "yeet-" .. utils.resources_to_launch[category_name],
    --             count = utils.resource_base_cost[category_name] * utils.level_scaling ^ (level - 1)
    --         },
    --         prerequisites = {"hyperlanes-launching-" .. category_name .. "-" .. (level - 1)},
    --         order = "zzz-launching",
    --         essential = false,
    --         upgrade = true
    --     }
    --     data:extend({ext_launch_item_tech})
    -- end
end





local upgrade_data = {}
    -- {
    --     handler = "Assembling-machine-bonus",
    --     technology_name = "steel-processing",
    --     modifier_icon = {icon="__space-age__/graphics/icons/biochamber.png"},
    --     entity_names = {
    --         "assembling-machine-2"
    --     },
    --     module_effects = {quality = 0.1},
    --     effect_name = "Assembling machines",
    -- }

for index, category_name in ipairs(utils.launch_categories) do
    for level = 1, 1, 1 do
        if #utils.launch_building_associations[category_name] > 0 then
            table.insert(upgrade_data, {
                handler = "hyperlanes-rubia-launching-" .. category_name .. "-bonus",
                technology_name = "hyperlanes-launching-" .. category_name,
                modifier_icon = {icon=utils.launch_effect_icons[category_name]},
                entity_names = utils.launch_building_associations[category_name],
                module_effects = {
                    speed = 0.10,
                    productivity = 0.10,
                    consumption = -0.10
                },
                effect_name = "All " .. category_name .. " machines",
            })
        end
    end
end



if data and data.raw and data.raw.module and table_size(data.raw.module) > 0 then
    local mupgrades = require("__machine-upgrades__.lib.technology-maker")
    mupgrades.handle_modifier_data(upgrade_data)
end


-- Personal launching effects
table.insert(
    data.raw["technology"]["hyperlanes-launching-personal"].effects,
    {
        type = "character-mining-speed",
        modifier = 0.2
    }
)

table.insert(
    data.raw["technology"]["hyperlanes-launching-personal"].effects,
    {
        type = "character-running-speed",
        modifier = 0.2
    }
)

table.insert(
    data.raw["technology"]["hyperlanes-launching-personal"].effects,
    {
        type = "character-crafting-speed",
        modifier = 0.2
    }
)

table.insert(
    data.raw["technology"]["hyperlanes-launching-personal"].effects,
    {
        type = "character-inventory-slots-bonus",
        modifier = 10
    }
)