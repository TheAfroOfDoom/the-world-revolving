# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\shake.mcfunction

# Generate a randomized index
scoreboard players set @s random_min 0
scoreboard players set @s random_range 4
function theafroofdoom:rng

# Shake based on randomized index
execute if score @s random matches 0 run teleport @s ~ ~ ~ ~0.75 ~
execute if score @s random matches 1 run teleport @s ~ ~ ~ ~-0.75 ~
execute if score @s random matches 2 run teleport @s ~ ~ ~ ~ ~0.75
execute if score @s random matches 3 run teleport @s ~ ~ ~ ~ ~-0.75
