local aeratedwater_recipe = {
    type = "recipe",
    name = "hyperlanes-aerated-water",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "nutrients", amount = 5, quality_min = "legendary"},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 500},
    },
    energy_required = 10.0,
    results = {
        {type = "fluid", name = "hyperlanes-aerated-water", amount = 100},
    },
    allow_productivity = true,
    categories = {"maraxsis-hydro-plant"},
    auto_recycle = true
}
data:extend({aeratedwater_recipe})


-- Osmium
local oac_recipe = {
    type = "recipe",
    name = "hyperlanes-osmium-algae-clump",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "ske_algea_clump_iridium", amount = 1},
        {type = "item", name = "iron-plate", amount = 5, quality_min = "legendary"},
        {type = "item", name = "plutonium-238", amount = 5, quality_min = "uncommon"},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-osmium-algae-clump", amount = 1},
    },
    allow_productivity = true,
    categories = {"particle-manipulation"},
    auto_recycle = true
}
data:extend({oac_recipe})

local op_recipe = {
    type = "recipe",
    name = "hyperlanes-osmium-plate",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-osmium-algae-clump", amount = 5},
        {type = "fluid", name = "fusion-plasma", amount = 20},
    },
    energy_required = 15.0,
    results = {
        {type = "item", name = "hyperlanes-osmium-plate", amount = 1},
    },
    allow_productivity = true,
    categories = {"cryogenics"},
    auto_recycle = true
}
data:extend({op_recipe})

local oip_recipe = {
    type = "recipe",
    name = "hyperlanes-osmiridium-alloy-plate",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-osmium-plate", amount = 1},
        {type = "item", name = "iridium-plate", amount = 1},
        {type = "item", name = "ske_ammonia_chilled_plate", amount = 5, quality_min = "rare"},
        {type = "fluid", name = "deuterium", amount = 20},
    },
    energy_required = 15.0,
    results = {
        {type = "item", name = "hyperlanes-osmiridium-alloy-plate", amount = 1},
    },
    allow_productivity = true,
    categories = {"compressing"},
    auto_recycle = true
}
data:extend({oip_recipe})