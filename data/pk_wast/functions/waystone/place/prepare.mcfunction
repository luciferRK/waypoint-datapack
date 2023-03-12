# Create waypoint
data modify storage pk_wast:data CurrentWaypoint set value {}

# Set Id, Name, and IsActive data
scoreboard players add %pk_wast_next_id PKWASTValue 1
execute store result storage pk_wast:data CurrentWaypoint.Id int 1 run scoreboard players get %pk_wast_next_id PKWASTValue
data modify storage pk_wast:data CurrentWaypoint.Name set from entity @s CustomName
data modify storage pk_wast:data CurrentWaypoint.IsActive set value 1b

# Set Pos, Biome and Dimension data
execute align xyz run summon marker ~ ~ ~ {Tags:["pk_wast_entity","pk_wast_marker","pk_wast_current_marker"]}
execute as @e[type=marker,tag=pk_wast_current_marker,distance=..10] at @s run function pk_wast:waystone/place/prepare_data_from_marker

# Add the waypoint to the waypoints list
data modify storage pk_wast:data Waypoints append from storage pk_wast:data CurrentWaypoint

# Warn players
tellraw @a [{"text":"Waystone ","color":"yellow"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=pk_wast_waystone_placer,limit=1,distance=..10]","bold":true,"interpret":true},{"text":" has been created at "},{"score":{"name":"%pk_wast_pos_x","objective":"PKWASTValue"}},{"text":", "},{"score":{"name":"%pk_wast_pos_y","objective":"PKWASTValue"}},{"text":", "},{"score":{"name":"%pk_wast_pos_z","objective":"PKWASTValue"}},{"text":" in "},{"nbt":"data.Dimension","entity":"@e[type=marker,tag=pk_wast_current_marker,distance=..10]"}]

# Remove tag
tag @e[type=marker,tag=pk_wast_current_marker,distance=..10] remove pk_wast_current_marker

# Place waystone
execute align xyz run function pk_wast:waystone/place/place

# Playsound animations
playsound block.stone.place block @a ~ ~ ~ 1 1.1
playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 1 1.8