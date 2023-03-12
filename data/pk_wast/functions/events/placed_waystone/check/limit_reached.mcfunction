# Check if another waystone is close from the placed block location
scoreboard players set %pk_wast_temp PKWASTValue 0
execute store result score %pk_wast_temp PKWASTValue run data get storage pk_wast:data Waypoints
execute if score %pk_wast_temp PKWASTValue matches 28.. run function pk_wast:events/placed_waystone/errors/limit_reached
execute if score %pk_wast_temp PKWASTValue matches ..27 run function pk_wast:events/placed_waystone/check/other_waystone_too_close