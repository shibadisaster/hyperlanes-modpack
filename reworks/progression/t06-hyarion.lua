data.raw["recipe"]["planetaris-metallic-smelting"].enabled = false
data.raw["recipe"]["planetaris-burner-drill-alternative"].enabled = false
data.raw["recipe"]["planetaris-quartz-furnace"].enabled = false

-- kill it kill it
data.raw["technology"]["planetaris-quartz-furnace"].enabled = false
data.raw["technology"]["planetaris-quartz-furnace"].prerequisites = {}

data.raw["technology"]["planetaris-metallic-ore-processing"].prerequisites = {"planet-discovery-hyarion"}
data.raw["technology"]["planetaris-polishing"].prerequisites = {"planetaris-metallic-ore-processing"}