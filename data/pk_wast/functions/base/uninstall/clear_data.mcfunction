# Remove all storage keys
data remove storage pk_wast:data Waypoints
data remove storage pk_wast:data Remove
data remove storage pk_wast:data Check
data remove storage pk_wast:data Gui
data remove storage pk_wast:data Compare
data remove storage pk_wast:data Replace
data remove storage pk_wast:data WaypointToCheck
data remove storage pk_wast:data CurrentWaypoint

# Remove relative scores
scoreboard objectives remove PKWASTValue
scoreboard objectives remove PKWASTInteractionId
scoreboard objectives remove PKWASTClickedWaypoint
scoreboard objectives remove PKWASTAirTogglingDelay
scoreboard objectives remove PKWASTCraftedKnowledgeBook

tellraw @s [{"text":"Uninstalled ","color":"red"},{"text":"PK Waystones","color":"aqua","bold":true},{"text":" successfully","color":"red"}]