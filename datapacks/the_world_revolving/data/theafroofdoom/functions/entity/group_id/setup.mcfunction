# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\group_id\setup.mcfunction

# Sets up Group ID system
scoreboard players add @e[tag=groupable] group_id_tr_lv 1
execute if entity @s[scores={group_id_tr_lv=1}] run scoreboard players operation #group_id_restore group_id = @s group_id
execute if entity @s[scores={group_id_tr_lv=1}] run scoreboard players operation @e[tag=groupable] group_id -= #group_id_restore group_id
