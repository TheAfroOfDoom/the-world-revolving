# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\defend\loop.mcfunction

# Increment player_clock
scoreboard players add @s player_clock 1

# Terminate at player_clock = 39
execute if score @s player_clock matches 39.. run function theafroofdoom:entity/player/team/player/do/defend/terminate
