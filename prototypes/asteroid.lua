local utils = require("__hyperlanes-modpack__/utils")


for index, planet_name in ipairs(utils.planets) do
    if planet_name == "nauvis" then goto continue end
    if planet_name == "muluna" then goto continue end
    if planet_name == "hyarion" then goto continue end

    local asteroid_chunk_item = table.deepcopy(data.raw["item"]["promethium-asteroid-chunk"])
    asteroid_chunk_item.name = "hyperlanes-" .. planet_name .. "-asteroid-chunk"
    asteroid_chunk_item.order = "d[hyperlanes]-e[chunk]-" .. utils.planet_tier_orders[planet_name]

    data:extend({asteroid_chunk_item})

    :: continue ::
end