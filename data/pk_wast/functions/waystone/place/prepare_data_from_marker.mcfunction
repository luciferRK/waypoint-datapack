# Set Pos
data modify storage pk_wast:data CurrentWaypoint.Pos set from entity @s Pos

# Set Dimension data
execute if entity @s[predicate=pk_wast:dimension/overworld] run data modify storage pk_wast:data CurrentWaypoint.Dimension set value "Overworld"
execute if entity @s[predicate=pk_wast:dimension/the_nether] run data modify storage pk_wast:data CurrentWaypoint.Dimension set value "The Nether"
execute if entity @s[predicate=pk_wast:dimension/the_end] run data modify storage pk_wast:data CurrentWaypoint.Dimension set value "The End"

# Set RenderItem data
# - Default Values
data modify storage pk_wast:data CurrentWaypoint.RenderItem set value {id:"minecraft:grass_block",Count:1b,tag:{pkWastGUI:1b,display:{Lore:[]}}}
# - Waystone id
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.pkWastId set from storage pk_wast:data CurrentWaypoint.Id
# - Waystone Pos
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.pkWastPosX set from storage pk_wast:data CurrentWaypoint.Pos[0]
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.pkWastPosY set from storage pk_wast:data CurrentWaypoint.Pos[1]
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.pkWastPosZ set from storage pk_wast:data CurrentWaypoint.Pos[2]
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.Dimension set from storage pk_wast:data CurrentWaypoint.Dimension
# - Item's Name and Lore
execute store result score %pk_wast_pos_x PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Pos[0]
execute store result score %pk_wast_pos_y PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Pos[1]
execute store result score %pk_wast_pos_z PKWASTValue run data get storage pk_wast:data CurrentWaypoint.Pos[2]
data modify entity @s data.Dimension set from storage pk_wast:data CurrentWaypoint.Dimension
setblock ~ ~2 ~ oak_sign{Text1:'{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=pk_wast_waystone_placer,limit=1,distance=..10]","color":"yellow","italic":false,"interpret":true}',Text2:'[{"score":{"name":"%pk_wast_pos_x","objective":"PKWASTValue"},"italic":false},{"text":", "},{"score":{"name":"%pk_wast_pos_y","objective":"PKWASTValue"}},{"text":", "},{"score":{"name":"%pk_wast_pos_z","objective":"PKWASTValue"}},{"text": " in "},{"nbt":"data.Dimension","entity":"@e[type=marker,tag=pk_wast_current_marker,distance=..10]"}]'}
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.display.Name set from block ~ ~2 ~ Text1
data modify storage pk_wast:data CurrentWaypoint.RenderItem.tag.display.Lore append from block ~ ~2 ~ Text2
# - Item's id depending on biome
execute unless data storage pk_wast:data {RenderItemMode:"support"} run function pk_wast:waystone/place/set_render_item_from_current_biome
execute if data storage pk_wast:data {RenderItemMode:"support"} run function pk_wast:waystone/place/set_render_item_from_block_support

# Set marker id score and data
scoreboard players operation @s PKWASTValue = %pk_wast_next_id PKWASTValue
data modify entity @s data set from storage pk_wast:data CurrentWaypoint

# Reposition marker
tp @s ~0.5 ~ ~0.5