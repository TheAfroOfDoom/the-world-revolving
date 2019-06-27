# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\initialize.mcfunction

# Initializes entities who want to shoot example

# Add Tag
tag @s add training_dummy_is_attacking_shoot_example

# Set scores
scoreboard players set @s attack_clock -21

scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove training_dummy_is_not_attacking

# Run base initialize function
function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/initialize
