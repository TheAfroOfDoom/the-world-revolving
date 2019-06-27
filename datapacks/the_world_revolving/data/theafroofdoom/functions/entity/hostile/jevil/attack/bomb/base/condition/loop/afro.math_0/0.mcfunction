# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\condition\loop\afro.math_0\0.mcfunction

# Summon attack_indicator_bomb variant based on score attack_variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/summon_indicator
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/summon_indicator
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/summon_indicator
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/summon_indicator
