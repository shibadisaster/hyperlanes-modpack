-- MULUNA (T2)
local muluna_tech = data.raw["technology"]["planet-discovery-muluna"]
table.insert(muluna_tech.prerequisites, "hyperlanes-t2-epp")

-- VULCANUS (T3)
local vulcanus_tech = data.raw["technology"]["planet-discovery-vulcanus"]
table.insert(vulcanus_tech.prerequisites, "hyperlanes-t3-epp")

-- GLEBA (T3)
local gleba_tech = data.raw["technology"]["planet-discovery-gleba"]
table.insert(gleba_tech.prerequisites, "hyperlanes-t3-epp")

-- FULGORA (T3)
local fulgora_tech = data.raw["technology"]["planet-discovery-fulgora"]
table.insert(fulgora_tech.prerequisites, "hyperlanes-t3-epp")