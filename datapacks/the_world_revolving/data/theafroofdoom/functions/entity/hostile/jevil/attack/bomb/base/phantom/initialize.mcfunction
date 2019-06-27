# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\phantom\initialize.mcfunction

# Initializes entities tagged "jevil_phantom_attack_bomb_new"

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players set @s afro.math_2 0

# Randomize falling speed (afro.math_0)
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/randomize/speed

# Initialize the Jevil phantom's math score to track next-tick Y-value
execute store result score @s afro.math_1 run data get entity @s Pos[1] 100
# NOTE(jordan): Append to the following values if we add more landing times or change ticks before shoot
# Format: N = 5
# execute if score @s afro.math_0 matches x run scoreboard players remove @s afro.math_1 (speed * N)
# afro.math_0[0] = 145, [1] 163, [2] 215, [3] 256
execute if score @s afro.math_0 matches 0 run scoreboard players remove @s afro.math_1 725
execute if score @s afro.math_0 matches 1 run scoreboard players remove @s afro.math_1 812
execute if score @s afro.math_0 matches 2 run scoreboard players remove @s afro.math_1 1074
execute if score @s afro.math_0 matches 3 run scoreboard players remove @s afro.math_1 1278

# Remove tags
tag @s remove jevil_phantom_attack_bomb_new
