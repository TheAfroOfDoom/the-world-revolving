# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_cutscene"

# Run loop based on variant
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/indicator/loop
