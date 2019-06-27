# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\condition\loop_sequencer\sequence_id\-1.mcfunction

# Terminate based on score attack_variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/indicator/terminate
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/indicator/terminate
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/indicator/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/indicator/terminate
