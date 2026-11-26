-- local utils = require("__hyperlanes-modpack__/utils").planet_tier_associations


local planet_tier_associations = {
    ["nauvis"] = 1,
    ["muluna"] = 2,
    ["fulgora"] = 3,
    ["gleba"] = 3,
    ["vulcanus"] = 3,
    ["castra"] = 4,
    ["cerys"] = 4,
    ["crucible"] = 4,
    ["arig"] = 5,
    ["muria"] = 5,
    ["rubia"] = 5,
    ["hyarion"] = 6,
    ["moshine"] = 6,
    ["aquilo"] = 7,
    ["maraxsis"] = 7,
    ["paracelsin"] = 8,
    ["tellus"] = 8,
    ["vesta"] = 8,
    ["carna"] = 9,
    ["panglia"] = 10
}


local epp_tier_associations = {
    ["hyperlanes-t2-epp-equipment"] = 2,
    ["hyperlanes-t3-epp-equipment"] = 3,
    ["hyperlanes-t4-epp-equipment"] = 4,
    ["hyperlanes-t5-epp-equipment"] = 5,
    ["hyperlanes-t6-epp-equipment"] = 6,
    ["hyperlanes-t7-epp-equipment"] = 7,
    ["hyperlanes-t8-epp-equipment"] = 8,
    ["hyperlanes-t9-epp-equipment"] = 9,
    ["hyperlanes-t10-epp-equipment"] = 10,
}


local tick_interval = 6
local ticks_per_second = 60.0 / tick_interval

script.on_nth_tick(tick_interval,
    function()
        for i in pairs(game.connected_players) do
            local player = game.connected_players[i]
            local surface = player.surface

            local armor = nil
            if player and player.valid and player.character and player.get_inventory(defines.inventory.character_armor) then armor = player.get_inventory(defines.inventory.character_armor)[1] end

            local equipment_grid = nil
            if armor and armor.valid_for_read and armor.grid then equipment_grid = armor.grid end -- thanks lua very cool

            local protection_value = 1
            local danger_value = planet_tier_associations[surface.name] or 2

            -- if armor.valid_for_read then
            --     game.print("Player is wearing " .. armor.name)
            --     if equipment_grid then
            --         game.print("Its got an equipment_grid!!!! Inside the equipment_grid is " .. equipment_grid.get_contents())
            --     end
            -- end

            if equipment_grid and equipment_grid.valid then
                for index, equipment in pairs(equipment_grid.get_contents()) do
                    local equipment_protection_value = epp_tier_associations[equipment.name] or 1
                    -- game.print("    " .. equipment.name .. ", protvalue = " .. equipment_protection_value)
                    if equipment_protection_value > protection_value then protection_value = equipment_protection_value end
                end
            end

            if danger_value > protection_value then
                local difference = math.abs(danger_value - protection_value)
                local damage_taken_per_second = 20 * 1.5 ^ (danger_value - 1)

                if player.valid and player.character then
                    player.character.damage(damage_taken_per_second / ticks_per_second, "enemy")
                end
                -- game.print("Player takes " .. damage_taken_per_second / ticks_per_second .. " damage from environment")
            end

            -- game.print("Player " .. player.name .. " is on surface " .. surface.name .. " which is a tier " .. danger_value .. " planet, with a protection value of " .. protection_value)
        end
    end
)