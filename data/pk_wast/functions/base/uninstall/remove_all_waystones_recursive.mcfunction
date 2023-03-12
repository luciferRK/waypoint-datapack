# Remove waystone
summon marker ~ ~ ~ {Tags:["pk_wast_waystone_remover"]}
execute as @e[type=marker,tag=pk_wast_waystone_remover,distance=..0.1] at @s run function pk_wast:base/uninstall/remove_current_waystone

# Recursive function
data remove storage pk_wast:data Remove.Waypoints[-1]
scoreboard players remove %pk_wast_waypoints_length PKWASTValue 1
execute if score %pk_wast_waypoints_length PKWASTValue matches 1.. run function pk_wast:base/uninstall/remove_all_waystones_recursive