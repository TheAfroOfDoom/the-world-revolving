# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\indicator\randomize\location.mcfunction

# Randomize x-coordinate
scoreboard players operation @s random_min = #attack_cutscene_final_chaos attack_rad_min
scoreboard players operation @s random_range = #attack_cutscene_final_chaos attack_rad_range
function theafroofdoom:rng

# Store x-coordinate
execute store result entity @s Pos[0] double 1 run scoreboard players get @s random
