# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\indicator\condition\loop\attack_clock\attack_charge_up.mcfunction

# Summon bullets based on score attack_variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/indicator/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/indicator/terminate
