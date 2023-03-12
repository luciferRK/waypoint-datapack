# From Aeldrion's Minecraft-Random data pack
# Github: https://github.com/Aeldrion/Minecraft-Random/

# Calculate size of range
scoreboard players operation #size PKWASTRandom = $max PKWASTRandom
scoreboard players operation #size PKWASTRandom -= $min PKWASTRandom
scoreboard players add #size PKWASTRandom 1

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg PKWASTRandom *= #lcg_a PKWASTRandom
scoreboard players operation #lcg PKWASTRandom += #lcg_c PKWASTRandom
scoreboard players operation #lcg PKWASTRandom %= #lcg_m PKWASTRandom

# Trim "low quality" bits
scoreboard players operation $out PKWASTRandom = #lcg PKWASTRandom
scoreboard players operation $out PKWASTRandom /= #8 PKWASTRandom

# Get within desired range
scoreboard players operation $out PKWASTRandom %= #size PKWASTRandom
scoreboard players operation $out PKWASTRandom += $min PKWASTRandom