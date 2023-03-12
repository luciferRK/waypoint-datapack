# Sets coordinates of the ray marker to the calculated block coordinates (int only)
# The entity is teleported at the corner of the block
#
# @within pk_wast:iris/raycast/loop
# @context a marker

# Save to storage
data modify storage pk_wast:iris.data EntityTag.Pos set value [0.0d,0.0d,0.0d]
execute store result storage pk_wast:iris.data EntityTag.Pos[0] double 1 run scoreboard players get $[x] iris
execute store result storage pk_wast:iris.data EntityTag.Pos[1] double 1 run scoreboard players get $[y] iris
execute store result storage pk_wast:iris.data EntityTag.Pos[2] double 1 run scoreboard players get $[z] iris

# Apply position
data modify entity @s Pos set from storage pk_wast:iris.data EntityTag.Pos