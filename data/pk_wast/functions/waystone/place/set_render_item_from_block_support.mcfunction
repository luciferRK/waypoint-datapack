# Item's id depending on support
summon armor_stand ~ ~ ~ {Tags:["pk_wast_current_item_render_holder"],Invisible:1b,Marker:1b} 
execute as @e[type=armor_stand,tag=pk_wast_current_item_render_holder,distance=..0.1] run loot replace entity @s weapon.mainhand mine ~ ~-1 ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute as @e[type=armor_stand,tag=pk_wast_current_item_render_holder,predicate=pk_wast:hold/valid_item,distance=..0.1,limit=1] run data modify storage pk_wast:data CurrentWaypoint.RenderItem.id set from entity @s HandItems[0].id
kill @e[type=armor_stand,tag=pk_wast_current_item_render_holder,distance=..0.1]