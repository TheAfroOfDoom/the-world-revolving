# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\indicator\shoot.mcfunction

# Change bullet models
execute as @e[scores={group_id=0},tag=attack_bullet_sentry_inactive] run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_sword",tag:{CustomModelData:20}}]}
execute as @e[scores={group_id=0},tag=attack_bullet_sentry_inactive] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Activate bullets
tag @e[scores={group_id=0},tag=attack_bullet_sentry_inactive] add attack_bullet_sentry_active
tag @e[scores={group_id=0},tag=attack_bullet_sentry_inactive] remove attack_bullet_sentry_inactive

# Terminate based on variant
execute if score @s attack_variant matches -1 run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/indicator/terminate
