# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\bullet_id\setup.mcfunction

# Setup Bullet ID system
scoreboard players add @e[tag=groupable_bullet] bullet_id_tr_lv 1
execute if entity @s[scores={bullet_id_tr_lv=1}] run scoreboard players operation #bullet_id_restore bullet_id = @s bullet_id
execute if entity @s[scores={bullet_id_tr_lv=1}] run scoreboard players operation @e[tag=groupable_bullet] bullet_id -= #bullet_id_restore bullet_id
