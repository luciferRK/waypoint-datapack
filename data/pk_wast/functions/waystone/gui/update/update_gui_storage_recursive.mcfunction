# Construct the GUI without including the current waypoint
execute store result score %pk_wast_compare PKWASTValue run data get storage pk_wast:data Check.Waypoints[-1].Id
execute unless score %pk_wast_compare PKWASTValue = %pk_wast_current_id PKWASTValue run function pk_wast:waystone/gui/update/update_gui_storage_recursive_item

# Recursive check
scoreboard players remove %pk_wast_waypoints_length PKWASTValue 1
data remove storage pk_wast:data Check.Waypoints[-1]
execute unless score %pk_wast_waypoints_length PKWASTValue matches 0 run function pk_wast:waystone/gui/update/update_gui_storage_recursive