# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\bullet\initialize.mcfunction

# Set scores
scoreboard players set @s attack_clock -1

# Initialize the Bullet's math score to track next-tick Y-value
execute store result score @s afro.math_0 run data get entity @s Pos[1] 100
# NOTE(jordan): Append to the following values if we add more landing times or change ticks before shoot
# Format: N = 5
# scoreboard players remove @s afro.math_0 (speed * N)
# afro.math_0[0] = 100
scoreboard players remove @s afro.math_0 500

scoreboard players operation @s afro.math_1 = @s afro.math_0
scoreboard players operation @s afro.math_1 /= #100 constant

scoreboard players set @s afro.math_2 -1