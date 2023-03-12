# Start recursive id check
data modify storage pk_wast:data Replace.Waypoints set value []
data modify storage pk_wast:data Check.Waypoints set from storage pk_wast:data Waypoints
execute store result score %pk_wast_waypoints_length PKWASTValue run data get storage pk_wast:data Check.Waypoints
execute unless score %pk_wast_waypoints_length PKWASTValue matches 0 run function pk_wast:waystone/remove/remove_waypoint_in_storage_recursive