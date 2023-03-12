# Check if the item is not a GUI item
execute unless data storage pk_wast:data Check.Container.Items[-1].tag.pkWastGUI run function pk_wast:waystone/watch/in_use/give_back_not_gui_item

# Recursive call
data remove storage pk_wast:data Check.Container.Items[-1]
scoreboard players remove %pk_wast_container_items_length PKWASTValue 1
execute if score %pk_wast_container_items_length PKWASTValue matches 1.. run function pk_wast:waystone/watch/in_use/check_not_gui_item_recursive