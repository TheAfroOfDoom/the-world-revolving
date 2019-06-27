# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\attack\loop.mcfunction

# Increment player_clock
scoreboard players add @s player_clock 1

# Add tension points every hit
execute if score @s damage_dealt matches 1.. run function theafroofdoom:entity/player/team/player/tension_points/add/attack

# Reset damage dealt (per tick, not total across turn)
scoreboard players reset @s damage_dealt

# Terminate at player_clock = 62
execute if score @s player_clock matches 62.. run function theafroofdoom:entity/player/team/player/do/attack/terminate
