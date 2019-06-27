# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\base\bullet\loop.mcfunction

# Run loop based on variant
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/bullet/loop
