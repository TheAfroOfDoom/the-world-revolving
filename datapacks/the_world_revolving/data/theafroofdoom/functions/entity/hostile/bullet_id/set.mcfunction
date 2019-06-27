# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\bullet_id\set.mcfunction

# Set bullet IDs
scoreboard players operation @s bullet_id = #bullet_id_next bullet_id
scoreboard players set @s bullet_id_tr_lv 0
tag @s remove needs_bullet_id
