# Check if the block has no custom name
execute if data entity @s {CustomName:'{"italic":false,"color":"yellow","text":"Waystone"}'} run function pk_wast:events/placed_waystone/errors/has_no_name
execute if data entity @s CustomName unless data entity @s {CustomName:'{"italic":false,"color":"yellow","text":"Waystone"}'} run function pk_wast:events/placed_waystone/check/waypoint_name_already_exists