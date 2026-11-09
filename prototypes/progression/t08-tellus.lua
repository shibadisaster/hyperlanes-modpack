local artilife_recipe = {
    type = "recipe",
    name = "hyperlanes-artificial-lifeform",
    enabled = false,
    ingredients =
    {
        {type = "item", name = "planetaris-artificial-heart", amount = 1},
        {type = "item", name = "planetaris-polimer-skin", amount = 5},
        {type = "item", name = "ai-tier-10", amount = 1},
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