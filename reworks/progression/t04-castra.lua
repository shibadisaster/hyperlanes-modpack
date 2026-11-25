local utils = require("__hyperlanes-modpack__/utils")


-- Fix Battlefield science pack
local item = table.deepcopy(data.raw["tool"]["battlefield-science-pack"])

item.type = "item"
item.durability = nil
item.durability_description_value = nil
item.durability_description_key = nil
item.infinite = nil

data.raw["tool"]["battlefield-science-pack"] = nil
data:extend({item})