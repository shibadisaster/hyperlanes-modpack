data.raw["technology"]["s1_gas_manipulation_science_pack"].essential = true


-- Ceramic
data.raw["recipe"]["ceramic"].ingredients = {
    {type = "item", name = "maraxsis-glass-panes", amount = 1},
    {type = "item", name = "foundation", amount = 1},
    {type = "fluid", name = "planetaris-pure-sand", amount = 100},
    {type = "fluid", name = "steam", amount = 150},
}
data.raw["recipe"]["ceramic"].results = {
    {type = "item", name = "ceramic", amount = 3}
}
data.raw["recipe"]["ceramic"].categories = {"compressing"}


-- Mesh
data.raw["recipe"]["ske_mesh"].ingredients = {
    {type = "item", name = "ceramic", amount = 1},
    {type = "item", name = "planetaris-carbon-nanotube", amount = 5},
    {type = "item", name = "carbon-fiber", amount = 10},
}


-- Remove sand recipe
data.raw["recipe"]["sand"].enabled = false
data.raw["recipe"]["sand"].hidden = true
table.remove(data.raw["technology"]["planet-discovery-vesta"].effects, 3)