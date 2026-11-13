local utils = require("__hyperlanes-modpack__/utils")


for index, planet_name in ipairs(utils.planets) do
    if planet_name == "nauvis" then goto continue end
    if planet_name == "muluna" then goto continue end
    if planet_name == "hyarion" then goto continue end

    -- Item
    local asteroid_chunk_item = table.deepcopy(data.raw["item"]["metallic-asteroid-chunk"])
    asteroid_chunk_item.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk_item.order = "d[hyperlanes]-e[chunk]-" .. utils.planet_tier_orders[planet_name]

    -- Asteroid chunk    
    local asteroid_chunk = table.deepcopy(data.raw["asteroid-chunk"]["metallic-asteroid-chunk"])
    asteroid_chunk.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk.minable.result = "hyperlanes-" .. planet_name .. "-asteroid-chunk"

    -- Add this to planet asteroid_spawn_definitions
    data.raw["planet"][planet_name].asteroid_spawn_definitions = data.raw["planet"][planet_name].asteroid_spawn_definitions or {}
    table.insert(data.raw["planet"][planet_name].asteroid_spawn_definitions, {
        type = "asteroid-chunk",
        asteroid = "hyperlanes-" .. planet_name .. "-asteroid-chunk",
        probability = 0.0100,
        speed = 0.01666666666
    })



    data:extend({asteroid_chunk_item, asteroid_chunk})
    :: continue ::
end



