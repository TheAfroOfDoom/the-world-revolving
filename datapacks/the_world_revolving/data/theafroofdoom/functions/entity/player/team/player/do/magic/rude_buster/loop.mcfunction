# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\magic\rude_buster\loop.mcfunction

# Increment player_clock only after rude_buster_wave terminates
execute if score @s player_clock matches 0.. run scoreboard players add @s player_clock 1

# Terminate at player_clock = 49
execute if score @s player_clock matches 49.. run function theafroofdoom:entity/player/team/player/do/magic/rude_buster/terminate
