# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\condition\loop\afro.math_0\0.mcfunction

# Summon attack_indicator_shoot variant based on score attack_variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/summon_indicator
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/summon_indicator
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/summon_indicator
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/summon_indicator
