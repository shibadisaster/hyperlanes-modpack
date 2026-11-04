local heavy_glass_to_tempered_glass = {
    type = "recipe",
    name = "hyperlanes-heavy-glass-to-tempered-glass",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "planetaris-heavy-glass", amount = 5},
        {type = "item", name = "silicon", amount = 5},
    },
    energy_required = 4.0,
    results = {
        {type = "item", name = "glass", amount = 2}
    },
    allow_productivity = true,
    categories = {"metallurgy"},
    auto_recycle = true
}
data:extend({heavy_glass_to_tempered_glass})


local tempered_glass_to_reinforced_glass = {
    type = "recipe",
    name = "hyperlanes-tempered-glass-to-reinforced-glass",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "glass", amount = 3},
        {type = "item", name = "limestone", amount = 1},
        {type = "item", name = "salt", amount = 2},
    },
    energy_required = 4.0,
    results = {
        {type = "item", name = "maraxsis-glass-panes", amount = 1}
    },
    allow_productivity = true,
    categories = {"metallurgy"},
    auto_recycle = true
}
data:extend({tempered_glass_to_reinforced_glass})