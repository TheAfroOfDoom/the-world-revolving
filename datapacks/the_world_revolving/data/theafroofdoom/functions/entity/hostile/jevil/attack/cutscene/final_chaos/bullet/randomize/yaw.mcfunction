# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\bullet\randomize\yaw.mcfunction

# Randomizes yaw the bullet spawns at

# Set bounds
scoreboard players set @s random_min 0
scoreboard players set @s random_range 360
function theafroofdoom:rng

# Store value into NBT
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s random
