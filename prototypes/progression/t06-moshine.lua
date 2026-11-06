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