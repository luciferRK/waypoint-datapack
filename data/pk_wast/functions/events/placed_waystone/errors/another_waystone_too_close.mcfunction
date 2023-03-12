scoreboard players set %pk_wast_temp PKWASTValue 1
execute positioned ~-30 ~-30 ~-30 run tag @e[type=marker,tag=pk_wast_marker,dx=60,dy=60,dz=60,limit=1,sort=nearest] add pk_wast_current_marker
data modify storage pk_wast:data CurrentWaypoint set from entity @e[type=marker,tag=pk_wast_current_marker,limit=1] data
execute store result score %pk_wast_pos_x PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Pos[0]
execute store result score %pk_wast_pos_y PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Pos[1]
execute store result score %pk_wast_pos_z PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Pos[2]
tellraw @p[tag=pk_wast_current_player] [{"text":"Another waystone already exists within a radius of 30 blocks: ","color":"red"},{"nbt":"data.Name","entity":"@e[type=marker,tag=pk_wast_current_marker,limit=1]","bold":true,"interpret":true},{"text":" at "},{"score":{"name":"%pk_wast_pos_x","objective":"PKWASTValue"}},{"text":", "},{"score":{"name":"%pk_wast_pos_y","objective":"PKWASTValue"}},{"text":", "},{"score":{"name":"%pk_wast_pos_z","objective":"PKWASTValue"}}]
tag @e[type=marker,tag=pk_wast_current_marker,limit=1,sort=nearest] remove pk_wast_current_marker
function pk_wast:events/placed_waystone/cancel_placement