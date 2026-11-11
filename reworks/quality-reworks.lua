data.raw["quality"]["legendary"].next = "mythic"
data.raw["quality"]["legendary"].next_probability = 0.01
data.raw["quality"]["legendary"].chain_probability = 0.001

data.raw["quality"]["broken"].next = "normal"
data.raw["quality"]["broken"].next_probability = 10.0 -- 10x as likely to upgrade quality
data.raw["quality"]["broken"].chain_probability = 0.0

data.raw["quality"]["mythic"].next = "ethereal"
data.raw["quality"]["mythic"].next_probability = 0.01
data.raw["quality"]["mythic"].chain_probability = 0.001


-- Quality degradation
data.raw["quality"]["normal"].previous_probability = 1.0
data.raw["quality"]["uncommon"].previous_probability = 0.5 ^ 1
data.raw["quality"]["rare"].previous_probability = 0.5 ^ 2
data.raw["quality"]["epic"].previous_probability = 0.5 ^ 3
data.raw["quality"]["legendary"].previous_probability = 0.5 ^ 4
data.raw["quality"]["mythic"].previous_probability = 0.5 ^ 5
data.raw["quality"]["ethereal"].previous_probability = 0.5 ^ 6

data.raw["quality"]["normal"].previous_chain_probability = 0.0
data.raw["quality"]["uncommon"].previous_chain_probability = 0.0
data.raw["quality"]["rare"].previous_chain_probability = 0.0
data.raw["quality"]["epic"].previous_chain_probability = 0.0
data.raw["quality"]["legendary"].previous_chain_probability = 0.0
data.raw["quality"]["mythic"].previous_chain_probability = 0.0
data.raw["quality"]["ethereal"].previous_chain_probability = 0.0



-- Quality properties
data.raw["quality"]["broken"].color = {152, 52, 52}
data.raw["quality"]["uncommon"].color = {21, 81, 29}
data.raw["quality"]["rare"].color = {16, 65, 112}
data.raw["quality"]["epic"].color = {125, 0, 163}
data.raw["quality"]["legendary"].color = {204, 119, 0}
data.raw["quality"]["mythic"].color =  {230, 0, 0}
data.raw["quality"]["ethereal"].color = {0, 255, 183}

data.raw["quality"]["normal"].icon = "__hyperlanes-modpack__/graphics/icons/q1.png"
data.raw["quality"]["uncommon"].icon = "__hyperlanes-modpack__/graphics/icons/q2.png"
data.raw["quality"]["rare"].icon = "__hyperlanes-modpack__/graphics/icons/q3.png"
data.raw["quality"]["epic"].icon = "__hyperlanes-modpack__/graphics/icons/q4.png"
data.raw["quality"]["legendary"].icon = "__hyperlanes-modpack__/graphics/icons/q5.png"
data.raw["quality"]["mythic"].icon =  "__hyperlanes-modpack__/graphics/icons/q6.png"
data.raw["quality"]["ethereal"].icon = "__hyperlanes-modpack__/graphics/icons/q7.png"

data.raw["quality"]["uncommon"].level = 2
data.raw["quality"]["rare"].level = 4
data.raw["quality"]["epic"].level = 6
data.raw["quality"]["legendary"].level = 8
data.raw["quality"]["mythic"].level = 10
data.raw["quality"]["ethereal"].level = 12

data.raw["quality"]["broken"].default_multiplier = 0.1
data.raw["quality"]["uncommon"].default_multiplier = 1.5
data.raw["quality"]["rare"].default_multiplier = 2.0
data.raw["quality"]["epic"].default_multiplier = 2.5
data.raw["quality"]["legendary"].default_multiplier = 3.0
data.raw["quality"]["mythic"].default_multiplier = 3.5
data.raw["quality"]["ethereal"].default_multiplier = 4.0

data.raw["quality"]["uncommon"].mining_drill_resource_drain_multiplier = 1.0 / 4.0
data.raw["quality"]["rare"].mining_drill_resource_drain_multiplier = 1.0 / 16.0
data.raw["quality"]["epic"].mining_drill_resource_drain_multiplier = 1.0 / 64.0
data.raw["quality"]["legendary"].mining_drill_resource_drain_multiplier = 1.0 / 100.0
data.raw["quality"]["mythic"].mining_drill_resource_drain_multiplier = 1.0 / 100.0
data.raw["quality"]["ethereal"].mining_drill_resource_drain_multiplier = 1.0 / 100.0

data.raw["quality"]["broken"].beacon_power_usage_multiplier = 10.0
data.raw["quality"]["uncommon"].beacon_power_usage_multiplier = 0.8 ^ 1
data.raw["quality"]["rare"].beacon_module_slots_bonus = 0.8 ^ 2
data.raw["quality"]["epic"].beacon_module_slots_bonus = 0.8 ^ 3
data.raw["quality"]["legendary"].beacon_module_slots_bonus = 0.8 ^ 4
data.raw["quality"]["mythic"].beacon_module_slots_bonus = 0.8 ^ 5
data.raw["quality"]["ethereal"].beacon_module_slots_bonus = 0.8 ^ 6

data.raw["quality"]["uncommon"].beacon_module_slots_bonus = 0
data.raw["quality"]["rare"].beacon_module_slots_bonus = 0
data.raw["quality"]["epic"].beacon_module_slots_bonus = 0
data.raw["quality"]["legendary"].beacon_module_slots_bonus = 0
data.raw["quality"]["mythic"].beacon_module_slots_bonus = 0
data.raw["quality"]["ethereal"].beacon_module_slots_bonus = 1

data.raw["quality"]["uncommon"].mining_drill_module_slots_bonus = 1
data.raw["quality"]["rare"].mining_drill_module_slots_bonus = 2
data.raw["quality"]["epic"].mining_drill_module_slots_bonus = 3
data.raw["quality"]["legendary"].mining_drill_module_slots_bonus = 4
data.raw["quality"]["mythic"].mining_drill_module_slots_bonus = 5
data.raw["quality"]["ethereal"].mining_drill_module_slots_bonus = 6

data.raw["quality"]["uncommon"].lab_module_slots_bonus = 1
data.raw["quality"]["rare"].lab_module_slots_bonus = 2
data.raw["quality"]["epic"].lab_module_slots_bonus = 3
data.raw["quality"]["legendary"].lab_module_slots_bonus = 4
data.raw["quality"]["mythic"].lab_module_slots_bonus = 5
data.raw["quality"]["ethereal"].lab_module_slots_bonus = 6

data.raw["quality"]["broken"].localised_name = "Broken"
data.raw["quality"]["uncommon"].localised_name = "Industrial-grade"
data.raw["quality"]["rare"].localised_name = "grumpy"
data.raw["quality"]["epic"].localised_name = "angry"
data.raw["quality"]["legendary"].localised_name = "Space-grade"
data.raw["quality"]["mythic"].localised_name = "Interstellar-grade"
data.raw["quality"]["ethereal"].localised_name = "Perfected"

data.raw["quality"]["broken"].fluid_wagon_capacity_multiplier = data.raw["quality"]["broken"].default_multiplier
data.raw["quality"]["uncommon"].fluid_wagon_capacity_multiplier = data.raw["quality"]["uncommon"].default_multiplier
data.raw["quality"]["rare"].fluid_wagon_capacity_multiplier = data.raw["quality"]["rare"].default_multiplier
data.raw["quality"]["epic"].fluid_wagon_capacity_multiplier = data.raw["quality"]["epic"].default_multiplier
data.raw["quality"]["legendary"].fluid_wagon_capacity_multiplier = data.raw["quality"]["legendary"].default_multiplier
data.raw["quality"]["mythic"].fluid_wagon_capacity_multiplier = data.raw["quality"]["mythic"].default_multiplier
data.raw["quality"]["ethereal"].fluid_wagon_capacity_multiplier = data.raw["quality"]["ethereal"].default_multiplier

data.raw["quality"]["broken"].inventory_size_multiplier = data.raw["quality"]["broken"].default_multiplier
data.raw["quality"]["uncommon"].inventory_size_multiplier = data.raw["quality"]["uncommon"].default_multiplier
data.raw["quality"]["rare"].inventory_size_multiplier = data.raw["quality"]["rare"].default_multiplier
data.raw["quality"]["epic"].inventory_size_multiplier = data.raw["quality"]["epic"].default_multiplier
data.raw["quality"]["legendary"].inventory_size_multiplier = data.raw["quality"]["legendary"].default_multiplier
data.raw["quality"]["mythic"].inventory_size_multiplier = data.raw["quality"]["mythic"].default_multiplier
data.raw["quality"]["ethereal"].inventory_size_multiplier = data.raw["quality"]["ethereal"].default_multiplier

data.raw["quality"]["broken"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["broken"].default_multiplier
data.raw["quality"]["uncommon"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["uncommon"].default_multiplier
data.raw["quality"]["rare"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["rare"].default_multiplier
data.raw["quality"]["epic"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["epic"].default_multiplier
data.raw["quality"]["legendary"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["legendary"].default_multiplier
data.raw["quality"]["mythic"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["mythic"].default_multiplier
data.raw["quality"]["ethereal"].cargo_wagon_inventory_size_multiplier = data.raw["quality"]["ethereal"].default_multiplier

-- Broken quality stats
data.raw["quality"]["broken"].accumulator_capacity_multiplier = 0.1
data.raw["quality"]["broken"].module_speed_multiplier = 0.1
data.raw["quality"]["broken"].module_consumption_multiplier = 0.1
data.raw["quality"]["broken"].module_pollution_multiplier = 0.1
data.raw["quality"]["broken"].module_productivity_multiplier = 0.1
data.raw["quality"]["broken"].module_quality_multiplier = 0.1


-- Targets for quality bonuses
data.raw["lab"]["lab"].quality_affects_module_slots = true
data.raw["lab"]["biolab"].quality_affects_module_slots = true
data.raw["lab"]["cerys-lab"].quality_affects_module_slots = true
data.raw["lab"]["neural_computer"].quality_affects_module_slots = true
data.raw["lab"]["cryolab"].quality_affects_module_slots = true

data.raw["mining-drill"]["electric-mining-drill"].quality_affects_module_slots = true
data.raw["mining-drill"]["big-mining-drill"].quality_affects_module_slots = true
data.raw["mining-drill"]["hyarion-geode-mining-drill"].quality_affects_module_slots = true
data.raw["mining-drill"]["pumpjack"].quality_affects_module_slots = true

data.raw["beacon"]["beacon"].quality_affects_module_slots = true
data.raw["beacon"]["maraxsis-conduit"].quality_affects_module_slots = true