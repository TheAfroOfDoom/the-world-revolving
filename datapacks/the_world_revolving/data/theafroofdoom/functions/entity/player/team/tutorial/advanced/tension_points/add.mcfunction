# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\tension_points\add.mcfunction

# Add one point of xp
xp add @s 1 points

# Decrement amount of player_tpoints left to add
scoreboard players remove @s afro.math_0 1

# Recursively add one point per player_tpoints
execute if score @s afro.math_0 matches 1.. run function theafroofdoom:entity/player/team/player/tension_points/add
