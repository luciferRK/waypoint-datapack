data modify storage pk_wast:iris.input Search set value "crafting_table"
execute at @s anchored eyes positioned ^ ^ ^ run function pk_wast:iris/get_target
execute at @e[type=minecraft:marker,tag=pk.iris.ray] run say A function
kill @e[type=minecraft:marker,tag=pk.iris.ray]