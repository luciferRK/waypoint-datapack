# Watch waystones
execute as @e[type=marker,tag=pk_wast_marker] at @s run function pk_wast:waystone/watch/tick

# Watch players interacting with waystones
execute as @a[scores={PKWASTInteractionId=0..}] at @s run function pk_wast:waystone/watch/player_interactions

# Fix entities render issues
execute if score %pk_wast_air_toggling PKWASTAirTogglingDelay matches 1.. run function pk_wast:entities/air_toggling/tick

# Reset the crafted knowledge book score
scoreboard players set @a[gamemode=!spectator] PKWASTCraftedKnowledgeBook 0

# Secure fallings blocks :
# - If an entity have a risk to cause explosion without destroying blocks, prevent the fallings blocks to be moved
execute store result score %pk_temp PKWASTValue run gamerule mobGriefing
execute if score %pk_temp PKWASTValue matches 0 as @e[type=falling_block,tag=pk_wast_falling_block] run data modify entity @s Motion set value [0d,0d,0d]