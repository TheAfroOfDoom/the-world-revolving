# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\indicator\condition\loop\attack_clock\attack_charge_up.mcfunction

# Summon bullets based on score attack_variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/indicator/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/indicator/terminate
