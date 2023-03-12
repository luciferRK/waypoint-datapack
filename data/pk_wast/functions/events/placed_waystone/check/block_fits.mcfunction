# Check if the waystone can fit on the current block
execute unless entity @s[predicate=pk_wast:waystone/can_fit_here] run function pk_wast:events/placed_waystone/errors/does_not_fit_here
execute if entity @s[predicate=pk_wast:waystone/can_fit_here] run function pk_wast:events/placed_waystone/check/limit_reached