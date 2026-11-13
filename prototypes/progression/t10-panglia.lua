local utils = require("__hyperlanes-modpack__/utils")

-- ╒═════════╗  ╒════╗   ╒════╗ ╒════╗      ╒══════╗ ╒════════╗  ╒════╗╒════╗ ╒══════════╗
-- └┐  ╓───┐ ║  │    ╚╗  └┐  ╓╜ └┐  ╓╜      └─┐  ╓─╜ │  ╓───┐ ║  └┐  ╓╜└┐  ╓╜ │ ╓─┐  ╓─┐ ║
--  │  ║   └─╜  │  ╟┐ ╚╗  │  ║   │  ║         │  ║   │  ║   └─╜   │  ║  │  ║  └─╜ │  ║ └─╜
--  │  ╚══╗     │  ║└┐ ╚╗ │  ║   │  ║         │  ║   │  ║         │  ╚══╛  ║      │  ║    
--  │  ╓──╜     │  ║ └┐ ╚╗│  ║   │  ║         │  ║   │  ║ ╒════╗  │  ╓──┐  ║      │  ║    
--  │  ║   ╒═╗  │  ║  └┐ ╚╡  ║   │  ║   ╒═╗   │  ║   │  ║ └┐  ╓╜  │  ║  │  ║      │  ║    
-- ╒╛  ╚═══╛ ║ ╒╛  ╚╗  └┐    ║  ╒╛  ╚═══╛ ║ ╒═╛  ╚═╗ │  ╚══╛  ║  ╒╛  ╚╗╒╛  ╚╗    ╒╛  ╚╗   
-- └─────────╜ └────╜   └────╜  └─────────╜ └──────╜ └────────╜  └────╜└────╜    └────╜   

local enlightenment_tech = {
    type = "technology",
    name = "hyperlanes-enlightenment",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-enlightened-processor"
        }
    },
    unit =
    {
        count = utils.t10_spcost_bigtech,
        ingredients = utils.t10_sp,
        time = 60
    },
    prerequisites = {"panglia_sentient_processor"},
    order = "c-a",
    essential = true
}
data:extend({enlightenment_tech})


for index, science_name in ipairs(utils.data_analysis_sciences) do
    local enlightenment_step = {
        type = "item",
        name = "hyperlanes-enlightened-processor-step-" .. index,
        icon = "__panglia_planet__/graphics/icons/panglia_sentient_processor.png",
        -- subgroup = "moshine-datacells",
        -- order = utils.science_order[science_name .. "-science-pack"],
        -- inventory_move_sound = item_sounds.module_inventory_move,
        -- pick_sound = item_sounds.module_inventory_pickup,
        -- drop_sound = item_sounds.module_inventory_move,
        stack_size = 50,
        weight = 10.0*kg,
    }

    local enlightenment_step_recipe = {
        type = "recipe",
        name = "hyperlanes-enlightened-processor-step-" .. index,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "panglia_sentient_processor", amount = 1, quality_min = "legendary"},
            {type = "item", name = "panglia_cloned_specimen_body_3_genius", amount = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data-analyzed", amount = 1000},
        },
        energy_required = 0.8,
        results = {
            {type = "item", name = "hyperlanes-enlightened-processor-step-" .. index, amount = 1, independent_probability = 0.90},
        },
        allow_productivity = false,
        categories = {"data-processing"},
        auto_recycle = true,
        main_product = "hyperlanes-enlightened-processor-step-" .. index
    }

    if index > 1 then
        enlightenment_step_recipe.ingredients = {
            {type = "item", name = "hyperlanes-enlightened-processor-step-" .. (index - 1), amount = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data-analyzed", amount = 1000},
        }
    end

    if index % 2 == 0 then
        table.insert(
            enlightenment_step_recipe.ingredients,
            {type = "item", name = "hyperlanes-time-crystal-b", amount = 1}
        )
        table.insert(
            enlightenment_step_recipe.results,
            {type = "item", name = "hyperlanes-time-crystal-b", amount = 1}
        )
    else
        table.insert(
            enlightenment_step_recipe.ingredients,
            {type = "item", name = "hyperlanes-time-crystal-a", amount = 1}
        )
        table.insert(
            enlightenment_step_recipe.results,
            {type = "item", name = "hyperlanes-time-crystal-a", amount = 1}
        )
    end

    data:extend({enlightenment_step, enlightenment_step_recipe})

    table.insert(data.raw["technology"]["hyperlanes-enlightenment"].effects, {
        type = "unlock-recipe",
        recipe = "hyperlanes-enlightened-processor-step-" .. index
    })
end




-- Final step
local enlightenment_recipe = {
    type = "recipe",
    name = "hyperlanes-enlightened-processor",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-enlightened-processor-step-25", amount = 1},
        {type = "item", name = "datacell-cosmic-data", amount = 10000},
    },
    energy_required = 300.0,
    results = {
        {type = "item", name = "hyperlanes-enlightened-processor", amount = 1},
    },
    allow_productivity = false,
    categories = {"thinkingbrain"},
    auto_recycle = true
}

data:extend({enlightenment_recipe})


-- ╒════╗    ╒════╗ ╒══════╗ ╒═════════╗ ╒══════════╗ ╒═════════╗ ╒══════════╗ ╒════╗╒════╗ ╒══╗
-- └┐  ╓╜    └┐  ╓╜ └─┐  ╓─╜ │  ╓────┐ ║ │ ╓─┐  ╓─┐ ║ │  ╓───┐  ║ └┐  ╓───┐  ║ └┐  ╓╜└┐  ╓╜ │  ║
--  └┐ ╚╗    ╒╛ ╓╜    │  ║   │  ║    └─╜ └─╜ │  ║ └─╜ │  ║   │  ║  │  ║   │  ║  │  ║  │  ║  │  ║
--   └┐ ╚╗  ╒╛ ╓╜     │  ║   │  ║            │  ║     │  ║   │  ║  │  ╚═══╛  ║  │  ╚══╛  ║  │  ║
--    └┐ ╚╗╒╛ ╓╜      │  ║   │  ║            │  ║     │  ║   │  ║  │  ╓┐  ╓──╜  └──┐  ╓──╜  │  ║
--     └┐ ╚╛ ╓╜       │  ║   │  ║    ╒═╗     │  ║     │  ║   │  ║  │  ║└┐ ╚╗       │  ║     └──╜
--      └┐  ╓╜      ╒═╛  ╚═╗ │  ╚════╛ ║    ╒╛  ╚╗    │  ╚═══╛  ║ ╒╛  ╚╗└┐ ╚═╗    ╒╛  ╚╗    ╒══╗
--       └──╜       └──────╜ └─────────╜    └────╜    └─────────╜ └────╜ └───╜    └────╜    └──╜

local victory_tech = {
    type = "technology",
    name = "hyperlanes-victory",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {},
    research_trigger = {
        type = "send-item-to-orbit",
        item = "hyperlanes-enlightened-processor"
    },
    prerequisites = {"hyperlanes-enlightenment"},
    order = "c-a",
    essential = true
}
data:extend({victory_tech})