# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\heart\bullet.mcfunction

# Runs every tick off entities tagged "attack_bullet_bomb_active" with attack_variant = -2

# Movement based on attack_diff
execute if score @s attack_diff matches 0 run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/condition/bullet/attack_diff/0
execute if score @s attack_diff matches 1 run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/condition/bullet/attack_diff/1
execute if score @s attack_diff matches 2 run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/condition/bullet/attack_diff/2
