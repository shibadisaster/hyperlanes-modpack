-- Tempered glass
data.raw["recipe"]["glass"].ingredients = {
    {type = "item", name = "planetaris-heavy-glass", amount = 3},
    {type = "item", name = "silicon-carbide", amount = 5},
    {type = "item", name = "carbon-fiber", amount = 5},
    {type = "fluid", name = "hyperlanes-superacid", amount = 20},
}


-- Neodymium magnet
data.raw["recipe"]["magnet"].ingredients = {
    {type = "item", name = "neodymium", amount = 1},
    {type = "item", name = "hyperlanes-fulgora-magnet", amount = 2},
    {type = "fluid", name = "molten-iron", amount = 20},
    {type = "item", name = "hyperlanes-sealant", amount = 2},
}


-- Advanced data cable
data.raw["recipe"]["optical-cable"].ingredients = {
    {type = "item", name = "muluna-data-cable", amount = 2},
    {type = "item", name = "silicon-carbide", amount = 1},
    {type = "item", name = "glass", amount = 1},
    {type = "item", name = "hyperlanes-sealant", amount = 1},
}


-- Silicon (disable)
data.raw["recipe"]["silicon"].enabled = false

data.raw["technology"]["moshine-tech-silicon"].enabled = false
data.raw["technology"]["moshine-tech-silicon"].prerequisites = {}
data.raw["technology"]["moshine-tech-silicon"].hidden = true
data.raw["technology"]["moshine-tech-silicon-carbide"].enabled = false
data.raw["technology"]["moshine-tech-silicon-carbide"].hidden = true
data.raw["technology"]["moshine-tech-silicon-cell"].enabled = false
data.raw["technology"]["moshine-tech-silicon-cell"].hidden = true

-- Remove prerequisites
data.raw["technology"]["moshine-tech-cosmicscanner-construction1"].prerequisites = {"moshine-concrete-from-molten-iron-and-sand"}
data.raw["technology"]["minimalist-rails"].prerequisites = {"planet-discovery-moshine"}
data.raw["technology"]["moshine-tech-cosmicscanner-construction2"].prerequisites = {"moshine-tech-cosmicscanner-construction1", "moshine-tech-magnet"}
data.raw["technology"]["moshine-tech-datacell-empty"].prerequisites = {"moshine-tech-magnet"}
data.raw["technology"]["moshine-tech-data-processor-building"].prerequisites = {"moshine-tech-datacell-empty"}
data.raw["technology"]["sun_heat_cooler_2_tech"].prerequisites = {"cryogenic-science-pack", "sun_heat_cooler_1_tech"}