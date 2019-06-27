# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\group_id\restore.mcfunction

# Restores Group IDs
execute if entity @s[scores={group_id_tr_lv=1}] run scoreboard players operation @e[tag=groupable] group_id += #group_id_restore group_id
scoreboard players remove @e[scores={group_id_tr_lv=1..},tag=groupable] group_id_tr_lv 1
