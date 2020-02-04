# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\ui\select\act\check.mcfunction

# Set scores
scoreboard players set @s player_clock -1

# Add tags
tag @s add player_is_doing_act_check

# Display text
function theafroofdoom:entity/player/team/player/do/act/check/text/0

# Playsound
playsound theafroofdoom:player.ui.select player @s ~ ~ ~

# Disable all healing and UI elements
function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Remove tags
tag @s remove player_is_not_doing
