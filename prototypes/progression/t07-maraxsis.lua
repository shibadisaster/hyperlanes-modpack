local utils = require("__hyperlanes-modpack__/utils")

-- Bioslurry
local bioslurry_recipe = {
    type = "recipe",
    name = "hyperlanes-bioslurry",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "maraxsis-tropical-fish", amount = 1},
        {type = "item", name = "rubia-biofusion-science-pack", amount = 1},
        {type = "item", name = "planetaris-cactus", amount = 1},
        {type = "item", name = "pentapod-egg", amount = 1, quality_min = "rare"},
        {type = "item", name = "eschatotaxite-paste", amount = 1, quality_min = "rare"},
    },
    energy_required = 5.0,
    results = {
        {type = "fluid", name = "hyperlanes-bioslurry", amount = 5}
    },
    allow_productivity = true,
    categories = {"organic"},
    auto_recycle = true,
    surface_conditions = {
        {
            property="gravity",
            min=0,
            max=0,
        }
    }
}
data:extend({bioslurry_recipe})


-- Tech for unlocking Bioslurry
local bs_tech = {
    type = "technology",
    name = "hyperlanes-bioslurry",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/technology/bioslurry.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-bioslurry"
        },
    },
    unit =
    {
        count = utils.t7_spcost_smalltech,
        ingredients = utils.t7_sp_maraxsis,
        time = 60
    },
    prerequisites = {"maraxsis-project-seadragon"},
    order = "c-a",
    essential = false
}
data:extend({bs_tech})