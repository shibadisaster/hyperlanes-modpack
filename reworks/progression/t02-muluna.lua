-- Steam crusher: is now limited to Muluna by crafting recipe
data.raw["recipe"]["muluna-steam-crusher"].ingredients = {
    {type = "item", name = "steel-plate", amount = 10},
    {type = "item", name = "engine-unit", amount = 10},
    {type = "item", name = "aluminum-plate", amount = 20},
    {type = "item", name = "pipe", amount = 6}
}

local stcr_tech = data.raw["technology"]["muluna-steam-crusher"]
table.insert(stcr_tech.prerequisites, "muluna-aluminum-processing")


-- Crusher: requires Steam crusher
data.raw["recipe"]["crusher"].ingredients = {
    {type = "item", name = "processing-unit", amount = 5},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "low-density-structure", amount = 20},
    {type = "item", name = "muluna-steam-crusher", amount = 1},
}