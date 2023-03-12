# Add current item to the waypoints list
data modify storage pk_wast:data Gui.Items prepend from storage pk_wast:data Check.Waypoints[-1].RenderItem
execute store result storage pk_wast:data Gui.Items[0].Slot byte 1 run scoreboard players get %pk_wast_current_slot PKWASTValue
scoreboard players add %pk_wast_current_slot PKWASTValue 1