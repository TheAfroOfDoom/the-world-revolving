# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\basic\training_dummy\attack\shoot\base\terminate.mcfunction

# Terminates entities tagged "training_dummy_is_attacking_shoot"

# Kill associated entities
kill @e[tag=prop_attack,tag=tutorial_prop_basic]

# Add Tag
tag @s add training_dummy_is_not_attacking
tag @s add training_dummy_is_not_attacking_shoot

# Set scores
scoreboard players reset @s attack_variant

# Remove Tag
tag @s remove training_dummy_is_attacking_shoot
