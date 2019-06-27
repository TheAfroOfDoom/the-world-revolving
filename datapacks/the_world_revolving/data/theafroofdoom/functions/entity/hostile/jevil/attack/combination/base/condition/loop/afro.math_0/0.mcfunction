# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\condition\loop\afro.math_0\0.mcfunction

# Run sequence-mode or random-mode based on attack_diff
execute if score @s attack_diff matches 0 run function theafroofdoom:entity/hostile/jevil/attack/combination/base/random
execute if score @s attack_diff matches 1 run function theafroofdoom:entity/hostile/jevil/attack/combination/base/sequence
