# Check if the name already exist in the waypoints list
data modify storage pk_wast:data WaypointToCheck set value {}
data modify storage pk_wast:data WaypointToCheck.Name set from entity @s CustomName
function pk_wast:waystone/helpers/check_if_name_already_exists/trigger
execute if score %pk_wast_waypoint_name_exists PKWASTValue matches 1 run function pk_wast:events/placed_waystone/errors/waypoint_name_already_exists
execute if score %pk_wast_waypoint_name_exists PKWASTValue matches 0 run function pk_wast:waystone/place/prepare