# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\condition\loop\afro.math_0\0.mcfunction

# Summon k_indicator_shoot variant based on score attack_variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/summon_indicator
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/summon_indicator

# Reset afro.math_0 for next summon
scoreboard players operation @s afro.math_0 = @s attack_rate
