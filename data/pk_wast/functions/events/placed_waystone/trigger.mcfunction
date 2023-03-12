# Revoke advancement
advancement revoke @s only pk_wast:placed_waystone

# Find the placed entity
tag @s add pk_wast_current_player
execute as @e[type=armor_stand,tag=pk_wast_waystone_placer,distance=..10] at @s run function pk_wast:events/placed_waystone/check/block_fits
tag @s remove pk_wast_current_player

# Kill the placed entity
kill @e[type=armor_stand,tag=pk_wast_waystone_placer,distance=..10]