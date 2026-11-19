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
    icon = "__hyperlanes-modpack__/graphics/technology/enlightenment.png",
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
        -- icon = "__panglia_planet__/graphics/icons/panglia_sentient_processor.png",
        icons = {
            {
                icon = "__panglia_planet__/graphics/icons/panglia_sentient_processor.png",
            },
            {
                icon = "__hyperlanes-modpack__/graphics/icons/data/" .. science_name .. "-analyzed.png",
                shift = {0, -8},
                scale = 0.25,
                floating = true
            },
        },
        -- subgroup = "moshine-datacells",
        -- order = utils.science_order[science_name .. "-science-pack"],
        -- inventory_move_sound = item_sounds.module_inventory_move,
        -- pick_sound = item_sounds.module_inventory_pickup,
        -- drop_sound = item_sounds.module_inventory_move,
        stack_size = 50,
        weight = 10.0*kg,
        subgroup = "hyperlanes-enlightenment",
        spoil_ticks = 30 * 60,
        spoil_result = "hyperlanes-rogue-processor"
    }

    if science_name == "promethium" then
        enlightenment_step.spoil_ticks = nil
        enlightenment_step.spoil_result = nil
    end


    local enlightenment_step_recipe = {
        type = "recipe",
        name = "hyperlanes-enlightened-processor-step-" .. index,
        enabled = false,
        icons = {
            {
                icon = "__panglia_planet__/graphics/icons/panglia_sentient_processor.png",
            },
            {
                icon = "__hyperlanes-modpack__/graphics/icons/data/" .. science_name .. "-analyzed.png",
                shift = {0, -12},
                scale = 0.25,
                floating = true
            },
            {
                icon = "__base__/graphics/icons/arrows/down-arrow.png",
                shift = {0, -6},
                scale = 0.20,
                floating = true
            },
        },
        ingredients =
        {
            {type = "item", name = "panglia_sentient_processor", amount = 1, quality_min = "legendary"},
            {type = "item", name = "panglia_cloned_specimen_body_3_genius", amount = 1},
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data-analyzed", amount = 1000},
        },
        energy_required = 0.8,
        results = {
            {type = "item", name = "hyperlanes-enlightened-processor-step-" .. index, amount = 1, shared_probability = {min = 0.00, max = 0.80}, ignored_by_productivity = 1},
            {type = "item", name = "hyperlanes-rogue-processor", amount = 1, shared_probability = {min = 0.80, max = 0.90}, ignored_by_productivity = 1},
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
            {type = "item", name = "hyperlanes-time-crystal-b", amount = 1, ignored_by_productivity = 1}
        )
    else
        table.insert(
            enlightenment_step_recipe.ingredients,
            {type = "item", name = "hyperlanes-time-crystal-a", amount = 1}
        )
        table.insert(
            enlightenment_step_recipe.results,
            {type = "item", name = "hyperlanes-time-crystal-a", amount = 1, ignored_by_productivity = 1}
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
        {type = "item", name = "hyperlanes-enlightened-processor", amount = 1, ignored_by_productivity = 1},
    },
    allow_productivity = false,
    categories = {"thinkingbrain"},
    auto_recycle = true
}

data:extend({enlightenment_recipe})


-- CIA torture
local sedative_recipe = {
    type = "recipe",
    name = "hyperlanes-sedative",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "planetaris-mushroom-cap", amount = 20, quality_min = "legendary"},
        {type = "fluid", name = "panglia_branbalite_slurry", amount = 50},
        {type = "fluid", name = "hyperlanes-superacid", amount = 10},
    },
    energy_required = 10.0,
    results = {
        {type = "fluid", name = "hyperlanes-sedative", amount = 100},
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true
}

data:extend({sedative_recipe})

table.insert(data.raw["technology"]["panglia_sentient_processor"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-sedative"
})


local crime_against_humanity = {
    type = "recipe",
    name = "hyperlanes-sedate-sentient-processor",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-rogue-processor", amount = 1},
        {type = "fluid", name = "hyperlanes-sedative", amount = 10},
    },
    energy_required = 0.1,
    results = {
        {type = "item", name = "panglia_sentient_processor", amount = 1, ignored_by_productivity = 1, always_fresh = true},
    },
    allow_productivity = false,
    categories = {"crafting-with-fluid"},
    auto_recycle = true
}

data:extend({crime_against_humanity})

table.insert(data.raw["technology"]["panglia_sentient_processor"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-sedate-sentient-processor"
})


-- Raw DNA from Artificial lifeform
local dna_from_artificial_lifeform = {
    type = "recipe",
    name = "hyperlanes-collect-dna-artificial-lifeform",
    enabled = false,
    icons = {
        {
            icon = "__panglia_planet__/graphics/icons/data/dna-raw-data.png",
            icon_size = 64,
            scale = 1.0
        },
        {
            icon = "__hyperlanes-modpack__/graphics/icons/artificial-lifeform-rimlight.png",
            icon_size = 64,
            scale = 0.6666,
            floating = true,
            shift = {12, 12}
        }
    },
    ingredients =
    {
        {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1},
    },
    energy_required = 60.0,
    results = {
        {type = "item", name = "spoilage", amount = 1},
        {type = "fluid", name = "dna_raw_data", amount_min = 604, amount_max = 5403},
    },
    allow_productivity = true,
    categories = {"dna_scanning"},
    auto_recycle = true
}

data:extend({dna_from_artificial_lifeform})

table.insert(data.raw["technology"]["panglia_dna_unfolding"].effects, {
    type = "unlock-recipe",
    recipe = "hyperlanes-collect-dna-artificial-lifeform"
})


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
    icon = "__hyperlanes-modpack__/graphics/technology/victory.png",
    effects = {},
    research_trigger = {
        type = "craft-item",
        item = "hyperlanes-enlightened-processor"
    },
    prerequisites = {"hyperlanes-enlightenment"},
    order = "c-a",
    essential = true
}
data:extend({victory_tech})