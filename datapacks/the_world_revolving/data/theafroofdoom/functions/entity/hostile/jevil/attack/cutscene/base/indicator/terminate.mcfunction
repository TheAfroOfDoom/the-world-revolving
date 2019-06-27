# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\base\indicator\terminate.mcfunction

# Terminates entities tagged "attack_indicator_cutscene"

# Kill all associated attack entities
#kill @e[scores={group_id=0},tag=!jevil,tag=!jevil_hitbox,tag=!jevil_attack_originator]

# Kill self
kill @s
