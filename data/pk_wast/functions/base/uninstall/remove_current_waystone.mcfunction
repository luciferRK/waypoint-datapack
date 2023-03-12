data modify storage pk_wast:data CurrentWaypoint set from storage pk_wast:data Remove.Waypoints[-1]
data modify entity @s Pos set from storage pk_wast:data CurrentWaypoint.Pos
execute at @s run function pk_wast:base/uninstall/remove_current_waystone_from_marker_position