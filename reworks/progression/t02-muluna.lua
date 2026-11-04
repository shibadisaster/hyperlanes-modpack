-- Steam crusher
data.raw["recipe"]["muluna-steam-crusher"].ingredients = {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "engine-unit", amount = 10},
    {type = "item", name = "aluminum-plate", amount = 20},
    {type = "item", name = "pipe", amount = 6}
}
-- TODO: gate this recipe to Muluna
local stcr_tech = data.raw["technology"]["muluna-steam-crusher"]
table.insert(stcr_tech.prerequisites, "muluna-aluminum-processing")


-- Crusher
data.raw["recipe"]["crusher"].ingredients = {
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "low-density-structure", amount = 20},
    {type = "item", name = "muluna-steam-crusher", amount = 1},
}