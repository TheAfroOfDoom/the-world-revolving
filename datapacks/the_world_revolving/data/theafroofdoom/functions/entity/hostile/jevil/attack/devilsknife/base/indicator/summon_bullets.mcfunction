# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\summon_bullets.mcfunction

# Number of bullets = 4
# Summon bullets based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/indicator/summon_bullets
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/indicator/summon_bullets

# Store model based on score
execute as @e[tag=attack_bullet_devilsknife_new] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Remove "new" status of latest bullet
tag @e[tag=attack_bullet_devilsknife_new] remove attack_bullet_devilsknife_new

# Copy group ID to bullets
function theafroofdoom:entity/group_id/copy
