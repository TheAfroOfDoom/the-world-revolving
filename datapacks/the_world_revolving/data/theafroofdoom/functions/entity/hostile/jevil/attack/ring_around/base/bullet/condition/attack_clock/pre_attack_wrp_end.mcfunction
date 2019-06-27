# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\bullet\condition\attack_clock\pre_attack_wrp_end.mcfunction

# Teleport self backwards based on variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/bullet/backward
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/bullet/backward
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/bullet/backward
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/bullet/backward
