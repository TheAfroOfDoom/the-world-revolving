# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\terminate.mcfunction

# Terminates entities tagged "training_dummy_is_attacking_shoot_example"

# Add Tag
tag @s add training_dummy_is_not_attacking_shoot_example

# Remove Tag
tag @s remove training_dummy_is_attacking_shoot_example

# Run base terminate function
function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/terminate
