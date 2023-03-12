# Runs when the ray enters a non-air block, and identifies whether or not the ray intersects with one of its surfaces
#
# @within pk_wast:iris/raycast/loop
# @context a marker and its position
# @output
#	score $ray_hits_block iris
#		0 or 1. Whether or not the ray hits any surface of the current block.

# Identify the block and get a list of surfaces
# @FORK_EDIT : do it only for cubic blocks (defined in function pk_wast:iris/setup/load)
# data remove storage pk_wast:iris.data Surfaces
# function pk_wast:iris/get_hitbox/block/cubic

# See if the ray hits any surface
scoreboard players set $ray_hits_surface iris 0
execute if data storage pk_wast:iris.data Surfaces run function pk_wast:iris/find_closest_surface/main
execute if score $ray_hits_surface iris matches 1 run scoreboard players operation $block_distance iris = $min_distance_to_surface iris
scoreboard players operation $ray_hits_block iris = $ray_hits_surface iris