# Removing GUI item entities
kill @e[type=item,distance=..10,nbt={Item:{tag:{pkWastGUI:1b}}}]

# Update GUI
data modify storage pk_wast:data CurrentWaypoint set from entity @s data
function pk_wast:waystone/gui/update/update_gui_storage
data modify block ~ ~1 ~ Items set from storage pk_wast:data Gui.Items