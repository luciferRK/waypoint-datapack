# Retrieve waystones
data modify storage pk_wast:data Remove.Waypoints set value []
execute if entity @s[predicate=pk_wast:dimension/overworld] run data modify storage pk_wast:data Remove.Waypoints append from storage pk_wast:data Waypoints[{Dimension:"Overworld"}]
execute if entity @s[predicate=pk_wast:dimension/the_nether] run data modify storage pk_wast:data Remove.Waypoints append from storage pk_wast:data Waypoints[{Dimension:"The Nether"}]
execute if entity @s[predicate=pk_wast:dimension/the_end] run data modify storage pk_wast:data Remove.Waypoints append from storage pk_wast:data Waypoints[{Dimension:"THe End"}]

# Remove waystones 
execute store result score %pk_wast_waypoints_length PKWASTValue run data get storage pk_wast:data Remove.Waypoints
execute if score %pk_wast_waypoints_length PKWASTValue matches 1.. run function pk_wast:base/uninstall/remove_all_waystones_recursive

# Remove waypoints
execute if entity @s[predicate=pk_wast:dimension/overworld] run data remove storage pk_wast:data Waypoints[{Dimension:"Overworld"}]
execute if entity @s[predicate=pk_wast:dimension/the_nether] run data remove storage pk_wast:data Waypoints[{Dimension:"The Nether"}]
execute if entity @s[predicate=pk_wast:dimension/the_end] run data remove storage pk_wast:data Waypoints[{Dimension:"THe End"}]

# Logs
tellraw @s {"text":"Removed all waystones in the current dimension successfully","color":"red"}