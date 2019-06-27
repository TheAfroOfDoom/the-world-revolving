# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\base\loop.mcfunction

# Runs every tick off entities tagged "jevil_is_attacking_cutscene"

# Run loop based on variant
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/loop
