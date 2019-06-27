# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\explosion\initialize.mcfunction

# Set bullet IDs
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1

# Set scores
scoreboard players set @s attack_clock -1

# Run base explosion initialize function
function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/explosion/initialize
