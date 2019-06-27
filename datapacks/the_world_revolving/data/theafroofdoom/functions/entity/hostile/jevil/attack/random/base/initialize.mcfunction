# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\base\initialize.mcfunction

# Initializes entities who want to attack randomly

# Add Tags
tag @s add jevil_is_attacking_random

# Initialize Jevil for a random attack
function theafroofdoom:entity/hostile/jevil/attack/random/base/random

# Terminate based on variant
execute if entity @s[scores={attack_var_rand=-5}] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/0/terminate
execute if entity @s[scores={attack_var_rand=-4}] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/1/terminate
execute if entity @s[scores={attack_var_rand=-3}] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/2/terminate
execute if entity @s[scores={attack_var_rand=-2}] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/4/terminate
execute if entity @s[scores={attack_var_rand=-1}] run function theafroofdoom:entity/hostile/jevil/attack/random/ring_around/terminate
