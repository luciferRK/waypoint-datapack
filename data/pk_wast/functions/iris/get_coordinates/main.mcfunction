# Gets the current coordinates and rotation.
# Coordinates are returned as a triplet of integer coordinates and a triplet of fractional coordinates.
# Rotation is returned as a steering vector of magnitude 1000000.

summon minecraft:marker ~ ~ ~ {Tags:["pk.iris","pk.iris.get_coordinates"]}
execute as @e[type=minecraft:marker,tag=pk.iris.get_coordinates,limit=1] run function pk_wast:iris/get_coordinates/as_marker