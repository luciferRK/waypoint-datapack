# Set score GUI need update to 1
scoreboard players set %pk_wast_gui_need_update PKWASTValue 1

# Retrieve the relative player
tag @s add pk_wast_current_marker
execute as @a[distance=..10] if score @s PKWASTInteractionId = @e[type=marker,tag=pk_wast_current_marker,distance=..0.1,limit=1] PKWASTInteractionId run tag @s add pk_wast_current_player

# Summon the item on the player 
execute at @p[tag=pk_wast_current_player,distance=..10] run summon item ~ ~ ~ {Tags:["pk_wast_current_item"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=pk_wast_current_item,distance=..10,limit=1] Item set from storage pk_wast:data Check.Container.Items[-1]
tag @e[type=item,tag=pk_wast_current_item,distance=..10] remove pk_wast_current_item

# Remove the current tags
tag @p[tag=pk_wast_current_player,distance=..10] remove pk_wast_current_player
tag @s remove pk_wast_current_marker