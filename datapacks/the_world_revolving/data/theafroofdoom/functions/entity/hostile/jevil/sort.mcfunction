# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\sort.mcfunction

# always
function theafroofdoom:entity/hostile/jevil/loop

# only attack if attack_delay = -1
execute if score @s attack_delay matches -1 run function theafroofdoom:entity/hostile/jevil/sort_attack
