# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\phantom\condition\loop\attack_clock\attack_wrp_end_plus_1.mcfunction

# Summon attack_indicator_shoot variant based on score attack_variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/phantom/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/phantom/terminate
