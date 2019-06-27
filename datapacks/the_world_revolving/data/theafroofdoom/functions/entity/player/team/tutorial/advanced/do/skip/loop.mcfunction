# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\skip\loop.mcfunction

# Increment player_clock
scoreboard players add @s player_clock 1

# Terminate at player_clock = 20
execute if score @s player_clock matches 20.. run function theafroofdoom:entity/player/team/tutorial/advanced/do/skip/terminate
