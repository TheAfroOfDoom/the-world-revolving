# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\condition\loop\afro.math_6\2.mcfunction

# Shoot based on attack_diff and terminate when jevil phantom lands
execute if score @s attack_diff matches 0 if data entity @e[limit=1,scores={group_id=0},tag=jevil_phantom_attack_bomb] {OnGround:1b} run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/shoot/attack_diff/0
execute if score @s attack_diff matches 1 if data entity @e[limit=1,scores={group_id=0},tag=jevil_phantom_attack_bomb] {OnGround:1b} run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/shoot/attack_diff/1
execute if score @s attack_diff matches 2 if data entity @e[limit=1,scores={group_id=0},tag=jevil_phantom_attack_bomb] {OnGround:1b} run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/shoot/attack_diff/2
