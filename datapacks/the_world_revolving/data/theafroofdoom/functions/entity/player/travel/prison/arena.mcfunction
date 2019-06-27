# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\arena.mcfunction

# = = = = = = = = = = =
# BOSS FIGHT IS ACTIVE
# = = = = = = = = = = =
# If boss_fight is active, only teleport if the player is spectating
execute if entity @e[tag=boss_fight_vanilla] run function theafroofdoom:entity/player/travel/prison/arena/boss_fight_active

# = = = = = = = = = = = = =
# BOSS FIGHT IS NOT ACTIVE
# = = = = = = = = = = = = =
# If boss_fight is not active, teleport to arena pre boss_fight
execute unless entity @e[tag=boss_fight_vanilla] run function theafroofdoom:entity/player/travel/prison/arena/boss_fight_inactive
