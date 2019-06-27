# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\phantom\initialize.mcfunction

# Initializes entities tagged "jevil_phantom_attack_shoot_new"

# Set scores
scoreboard players set @s attack_clock -1

# Setup the indicator's math score for when the Jevil phantom will start to warp up/down
scoreboard players operation @s afro.math_0 = @s attack_wrp_start
scoreboard players operation @s afro.math_0 += @s attack_wrp_in
scoreboard players operation @s afro.math_1 = @s attack_wrp_end
scoreboard players operation @s afro.math_1 -= @s attack_wrp_out
scoreboard players operation @s afro.math_3 = @s attack_wrp_start
scoreboard players remove @s afro.math_3 1
