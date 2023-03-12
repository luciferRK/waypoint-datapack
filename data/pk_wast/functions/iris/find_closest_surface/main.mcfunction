# Determines if the ray hits any of the surfaces in the Surfaces list, and if so, returns which surface is hit first
#
# @within pk_wast:iris/raycast/on_block_found

scoreboard players set $min_distance_to_surface iris 1733
scoreboard players reset $closest_cuboid_id iris

execute if score $dx iris matches 1.. unless score $min_distance_to_surface iris matches 0 run function pk_wast:iris/find_closest_surface/west/main
execute if score $dx iris matches ..-1 unless score $min_distance_to_surface iris matches 0 run function pk_wast:iris/find_closest_surface/east/main
execute if score $dy iris matches 1.. unless score $min_distance_to_surface iris matches 0 run function pk_wast:iris/find_closest_surface/bottom/main
execute if score $dy iris matches ..-1 unless score $min_distance_to_surface iris matches 0 run function pk_wast:iris/find_closest_surface/top/main
execute if score $dz iris matches 1.. unless score $min_distance_to_surface iris matches 0 run function pk_wast:iris/find_closest_surface/north/main
execute if score $dz iris matches ..-1 unless score $min_distance_to_surface iris matches 0 run function pk_wast:iris/find_closest_surface/south/main