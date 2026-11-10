local utils = require("__hyperlanes-modpack__/utils")


-- Sand unification
local sand_recipe = {
    type = "recipe",
    name = "hyperlanes-sand-to-planetaris-sand",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "sand", amount = 200},
    },
    energy_required = 2.0,
    results = {
        {type = "fluid", name = "planetaris-sand", amount = 50}
    },
    allow_productivity = true,
    categories = {"sifting"}
}
data:extend({sand_recipe})


-- ╒══════════╗  ╒════════╗  ╒══════════╗ ╒══════════╗      ╒═════════╗
-- └┐  ╓───┐  ║  │  ╓──┐  ║  └┐  ╓───┐  ║ │ ╓─┐  ╓─┐ ║      │ ╓────┐  ║
--  │  ║   │  ║  │  ║  │  ║   │  ║   │  ║ └─╜ │  ║ └─╜      └─╜  ╒═╛ ╓╜
--  │  ╚═══╛  ║  │  ╚══╛  ║   │  ╚═══╛  ║     │  ║             ╒═╛ ╓─╜ 
--  │  ╓──────╜  │  ╓──┐  ║   │  ╓┐  ╓──╜     │  ║           ╒═╛ ╓─╜   
--  │  ║         │  ║  │  ║   │  ║└┐ ╚╗       │  ║          ╒╛ ╓─╜     
-- ╒╛  ╚╗       ╒╛  ╚╗╒╛  ╚╗ ╒╛  ╚╗└┐ ╚═╗    ╒╛  ╚╗         │  ╚══════╗
-- └────╜       └────╜└────╜ └────╜ └───╜    └────╜         └─────────╜

local primed_tier_8 = table.deepcopy(data.raw["module"]["ai-tier-8"])
primed_tier_8.name = "hyperlanes-ai-tier-8-primed"
primed_tier_8.effect = {
    speed = 10.24 / 2.0
}
data:extend({primed_tier_8})

local primed_tier_9 = table.deepcopy(data.raw["module"]["ai-tier-9"])
primed_tier_9.name = "hyperlanes-ai-tier-9-primed"
primed_tier_9.effect = {
    speed = 14.58 / 2.0
}
data:extend({primed_tier_9})

-- Primed tier 8
local prt8_recipe = {
    type = "recipe",
    name = "hyperlanes-ai-tier-8-primed",
    enabled = false,
    ingredients =
    {
        
        {type = "item", name = "ai-tier-8", amount = 1},
        {type = "fluid", name = "cosmic-data", amount = 50},
    },
    energy_required = 3.0,
    results = {
        {type = "item", name = "hyperlanes-ai-tier-8-primed", amount = 1}
    },
    allow_productivity = true,
    categories = {"data-processing"}
}
data:extend({prt8_recipe})


-- Primed tier 9
local prt9_recipe = {
    type = "recipe",
    name = "hyperlanes-ai-tier-9-primed",
    enabled = false,
    ingredients =
    {
        
        {type = "item", name = "ai-tier-9", amount = 1},
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1},
        {type = "fluid", name = "cosmic-data", amount = 100},
    },
    energy_required = 3.0,
    results = {
        {type = "item", name = "hyperlanes-ai-tier-9-primed", amount = 1},
        {type = "item", name = "hyperlanes-volatile-catalyst", amount = 1, ignored_by_productivity = 1, independent_probability = 0.98},
    },
    main_product = "hyperlanes-ai-tier-9-primed",
    allow_productivity = true,
    categories = {"data-processing"}
}
data:extend({prt9_recipe})


-- ╒═════════╗   ╒════════╗  ╒══════════╗  ╒════════╗       ╒═════════╗ ╒═════════╗ ╒══════╗
-- └┐  ╓───┐ ╚╗  │  ╓──┐  ║  │ ╓─┐  ╓─┐ ║  │  ╓──┐  ║       │  ╓────┐ ║ │  ╓────┐ ║ └─┐  ╓─╜
--  │  ║   │  ║  │  ║  │  ║  └─╜ │  ║ └─╜  │  ║  │  ║       │  ║    └─╜ │  ║    └─╜   │  ║  
--  │  ║   │  ║  │  ╚══╛  ║      │  ║      │  ╚══╛  ║       │  ╚══════╗ │  ║          │  ║  
--  │  ║   │  ║  │  ╓──┐  ║      │  ║      │  ╓──┐  ║       └──────┐  ║ │  ║          │  ║  
--  │  ║   │  ║  │  ║  │  ║      │  ║      │  ║  │  ║       ╒═╗    │  ║ │  ║    ╒═╗   │  ║  
-- ╒╛  ╚═══╛ ╓╜ ╒╛  ╚╗╒╛  ╚╗    ╒╛  ╚╗    ╒╛  ╚╗╒╛  ╚╗      │ ╚════╛  ║ │  ╚════╛ ║ ╒═╛  ╚═╗
-- └─────────╜  └────╜└────╜    └────╜    └────╜└────╜      └─────────╜ └─────────╜ └──────╜
local data_analysis_tech = {
    type = "technology",
    name = "hyperlanes-data-analysis",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
    effects = {},
    unit =
    {
        count = utils.t2_spcost_bigtech * 2,
        ingredients = utils.t2_sp,
        time = 30
    },
    prerequisites = {"moshine-tech-ai-tier-8"},
    order = "c-a",
    essential = false
}
data:extend({data_analysis_tech})





local item_sounds = require("__base__.prototypes.item_sounds")


for index, science_name in ipairs(utils.data_analysis_sciences) do
    local data_fluid = {
        type = "fluid",
        name = "hyperlanes-" .. science_name .. "-data",
        subgroup = "data-fluid",
        -- order = "d[cosmic-data]",
        default_temperature = 15,
        gas_temperature = 0,
        base_color = {255, 63, 63},
        flow_color = {255, 63, 63},
        icon = "__Moshine__/graphics/icons/data/cosmic-data.png",
        auto_barrel = false,
        draw_as_glow = true,
    }
    local data_recipe = {
        type = "recipe",
        name = "hyperlanes-" .. science_name .. "-data",
        enabled = false,
        ingredients =
        {
            {type = "item", name = science_name .. "-science-pack", amount = 10, quality_min = "rare"},
            {type = "fluid", name = "raw-data", amount = 10},
        },
        energy_required = 10.0,
        results = {
            {type = "fluid", name = "hyperlanes-" .. science_name .. "-data", amount_min = 0, amount_max = 20},
        },
        allow_productivity = true,
        categories = {"data-processing"}
    }
    local datacell = {
        type = "item",
        name = "hyperlanes-datacell-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data.png",
        subgroup = "moshine-datacells",
        order = "b",
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        default_import_location = "moshine",
        --durability = 1,
        --durability_description_key = "description.science-pack-remaining-amount-key",
        --factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
        --durability_description_value = "description.science-pack-remaining-amount-value",
        stack_size = 200,
        weight = 0.5*kg,
    }
    local datacell_recipe = {
        type = "recipe",
        name = "hyperlanes-datacell-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data.png",
        categories = {"data-processing"},
        subgroup = "moshine-datacells",
        order = "a[moshine]-cb",
        hide_from_player_crafting = true,
        energy_required = 1.0,
        ingredients = {
        {type = "item", name = "datacell-empty", amount = 1, ignored_by_stats = 1},
        {type = "fluid", name = "hyperlanes-" .. science_name .. "-data", amount = 100, ignored_by_stats = 100},
        },
        results = {{type = "item", name = "hyperlanes-datacell-" .. science_name, amount = 1, ignored_by_stats = 1}},
        allow_productivity = false,
        auto_recycle = false,
        enabled = false,
        crafting_machine_tint = {primary = {255, 63, 63}},
    }
    local emptying_datacell_recipe = {
        type = "recipe",
        name = "hyperlanes-datacell-remove-" .. science_name,
        icon = "__Moshine__/graphics/icons/data/datacell-cosmic-data-remove.png",
        categories = {"data-processing"},
        subgroup = "moshine-datacells",
        order = "a[moshine]-cc",
        hide_from_player_crafting = true,
        hide_from_stats = true,
        energy_required = 1.0,
        ingredients = {
        {type = "item", name = "hyperlanes-datacell-" .. science_name, amount = 1, ignored_by_stats = 1},
        },
        results = {
        {type = "item", name = "datacell-empty", amount = 1, ignored_by_stats = 1},
        {type = "fluid", name = "hyperlanes-" .. science_name .. "-data", amount = 100, ignored_by_stats = 100},
        },
        allow_productivity = false,
        auto_recycle = false,
        enabled = false,
        crafting_machine_tint = {primary = {255, 63, 63}},
    }
    local data_tech = {
        type = "technology",
        name = "hyperlanes-" .. science_name .. "-data",
        icon_size = 256,
        icon = "__hyperlanes-modpack__/graphics/icons/tech-placeholder.png",
        effects = {},
        max_level = "infinite",
        unit =
        {
            count_formula = "1.25^(L-1)*30",
            ingredients = {
                {"hyperlanes-datacell-" .. science_name, 1}
            },
            time = 100000
        },
        prerequisites = {"hyperlanes-data-analysis"},
        order = "c-a",
        essential = false
    }

    data:extend({data_fluid, data_recipe, datacell, datacell_recipe, emptying_datacell_recipe, data_tech})
end
