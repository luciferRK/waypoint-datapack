# Name visibility
execute if entity @s[tag=!pk_wast_visible_name] if entity @p[distance=..10] run function pk_wast:waystone/helpers/toggle_name_visibility/true
execute if entity @s[tag=pk_wast_visible_name] unless entity @p[distance=..10] run function pk_wast:waystone/helpers/toggle_name_visibility/false

# Check blocks
# - if the waystone is still complete
execute if entity @s[predicate=!pk_wast:waystone/is_complete] run function pk_wast:waystone/remove/remove 
# - if there's a hopper next to it
execute positioned ~ ~1 ~ if predicate pk_wast:waystone/hopper_check run function pk_wast:waystone/watch/change_hopper

# When is in use
# - Avoid fails
execute if entity @s[tag=!pk_wast_in_use] if block ~ ~1 ~ barrel[open=true] run function pk_wast:waystone/watch/in_use/avoid_fails
# - Correct use
execute if entity @s[tag=pk_wast_in_use] run function pk_wast:waystone/watch/in_use/in_use

# Animation
particle enchant ~ ~2 ~ 0.7 1 0.7 0.001 1