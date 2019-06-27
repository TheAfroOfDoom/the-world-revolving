# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\condition\loop\shoot\attack_diff\0.mcfunction

# Change bullet models
execute as @e[scores={group_id=0},tag=attack_bullet_bomb_inactive] run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:1}}]}
execute as @e[scores={group_id=0},tag=attack_bullet_bomb_inactive] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Activate bullets
tag @e[scores={group_id=0},tag=attack_bullet_bomb_inactive] add attack_bullet_bomb_active
tag @e[scores={group_id=0},tag=attack_bullet_bomb_inactive] remove attack_bullet_bomb_inactive

# Playsound of phantom bursting into bullets
playsound theafroofdoom:jevil.attack.bomb hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0

# Summon explosion particle to indicate the "bomb" exploded
particle explosion ~ ~1.6 ~ ~ ~ ~ 0 0 force

# Terminate based on variant
execute if score @s attack_variant matches -4 run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/indicator/terminate
execute if score @s attack_variant matches -3 run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/indicator/terminate
execute if score @s attack_variant matches -2 run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/indicator/terminate
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/indicator/terminate
