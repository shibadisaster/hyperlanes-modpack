-- Condensing agricultural tower recipe duplicate removal
table.remove(data.raw["technology"]["planetaris-agriculture"].effects, 1)


data.raw["technology"]["planetaris-tellus-rocket-silo"].essential = false