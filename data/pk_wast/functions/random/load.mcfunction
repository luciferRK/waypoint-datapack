# From Aeldrion's Minecraft-Random data pack
# Github: https://github.com/Aeldrion/Minecraft-Random/

# Create scoreboard objective
scoreboard objectives add PKWASTRandom dummy

# Define constants
scoreboard players set #8 PKWASTRandom 8
scoreboard players set #lcg_a PKWASTRandom 1630111353
scoreboard players set #lcg_c PKWASTRandom 1623164762
scoreboard players set #lcg_m PKWASTRandom 2147483647

# Default values for uniform
scoreboard players set $min PKWASTRandom 0
scoreboard players set $max PKWASTRandom 1000