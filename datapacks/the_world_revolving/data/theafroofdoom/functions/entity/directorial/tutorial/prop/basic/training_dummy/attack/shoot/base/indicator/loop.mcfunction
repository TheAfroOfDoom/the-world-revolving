# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\basic\training_dummy\attack\shoot\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "prop_attack_indicator_shoot"

# Run loop based on variant
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/directorial/tutorial/prop/basic/training_dummy/attack/shoot/example/indicator/loop
