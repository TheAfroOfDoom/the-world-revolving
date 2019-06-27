# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\condition\loop\attack_clock\attack_length.mcfunction

# Terminate based on score attack_variant
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/terminate
