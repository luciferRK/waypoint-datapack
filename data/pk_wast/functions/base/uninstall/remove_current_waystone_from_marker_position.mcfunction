forceload add ~ ~
fill ~ ~ ~ ~ ~2 ~ air
kill @e[type=#pk_wast:wast_decorative_entities,tag=pk_wast_entity,distance=..5]
kill @e[type=marker,tag=pk_wast_entity,distance=..5]
forceload remove ~ ~
tag @s remove pk_wast_waystone_remover
kill @s