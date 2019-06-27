# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\condition\loop\attack_clock\attack_cycles.mcfunction

# Terminate based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/indicator/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/indicator/terminate
