# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\bullet\initialize.mcfunction

# Initializes entities tagged "prop_attack_bullet_shoot" with attack_variant = -1

# Set bullet IDs
execute as @e[tag=needs_bullet_id] run function theafroofdoom:entity/hostile/bullet_id/set
scoreboard players add #bullet_id_next bullet_id 1

# Set scores
scoreboard players set @s attack_clock -2

# Run base shoot bullet initialize function
function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/bullet/initialize
