# This data pack has been made by PauseKawa
# Email: contact@pause-kawa.fr
# Discord: https://discord.gg/usXV6duaeZ
# Planet Minecraft's page: https://www.planetminecraft.com/member/pausekawa/
# Youtube channel: https://www.youtube.com/channel/UCDhtnqrBJhdq1cWpt9A3s8w

# Data-pack Helper Plus storage definitions
#define storage pk_wast:data

# Prepare storage
execute unless data storage pk_wast:data Waypoints[{}] run data modify storage pk_wast:data Waypoints set value []
execute unless data storage pk_wast:data {RenderItemMode:"biome"} unless data storage pk_wast:data {RenderItemMode:"support"} run data modify storage pk_wast:data RenderItemMode set value "biome"

# Scores
scoreboard objectives add PKWASTValue dummy
scoreboard objectives add PKWASTInteractionId dummy
scoreboard objectives add PKWASTClickedWaypoint dummy
scoreboard objectives add PKWASTAirTogglingDelay dummy
scoreboard objectives add PKWASTCraftedKnowledgeBook minecraft.crafted:knowledge_book
# - Next waypoint id
execute unless score %pk_wast_next_id PKWASTValue matches 0.. run scoreboard players set %pk_wast_next_id PKWASTValue 0

# Logs
tellraw @a [{"text":"Loaded ","color":"yellow"},{"text":"PK Waystones","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]