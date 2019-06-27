# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\indicator\initialize.mcfunction

# Set bullet ID
function theafroofdoom:entity/hostile/bullet_id/set_next

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players set @s attack_variant -1

# Randomize location
function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/indicator/randomize/location

# Run base cutscene indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/indicator/initialize
