# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\bullet_id\copy.mcfunction

# Copies the bullet_id of the running entity to all entities tagged "needs_bullet_id"
scoreboard players operation @e[tag=needs_bullet_id] bullet_id = @s bullet_id
scoreboard players set @e[tag=needs_bullet_id] bullet_id_tr_lv 0
tag @e remove needs_bullet_id
