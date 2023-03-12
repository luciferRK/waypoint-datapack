# Revoke advancement
advancement revoke @s only pk_wast:click_waystone

# Define the current id
tag @s add pk_wast_current_player
data modify storage pk_wast:iris.input Search set value "barrel"
execute anchored eyes positioned ^ ^ ^ run function pk_wast:iris/get_target
execute as @e[type=minecraft:marker,tag=pk.iris.ray,distance=..16] at @s run function pk_wast:events/clicked_waystone/at_block_location
tag @s remove pk_wast_current_player

# Remove marker
kill @e[type=minecraft:marker,tag=pk.iris.ray,distance=..16]