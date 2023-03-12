# Link player to the used waystone
scoreboard players add %pk_wast_next_id PKWASTInteractionId 1
scoreboard players operation @p[tag=pk_wast_current_player] PKWASTInteractionId = %pk_wast_next_id PKWASTInteractionId
scoreboard players operation @s PKWASTInteractionId = %pk_wast_next_id PKWASTInteractionId

# Add in use tag
tag @s add pk_wast_in_use

# Stop sound
stopsound @a[distance=..30] block block.barrel.open 

# Init GUI
function pk_wast:waystone/gui/update/update_current_waystone_from_marker