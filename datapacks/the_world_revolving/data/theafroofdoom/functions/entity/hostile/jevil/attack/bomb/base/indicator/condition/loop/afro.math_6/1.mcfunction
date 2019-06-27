# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\condition\loop\afro.math_6\1.mcfunction

# Summon bullets based on attack_diff 5 ticks before jevil phantom lands to fix Rotation de-sync bug based on variant
execute if score @s attack_diff matches 0 run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/summon_bullets/attack_diff/0
execute if score @s attack_diff matches 1 run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/summon_bullets/attack_diff/1
execute if score @s attack_diff matches 2 run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/summon_bullets/attack_diff/2
