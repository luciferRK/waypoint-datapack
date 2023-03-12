# Set position and recenter the marker
data modify entity @s Pos[0] set from storage pk_wast:data Gui.ClickedItem.tag.pkWastPosX
data modify entity @s Pos[1] set from storage pk_wast:data Gui.ClickedItem.tag.pkWastPosY
data modify entity @s Pos[2] set from storage pk_wast:data Gui.ClickedItem.tag.pkWastPosZ
execute at @s run tp @s ~0.5 ~ ~0.5

# Animation before teleportation
execute as @p[tag=pk_wast_current_player] at @s run function pk_wast:events/clicked_waypoint/tp_player_on_leave

# Teleport the player in the right dimension
execute if data storage pk_wast:data Gui.ClickedItem.tag{Dimension:"Overworld"} at @s in minecraft:overworld positioned as @s run tp @p[tag=pk_wast_current_player] ~ ~ ~
execute if data storage pk_wast:data Gui.ClickedItem.tag{Dimension:"The Nether"} at @s in minecraft:the_nether positioned as @s run tp @p[tag=pk_wast_current_player] ~ ~ ~
execute if data storage pk_wast:data Gui.ClickedItem.tag{Dimension:"The End"} at @s in minecraft:the_end positioned as @s run tp @p[tag=pk_wast_current_player] ~ ~ ~

# Spread player and run animations
execute as @p[tag=pk_wast_current_player] at @s run function pk_wast:events/clicked_waypoint/tp_player_on_land

# Remove the teleportation marker
kill @s