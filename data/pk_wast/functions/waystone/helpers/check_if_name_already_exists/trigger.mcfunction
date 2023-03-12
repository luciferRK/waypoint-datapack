# Start recursive name check
# - Name to search for needs to be stored in the storage pk_wast:data WaypointToCheck.Name
# - Output will be stored in %pk_wast_waypoint_name_exists (1 if found, 0 if not found)
scoreboard players set %pk_wast_waypoint_name_exists PKWASTValue 0
data modify storage pk_wast:data Check.Waypoints set from storage pk_wast:data Waypoints
execute store result score %pk_wast_waypoints_length PKWASTValue run data get storage pk_wast:data Check.Waypoints
execute unless score %pk_wast_waypoints_length PKWASTValue matches 0 run function pk_wast:waystone/helpers/check_if_name_already_exists/recursive