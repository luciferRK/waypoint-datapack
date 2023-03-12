# Reset GUI need update score
scoreboard players set %pk_wast_gui_need_update PKWASTValue 0

# Check if an item has been dropped from the GUI
execute if entity @e[type=item,distance=..10,nbt={Item:{tag:{pkWastGUI:1b}}}] run scoreboard players set %pk_wast_gui_need_update PKWASTValue 1

# Check content 
scoreboard players set %pk_wast_container_items_length PKWASTValue 0
data modify storage pk_wast:data Check.Container.Items set from block ~ ~1 ~ Items
execute store result score %pk_wast_container_items_length PKWASTValue run data get storage pk_wast:data Check.Container.Items
execute if score %pk_wast_container_items_length PKWASTValue matches 1.. run function pk_wast:waystone/watch/in_use/check_not_gui_item_recursive

# Update current GUI from marker if needed
execute if score %pk_wast_gui_need_update PKWASTValue matches 1 run function pk_wast:waystone/gui/update/update_current_waystone_from_marker

# Toggle the in use state to false if closed
execute if block ~ ~1 ~ barrel[open=false] run function pk_wast:waystone/helpers/toggle_in_use_state/false