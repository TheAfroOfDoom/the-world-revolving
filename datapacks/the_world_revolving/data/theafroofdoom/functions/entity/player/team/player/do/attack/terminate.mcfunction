# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\attack\terminate.mcfunction

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Reset scores
scoreboard players reset @s player_clock

# Remove tags
tag @s remove player_is_doing_attack

# Add tags
tag @s add player_is_not_doing
tag @s add player_used_turn
