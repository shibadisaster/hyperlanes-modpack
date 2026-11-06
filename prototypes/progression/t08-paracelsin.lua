local recooling_sucomagnet_paracelsin_recipe = {
    type = "recipe",
    name = "hyperlanes-supercooled-magnet-recooling-paracelsin",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1},
        {type = "fluid", name = "nitrogen", amount = 100},
    },
    energy_required = 5.0,
    results = {
        {type = "item", name = "hyperlanes-supercooled-magnet", amount = 1, reset_freshness_on_craft = true},
    },
    main_product = "hyperlanes-supercooled-magnet",
    allow_productivity = false,
    categories = {"cryogenics"},
    auto_recycle = true
}
data:extend({recooling_sucomagnet_paracelsin_recipe})


local micellfilter_recipe = {
    type = "recipe",
    name = "hyperlanes-microcellular-filter",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "maraxsis-salt-filter", amount = 1},
        {type = "item", name = "maraxsis-glass-panes", amount = 1},
        {type = "item", name = "muluna-microcellular-plastic", amount = 1},
        {type = "item", name = "planetaris-carbon-nanotube", amount = 5},
    },
    energy_required = 10.0,
    results = {
        {type = "item", name = "hyperlanes-microcellular-filter", amount = 1},
    },
    main_product = "hyperlanes-microcellular-filter",
    allow_productivity = true,
    categories = {"crafting", "mechanics"},
    auto_recycle = true
}
data:extend({micellfilter_recipe})