# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\attack.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_attack

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable/attack

# Remove tags
tag @s remove player_is_not_doing
