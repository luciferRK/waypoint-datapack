data modify entity @s Motion set from entity @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"text":"Waystones list§r"}'}}}},distance=..10,limit=1] Motion
scoreboard players set @s PKWASTAirTogglingDelay 60
scoreboard players set %pk_wast_air_toggling PKWASTAirTogglingDelay 60
tag @s remove pk_wast_current_item