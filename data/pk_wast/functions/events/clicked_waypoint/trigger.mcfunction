# Reset score 
scoreboard players set @s PKWASTClickedWaypoint 0

# Search player's relative waystone marker
tag @s add pk_wast_current_player
execute as @e[type=marker,tag=pk_wast_marker,distance=..10] if score @s PKWASTInteractionId = @p[tag=pk_wast_current_player] PKWASTInteractionId run tag @s add pk_wast_current_marker

# Retrieve clicked item
data modify storage pk_wast:data CurrentWaypoint set from entity @e[type=marker,tag=pk_wast_current_marker,distance=..10,limit=1] data
function pk_wast:waystone/gui/update/update_gui_storage
data modify storage pk_wast:data Compare.Gui.Items set value []
execute at @e[type=marker,tag=pk_wast_current_marker,distance=..10] run data modify storage pk_wast:data Compare.Gui.Items append from block ~ ~1 ~ Items[{tag:{pkWastGUI:1b}}]
function pk_wast:events/clicked_waypoint/retrieve_clicked_item

# Remove item from the player cursor 
clear @s #pk_wast:all{pkWastGUI:1b}

# Force the container to be closed
execute at @e[type=marker,tag=pk_wast_current_marker,distance=..10] run setblock ~ ~1 ~ air replace
execute at @e[type=marker,tag=pk_wast_current_marker,distance=..10] run setblock ~ ~1 ~ barrel{CustomName:'{"text":"Waystones list§r"}'}

# Teleport the player
summon marker ~ ~ ~ {Tags:["pk_wast_teleportation_marker"]}
execute as @e[type=marker,tag=pk_wast_teleportation_marker,distance=..0.1,limit=1] run function pk_wast:events/clicked_waypoint/tp_player_to_waystone

# Remove the current tags
tag @e[type=marker,tag=pk_wast_current_marker,distance=..10] remove pk_wast_current_marker
tag @s remove pk_wast_current_player