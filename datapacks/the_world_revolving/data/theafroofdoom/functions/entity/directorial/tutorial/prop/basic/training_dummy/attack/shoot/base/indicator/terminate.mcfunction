# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\basic\training_dummy\attack\shoot\base\indicator\terminate.mcfunction

# Terminates entities tagged "prop_attack_indicator_shoot"

# Kill all associated attack entities
#kill @e[scores={group_id=0},tag=!training_dummy,tag=!training_dummy_hitbox,tag=!training_dummy_attack_originator]

# Kill self
kill @s
