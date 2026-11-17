local utils = require("__hyperlanes-modpack__/utils")

local artilife_recipe = {
    type = "recipe",
    name = "hyperlanes-artificial-lifeform",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "planetaris-artificial-heart", amount = 1},
        {type = "item", name = "planetaris-polimer-skin", amount = 5},
        {type = "item", name = "ai-tier-10", amount = 1},
        {type = "item", name = "raw-fish", amount = 1},
    },
    energy_required = 120.0,
    results = {
        {type = "item", name = "hyperlanes-artificial-lifeform", amount = 1},
    },
    main_product = "hyperlanes-artificial-lifeform",
    allow_productivity = true,
    categories = {"planetaris-pathologics"}, -- incubation
    auto_recycle = true
}
data:extend({artilife_recipe})


-- Tech for unlocking Artificial lifeform
local artilife_tech = {
    type = "technology",
    name = "hyperlanes-artificial-lifeform",
    icon_size = 256,
    icon = "__hyperlanes-modpack__/graphics/technology/artificial-lifeform.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-artificial-lifeform"
        }
    },
    unit =
    {
        count = utils.t8_spcost_smalltech,
        ingredients = utils.t8_sp_tellus,
        time = 60
    },
    prerequisites = {"planetaris-artificial-organisms"},
    order = "c-a",
    essential = false
}
data:extend({artilife_tech})