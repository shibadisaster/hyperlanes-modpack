-- Antimatter chunk
local ac_recipe = {
    type = "recipe",
    name = "hyperlanes-antimatter-chunk",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "promethium-asteroid-chunk", amount = 1},
        {type = "fluid", name = "fusion-plasma", amount = 2},
        {type = "fluid", name = "hyperlanes-bose-einstein-condensate", amount = 2},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-antimatter-chunk", amount = 1, shared_probability = {min = 0.00, max = 0.10}},
        {type = "item", name = "promethium-asteroid-chunk", amount = 1, ignored_by_productivity = 1, shared_probability = {min = 0.10, max = 1.00}},
    },
    main_product = "hyperlanes-antimatter-chunk",
    allow_productivity = false,
    categories = {"cryogenics"},
    surface_conditions = {
        {
            property = "gravity",
            min = 0.0,
            max = 0.0
        }
    },
    auto_recycle = true
}
data:extend({ac_recipe})