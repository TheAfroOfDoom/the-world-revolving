# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\condition\loop\attack_clock\attack_length.mcfunction

# Terminate based on score attack_variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/terminate
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/terminate
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/terminate
