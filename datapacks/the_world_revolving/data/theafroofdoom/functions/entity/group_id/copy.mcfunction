# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\group_id\copy.mcfunction

# Copies the group_id of the running entity to all entities tagged "needs_group_id"
scoreboard players operation @e[tag=needs_group_id] group_id = @s group_id
scoreboard players set @e[tag=needs_group_id] group_id_tr_lv 0
tag @e remove needs_group_id
