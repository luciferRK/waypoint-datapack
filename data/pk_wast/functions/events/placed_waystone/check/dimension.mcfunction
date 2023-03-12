# Check dimension
execute unless entity @s[predicate=pk_wast:dimension/vanilla_dimension] run function pk_wast:events/placed_waystone/errors/invalid_dimension
execute if entity @s[predicate=pk_wast:dimension/vanilla_dimension] run function pk_wast:events/placed_waystone/check/block_name