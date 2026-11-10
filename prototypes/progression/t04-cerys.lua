local utils = require("__hyperlanes-modpack__/utils")


-- Inert radioactive catalyst
local elcatalyst_recipe = {
    type = "recipe",
    name = "hyperlanes-elementary-catalyst",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "alumina-crushed", amount = 20, quality_min = "uncommon"},
        {type = "item", name = "uranium-235", amount = 5},
        {type = "item", name = "plutonium-238", amount = 1},
        {type = "fluid", name = "ammonia", amount = 10},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-elementary-catalyst", amount = 10}
    },
    allow_productivity = true,
    categories = {"fulgoran-cryogenics"},
    auto_recycle = true
}
data:extend({elcatalyst_recipe})


-- Activated radioactive catalyst
local acelcatalyst_recipe = {
    type = "recipe",
    name = "hyperlanes-activated-elementary-catalyst",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-elementary-catalyst", amount = 1},
    },
    energy_required = 1.0,
    results = {
        {type = "item", name = "hyperlanes-activated-elementary-catalyst", amount = 1}
    },
    allow_productivity = false,
    categories = {"electromagnetics"},
    auto_recycle = true
}
data:extend({acelcatalyst_recipe})


local ammicrosuspension_recipe = {
    type = "recipe",
    name = "hyperlanes-advanced-material-microsuspension",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "tungsten-plate", amount = 10},
        {type = "item", name = "holmium-plate", amount = 10},
        {type = "item", name = "carbon-fiber", amount = 10},
        {type = "item", name = "silicon", amount = 20, quality_min = "uncommon"},
        {type = "fluid", name = "water", amount = 100},
    },
    energy_required = 20.0,
    results = {
        {type = "fluid", name = "hyperlanes-advanced-material-microsuspension", amount = 20}
    },
    allow_productivity = true,
    categories = {"fulgoran-cryogenics"},
    auto_recycle = true
}
data:extend({ammicrosuspension_recipe})


-- Tech for unlocking Advanced material microsuspension
local amms = {
    type = "technology",
    name = "hyperlanes-advanced-material-microsuspension",
    icon_size = 64,
    icon = "__hyperlanes-modpack__/graphics/icons/advanced-material-microsuspension.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-advanced-material-microsuspension"
        },
    },
    unit =
    {
        count = utils.t4_spcost_tech,
        ingredients = utils.t4_sp_cerys,
        time = 60
    },
    prerequisites = {"planetslib-cerys-cargo-drops"},
    order = "c-a",
    essential = false
}
data:extend({amms})


-- Tech for unlocking Radioactive catalyst
local elca = {
    type = "technology",
    name = "hyperlanes-elementary-catalyst",
    icon_size = 64,
    icon = "__hyperlanes-modpack__/graphics/icons/elementary-catalyst.png",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-elementary-catalyst"
        },
        {
            type = "unlock-recipe",
            recipe = "hyperlanes-activated-elementary-catalyst"
        },
    },
    unit =
    {
        count = utils.t4_spcost_tech,
        ingredients = utils.t4_sp_cerys,
        time = 60
    },
    prerequisites = {"planetslib-cerys-cargo-drops"},
    order = "c-a",
    essential = false
}
data:extend({elca})