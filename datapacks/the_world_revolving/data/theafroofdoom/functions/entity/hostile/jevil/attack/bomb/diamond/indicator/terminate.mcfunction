# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\diamond\indicator\terminate.mcfunction

# Terminates entities tagged "attack_indicator_bomb_diamond"

# Terminate the Jevil phantom
execute as @e[tag=jevil_phantom_attack_bomb,scores={group_id=0}] at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/phantom/terminate

# Run base bomb indicator terminate function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/terminate
