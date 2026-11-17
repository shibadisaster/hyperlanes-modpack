local utils = require("__hyperlanes-modpack__/utils")

-- Sealant
local sealant_recipe = {
    type = "recipe",
    name = "hyperlanes-sealant",
    enabled = false,
    ingredients =
    {
        {type = "fluid", name = "tar", amount = 20},
        {type = "item", name = "planetaris-sand-barrel", amount = 1},
        {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 4},
        {type = "item", name = "stone-crushed", amount = 10, quality_min = "uncommon"},
    },
    energy_required = 5.0,
    results = {
        {type = "item", name = "hyperlanes-sealant", amount = 2}
    },
    allow_productivity = true,
    categories = {"chemistry"},
    auto_recycle = true,
    surface_conditions = {
        {
            property="planetaris-dust-concentration",
            min=50,
            max=100
        }
    }
}
data:extend({sealant_recipe})


-- Tech for unlocking Sealant
local sealant_tech = {
    type = "technology",
    name = "hyperlanes-sealant",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/technology/sealant.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-sealant"
        }
    },
    research_trigger = {
        type = "craft-item",
        item = "planetaris-sand-barrel"
    },
    prerequisites = {"planet-discovery-arig"},
    order = "c-a",
    essential = false
}
data:extend({sealant_tech})