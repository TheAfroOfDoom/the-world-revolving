# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\indicator\randomize\location.mcfunction

# Randomize x-coordinate
scoreboard players operation @s random_min = #prop_attack_shoot_example attack_rad_min
scoreboard players operation @s random_range = #prop_attack_shoot_example attack_rad_range
function theafroofdoom:rng

# Store x-coordinate
execute store result score @s afro.math_0 run data get entity @s Pos[0] 10
scoreboard players operation @s random *= #10 constant
scoreboard players operation @s afro.math_0 += @s random
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s afro.math_0
