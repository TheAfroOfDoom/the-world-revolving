# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\bullet_id\restore.mcfunction

# Restore Bullet IDs
execute if entity @s[scores={bullet_id_tr_lv=1}] run scoreboard players operation @e[tag=groupable_bullet] bullet_id += #bullet_id_restore bullet_id
scoreboard players remove @e[scores={bullet_id_tr_lv=1..},tag=groupable_bullet] bullet_id_tr_lv 1
