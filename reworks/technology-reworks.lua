local gmsp_tech = data.raw["technology"]["s1_gas_manipulation_science_pack"]
gmsp_tech.essential = true

local crpr_tech = data.raw["technology"]["craptonite-processing"]
crpr_tech.essential = true

-- Since this requires 4 planetary science packs, exploration science requires vulc, fulg, gleba, AND cerys to obtain, cerys only being doable after the rest are complete because of EPP gating
local exsp_tech = data.raw["technology"]["interstellar-science-pack"]
table.insert(exsp_tech.prerequisites, "cerysian-science-pack")