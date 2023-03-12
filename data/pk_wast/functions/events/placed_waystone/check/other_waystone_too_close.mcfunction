# Check if another waystone is close from the placed block location
scoreboard players set %pk_wast_temp PKWASTValue 0
execute positioned ~-30 ~-30 ~-30 if entity @e[type=marker,tag=pk_wast_marker,dx=60,dy=60,dz=60,limit=1,sort=nearest] at @s run function pk_wast:events/placed_waystone/errors/another_waystone_too_close
execute if score %pk_wast_temp PKWASTValue matches 0 run function pk_wast:events/placed_waystone/check/dimension