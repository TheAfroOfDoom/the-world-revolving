# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\indicator\initialize.mcfunction

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players set @s attack_variant -1

# Randomize location
function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/indicator/randomize/location

# Run base shoot indicator initialize function
function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/base/indicator/initialize
