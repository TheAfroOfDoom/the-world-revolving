# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\group_id\set.mcfunction

# Sets the group ID of the entity who ran this to the next available group ID
scoreboard players operation @s group_id = #group_id_next group_id
scoreboard players set @s group_id_tr_lv 0
tag @s remove needs_group_id
