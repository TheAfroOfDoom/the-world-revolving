# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\bullet\initialize.mcfunction

# Initializes entities tagged "attack_bullet_cutscene" with attack_variant = -1

# Set bullet IDs
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1

# Set scores
scoreboard players set @s attack_clock -2

# Randomize yaw
function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/bullet/randomize/yaw

# Run base cutscene bullet initialize function
function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/bullet/initialize
