# Define current waystone id
scoreboard players operation %pk_wast_current_id PKWASTValue = @e[type=marker,tag=pk_wast_marker,limit=1,sort=nearest] PKWASTValue

# Find the relative marker
execute as @e[type=marker,tag=pk_wast_marker,sort=nearest,limit=1] at @s run function pk_wast:events/clicked_waystone/from_marker

# Lock container
data modify block ~ ~ ~ Lock set value "pk_wast_locked_container§"

# Animations
particle happy_villager ~ ~ ~ 0.7 1 0.7 0.001 10
playsound block.grindstone.use block @a ~ ~ ~ 1 1.5