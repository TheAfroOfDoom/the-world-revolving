# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\condition\loop\afro.math_0\0.mcfunction

# Terminate based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/indicator/terminate
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/indicator/terminate