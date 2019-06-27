# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\rude_buster_wave\initialize.mcfunction

# Set Group ID
function theafroofdoom:entity/group_id/set

# Set scores
scoreboard players set @s player_clock -1

# Face center of arena
teleport @s ~ ~ ~ facing entity @e[limit=1,tag=jevil_attack_originator]
execute at @s run teleport @s ~ ~ ~ ~ 0

# Remove tags
tag @s remove rude_buster_wave_new
