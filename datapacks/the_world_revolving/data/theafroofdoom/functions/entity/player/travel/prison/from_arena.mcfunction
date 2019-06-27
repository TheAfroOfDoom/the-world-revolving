# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\from_arena.mcfunction

# = = = = = = = = = = =
# NEEDS TO SEE CREDITS
# = = = = = = = = = = =
# If boss_fight is active, only teleport if the player is spectating
execute if score @s player_credits matches 0 run function theafroofdoom:entity/player/travel/prison/from_arena/credits

# = = = = = = = = = = = = =
# DOES NOT NEED TO SEE CREDITS
# = = = = = = = = = = = = =
# If boss_fight is not active, teleport to arena pre boss_fight
execute unless score @s player_credits matches 0 run function theafroofdoom:entity/player/travel/prison/from_arena/default
