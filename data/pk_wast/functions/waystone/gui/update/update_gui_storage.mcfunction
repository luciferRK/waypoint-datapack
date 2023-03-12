# Suggest all waypoints excluding this one
scoreboard players set %pk_wast_current_slot PKWASTValue 0
execute store result score %pk_wast_current_id PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Id
data modify storage pk_wast:data Gui.Items set value []
data modify storage pk_wast:data Check.Waypoints set from storage pk_wast:data Waypoints
execute store result score %pk_wast_waypoints_length PKWASTValue run data get storage pk_wast:data Check.Waypoints
execute unless score %pk_wast_waypoints_length PKWASTValue matches 0 run function pk_wast:waystone/gui/update/update_gui_storage_recursive