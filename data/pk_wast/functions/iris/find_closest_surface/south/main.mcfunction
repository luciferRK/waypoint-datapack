#> pk_wast:iris/find_closest_surface/south/main
#
# Finds the closest surface facing south
#
# @within pk_wast:iris/find_closest_surface/main

data modify storage pk_wast:iris.data List set from storage pk_wast:iris.data Surfaces.South
execute store result score $surfaces iris run data get storage pk_wast:iris.data List
scoreboard players operation $cuboid_id iris = $surfaces iris
scoreboard players remove $cuboid_id iris 1
execute if score $surfaces iris matches 1.. run function pk_wast:iris/find_closest_surface/south/loop