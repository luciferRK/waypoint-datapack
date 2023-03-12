# Construct the waypoints array without the waypoint that match the checked id
execute store result score %pk_wast_compare PKWASTValue run data get storage pk_wast:data Check.Waypoints[-1].Id
execute unless score %pk_wast_compare PKWASTValue = %pk_wast_current_id PKWASTValue run data modify storage pk_wast:data Replace.Waypoints prepend from storage pk_wast:data Check.Waypoints[-1]

# Recursive check
scoreboard players remove %pk_wast_waypoints_length PKWASTValue 1
data remove storage pk_wast:data Check.Waypoints[-1]
# - If done, replace the Waypoints storage data with the Replace.Waypoints storage data
execute if score %pk_wast_waypoints_length PKWASTValue matches 0 run data modify storage pk_wast:data Waypoints set from storage pk_wast:data Replace.Waypoints
# - Otherwise, continue to recursively run
execute unless score %pk_wast_waypoints_length PKWASTValue matches 0 run function pk_wast:waystone/remove/remove_waypoint_in_storage_recursive