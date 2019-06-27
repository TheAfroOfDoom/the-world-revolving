# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\phantom\condition\loop\afro.math_0\0.mcfunction

# Descend
teleport @s ~ ~-1.45 ~

# Update future height score
scoreboard players remove @s afro.math_1 145

# If future height score is close enough to floor, stop descending using teleport
# and start falling with motion so OnGround updates properly
#
# Set afro.math_2 = afro.math_1 but on the same order of magnitude as #arena_floor_Y
scoreboard players operation @s afro.math_3 = @s afro.math_1
scoreboard players operation @s afro.math_3 /= #100 constant
execute if score @s afro.math_3 <= #arena.floor.y constant run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/condition/loop/afro.math_2/1
