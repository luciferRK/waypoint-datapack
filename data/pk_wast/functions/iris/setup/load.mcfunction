# Fork from Aeldrion's Iris datapack
# Src of original data pack: https://github.com/Aeldrion/Iris

# Data-pack Helper Plus storage definitions
#define storage pk_wast:iris.data
#define storage pk_wast:iris.input
#define storage pk_wast:iris.output

execute unless data storage pk_wast:iris.data is_setup run function pk_wast:iris/setup/scoreboard
execute unless data storage pk_wast:iris.data is_setup run function pk_wast:iris/setup/storage

# @FORK_EDIT : Define cubic block surfaces by default (only check this type)
function pk_wast:iris/get_hitbox/block/cubic