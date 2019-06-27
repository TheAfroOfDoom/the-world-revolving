# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\bullet.mcfunction

# Runs every tick off entities tagged "attack_bullet_bomb_active"

# Teleport self based on variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/bullet
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/bullet
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/bullet
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/bullet

# Detect if hit the edge of the arena (the black, not the blue/purple)
execute if block ~ ~ ~ #theafroofdoom:arena_wall run kill @s
