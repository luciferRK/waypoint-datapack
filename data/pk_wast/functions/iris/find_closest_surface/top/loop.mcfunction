#> pk_wast:iris/find_closest_surface/top/loop
#
# Determines if the ray hits the current surface
#
# @within pk_wast:iris/find_closest_surface/top/main
# @within pk_wast:iris/find_closest_surface/top/loop

# Store all coordinates to scores (List[1] and List[4] should have the same values)
execute store result score $x0 iris run data get storage pk_wast:iris.data List[-1][0]
execute store result score $y0 iris run data get storage pk_wast:iris.data List[-1][1]
execute store result score $z0 iris run data get storage pk_wast:iris.data List[-1][2]
execute store result score $x1 iris run data get storage pk_wast:iris.data List[-1][3]
execute store result score $z1 iris run data get storage pk_wast:iris.data List[-1][5]

# If the current position is already in the plane of the surface, check if it is in the surface
execute if score ${y} iris = $y0 iris if score ${x} iris >= $x0 iris if score ${x} iris <= $x1 iris if score ${z} iris >= $z0 iris if score ${z} iris <= $z1 iris run function pk_wast:iris/find_closest_surface/ray_already_in_surface

# If the current position is before the plane, check if it hits the surface and get the position of that intersection
execute if score ${y} iris > $y0 iris run function pk_wast:iris/find_closest_surface/top/get_distance

# Loop this function
data remove storage pk_wast:iris.data List[-1]
scoreboard players remove $surfaces iris 1
scoreboard players remove $cuboid_id iris 1
execute if score $surfaces iris matches 1.. run function pk_wast:iris/find_closest_surface/top/loop