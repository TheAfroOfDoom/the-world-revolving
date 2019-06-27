# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\condition\loop\afro.math_0\0.mcfunction

# Summon attack_indicator_sentry variant based on score attack_variant
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/summon_indicator
