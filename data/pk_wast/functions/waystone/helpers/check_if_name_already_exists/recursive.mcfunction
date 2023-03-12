# Check if the name of the waypoint to check matches the name of the current waypoint of the list
data modify storage pk_wast:data Check.Compare.Name set from storage pk_wast:data Check.Waypoints[-1].Name
execute store result score %pk_wast_compare PKWASTValue run data modify storage pk_wast:data Check.Compare.Name set from storage pk_wast:data WaypointToCheck.Name
execute if score %pk_wast_compare PKWASTValue matches 0 run scoreboard players set %pk_wast_waypoint_name_exists PKWASTValue 1

# Recursive check
scoreboard players remove %pk_wast_waypoints_length PKWASTValue 1
data remove storage pk_wast:data Check.Waypoints[-1]
execute unless score %pk_wast_waypoints_length PKWASTValue matches 0 unless score %pk_wast_waypoint_name_exists PKWASTValue matches 1 run function pk_wast:waystone/helpers/check_if_name_already_exists/recursive