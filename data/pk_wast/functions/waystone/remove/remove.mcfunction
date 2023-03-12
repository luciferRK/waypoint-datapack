# Remove waypoint in storage
scoreboard players operation %pk_wast_current_id PKWASTValue = @s PKWASTValue
function pk_wast:waystone/remove/remove_waypoint_in_storage

# Force GUI update to in use waystones
function pk_wast:waystone/gui/update/update_in_use_waystones

# Warn players that a waystone have been removed
tag @s add pk_wast_current_marker
tellraw @a [{"text":"Waystone ","color":"red"},{"nbt":"data.Name","entity":"@e[type=marker,tag=pk_wast_current_marker,distance=..0.1,limit=1]","bold":true,"interpret":true},{"text":" has been removed"}]
tag @s remove pk_wast_current_marker

# Summon item
summon item ~ ~1 ~ {Tags:["pk_wast_current_item","pk_wast_air_toggling"],Item:{id:"stray_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Waystone","color":"yellow","italic":false}',Lore:['{"text":"Waystone","color":"yellow","italic":false}','{"text":"- Rename it before using it","color":"dark_purple","italic":false}','{"text":"- Can only be placed in vanilla dimensions","color":"dark_purple","italic":false}']},HideFlags:1,pkWaystone:1b,Enchantments:[{id:"minecraft:power",lvl:1s}],EntityTag:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["pk_wast_waystone_placer"]},CustomModelData:16110051}},PickupDelay:0}
execute as @e[type=item,tag=pk_wast_current_item,distance=..10,limit=1] at @s run function pk_wast:waystone/remove/set_dropped_item_data

# Remove blocks and entity
execute positioned ~ ~-1 ~ run kill @e[type=#pk_wast:wast_decorative_entities,dy=3]
kill @e[type=item,nbt={Item:{id:"minecraft:andesite_wall",Count:1b},Age:0s},dy=1]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{Name:'{"text":"Waystones list§r"}'}}}},distance=..10]
kill @e[type=item,nbt={Item:{tag:{pkWastGUI:1b}}},distance=..10]
kill @e[type=item,nbt={Item:{id:"minecraft:polished_andesite_slab",Count:1b},Age:0s},dy=3]
fill ~ ~ ~ ~ ~2 ~ air
kill @s