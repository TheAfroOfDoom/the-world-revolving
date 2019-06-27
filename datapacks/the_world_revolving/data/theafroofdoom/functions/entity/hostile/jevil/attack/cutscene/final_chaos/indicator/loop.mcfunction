# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\indicator\loop.mcfunction

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Summon bullet on first tick after randomizing location
execute if score @s attack_clock matches 0 at @s run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/indicator/summon_bullet

# Terminate at attack_clock = 40
execute if score @s attack_clock matches 40 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/indicator/terminate
