# Position player randomly around the waystone
function pk_wast:random/uniform
execute if score $out PKWASTRandom matches ..125 run tp @s ~ ~ ~1.5
execute if score $out PKWASTRandom matches 126..250 run tp @s ~1 ~ ~1
execute if score $out PKWASTRandom matches 251..375 run tp @s ~1.5 ~ ~
execute if score $out PKWASTRandom matches 376..500 run tp @s ~1 ~ ~-1
execute if score $out PKWASTRandom matches 501..625 run tp @s ~ ~ ~-1.5
execute if score $out PKWASTRandom matches 625..750 run tp @s ~-1 ~ ~-1
execute if score $out PKWASTRandom matches 751..875 run tp @s ~-1.5 ~ ~
execute if score $out PKWASTRandom matches 876.. run tp @s ~-1 ~ ~1

# Animations
execute at @s run particle portal ~ ~1 ~ 0.8 0.5 0.8 0.1 100 force
playsound minecraft:block.portal.trigger ambient @a[distance=..16] ~ ~ ~ 0.5 2