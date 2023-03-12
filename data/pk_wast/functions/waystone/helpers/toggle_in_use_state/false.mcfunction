# Retrieve the relative player that used it and clear its score
tag @s add pk_wast_current_marker
execute as @a[distance=..10] if score @s PKWASTInteractionId = @e[type=marker,tag=pk_wast_current_marker,limit=1,distance=..0.1] PKWASTInteractionId run scoreboard players set @s PKWASTInteractionId -1
tag @s remove pk_wast_current_marker

# Unlock container
data remove block ~ ~1 ~ Lock

# Remove in use tag
tag @s remove pk_wast_in_use

# Stop sound
stopsound @a[distance=..30] block block.barrel.close