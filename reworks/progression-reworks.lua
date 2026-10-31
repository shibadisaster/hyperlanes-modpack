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

-- CERYS (T4)
local cerys_tech = data.raw["technology"]["moon-discovery-cerys"]
table.insert(cerys_tech.prerequisites, "hyperlanes-t4-epp")

-- ARIG (T5)
local arig_tech = data.raw["technology"]["planet-discovery-arig"]
table.insert(arig_tech.prerequisites, "hyperlanes-t5-epp")

-- RUBIA (T5)
local rubia_tech = data.raw["technology"]["planet-discovery-rubia"]
table.insert(rubia_tech.prerequisites, "hyperlanes-t5-epp")

-- MURIA (T5)
local muria_tech = data.raw["technology"]["planet-discovery-muria"]
table.insert(muria_tech.prerequisites, "hyperlanes-t5-epp")

-- HYARION (T6)
local hyarion_tech = data.raw["technology"]["planet-discovery-hyarion"]
table.insert(hyarion_tech.prerequisites, "hyperlanes-t6-epp")

-- MOSHINE (T6)
local moshine_tech = data.raw["technology"]["planet-discovery-moshine"]
table.insert(moshine_tech.prerequisites, "hyperlanes-t6-epp")

-- AQUILO (T7)
local aquilo_tech = data.raw["technology"]["planet-discovery-aquilo"]
table.insert(aquilo_tech.prerequisites, "hyperlanes-t7-epp")

-- Removing Aquilo requiring Pathological science because huh???????
local new_prereqs = {}
for i, v in ipairs(aquilo_tech.prerequisites) do
    if v ~= "planetaris-pathological-science-pack" and v ~= "planetaris-bioengineering-science-pack" then
        table.insert(new_prereqs, v)
    end
end
aquilo_tech.prerequisites = new_prereqs


-- MARAXSIS (T7)
local maraxsis_tech = data.raw["technology"]["planet-discovery-maraxsis"]
table.insert(maraxsis_tech.prerequisites, "hyperlanes-t7-epp")

-- VESTA (T8)
local vesta_tech = data.raw["technology"]["planet-discovery-vesta"]
table.insert(vesta_tech.prerequisites, "hyperlanes-t8-epp")

-- TELLUS (T8)
local tellus_tech = data.raw["technology"]["planet-discovery-tellus"]
table.insert(tellus_tech.prerequisites, "hyperlanes-t8-epp")

-- PARACELSIN (T8)
local paracelsin_tech = data.raw["technology"]["planet-discovery-paracelsin"]
table.insert(paracelsin_tech.prerequisites, "hyperlanes-t8-epp")

-- SOLAR SYSTEM EDGE / SHATTERED PLANET (T9)
local solar_system_edge_tech = data.raw["technology"]["stellar-discovery-solar-system-edge"]
table.insert(solar_system_edge_tech.prerequisites, "s1_gas_manipulation_science_pack")
table.insert(solar_system_edge_tech.prerequisites, "planetaris-pathological-science-pack")
table.insert(solar_system_edge_tech.prerequisites, "galvanization-science-pack")

-- PANGLIA (T10)
local panglia_tech = data.raw["technology"]["panglia_planet_discovery_panglia"]
table.insert(panglia_tech.prerequisites, "hyperlanes-t10-epp")





-- PRODUCTION & UTILITY SCIENCE PACKS
local prsp_tech = data.raw["technology"]["production-science-pack"]
table.insert(prsp_tech.prerequisites, "space-science-pack")
table.insert(prsp_tech.unit.ingredients, {"space-science-pack", 1})

local utsp_tech = data.raw["technology"]["utility-science-pack"]
table.insert(utsp_tech.prerequisites, "space-science-pack")
table.insert(utsp_tech.unit.ingredients, {"space-science-pack", 1})



-- BIG NOTES
--              Return fusion to Aquilo instead of post-Paracelsin, since Vesta requires it...
--                  Maybe inefficient/nonrenewable recipe on Aquilo then better recipe after Paracelsin???