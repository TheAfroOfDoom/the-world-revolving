# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\condition\loop\attack_clock\attack_length.mcfunction

# Terminate based on score attack_variant
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/combination/chaos_bomb/terminate
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/combination/carousel/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/combination/ring_around/terminate
execute if entity @s[scores={attack_variant=0}] run function theafroofdoom:entity/hostile/jevil/attack/combination/0/terminate
