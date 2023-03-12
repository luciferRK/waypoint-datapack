# Place blocks
setblock ~ ~ ~ andesite_wall
setblock ~ ~1 ~ barrel{CustomName:'{"text":"Waystones list§r"}'}
setblock ~ ~2 ~ polished_andesite_slab

# Place decorative armor stand
summon armor_stand ~0.5 ~0.6 ~0.5 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["pk_wast_entity","pk_wast_armor_stand","pk_wast_current_armor_stand"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;158848179,-734968222,-1119424148,-1111961229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI5ZTkzMmYxMmJhYmRkMmZlMGUzNTUzZGNmYWM0MTJiYTdmNDI0MmU4ZDBlMmY3MTk1ZGQ5NDVlNTExZGZjYSJ9fX0="}]}}}}]}
data modify entity @e[type=armor_stand,tag=pk_wast_current_armor_stand,distance=..10,limit=1] CustomName set from storage pk_wast:data CurrentWaypoint.Name
tag @e[type=armor_stand,tag=pk_wast_current_armor_stand,distance=..10] remove pk_wast_current_armor_stand

# Place decorative falling blocks
summon falling_block ~0.499 ~0.999 ~0.499 {Tags:["pk_wast_entity","pk_wast_falling_block"],BlockState:{Name:"minecraft:lodestone"},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
summon falling_block ~0.501 ~1.001 ~0.501 {Tags:["pk_wast_entity","pk_wast_falling_block"],BlockState:{Name:"minecraft:lodestone"},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
summon falling_block ~0.5 ~0.2 ~0.5 {Tags:["pk_wast_entity","pk_wast_falling_block"],BlockState:{Name:"minecraft:polished_andesite_slab",Properties:{type:"top"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
summon falling_block ~0.5 ~-0.001 ~0.5 {Tags:["pk_wast_entity","pk_wast_falling_block"],BlockState:{Name:"minecraft:polished_andesite_slab"},NoGravity:1b,Time:-2147483648,Invulnerable:1b}