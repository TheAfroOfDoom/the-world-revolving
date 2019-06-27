# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\heart\condition\bullet\attack_diff\1.mcfunction

# NOTE(jordan): Change these speeds if we desire to add/remove/modify speed values
# Teleport self forward based on bomb-bullet ID (afro.math_0)
execute if score @s afro.math_0 matches 0 run teleport @s ^ ^ ^1.0
execute if score @s afro.math_0 matches 1 run teleport @s ^ ^ ^0.875
execute if score @s afro.math_0 matches 2 run teleport @s ^ ^ ^0.75
