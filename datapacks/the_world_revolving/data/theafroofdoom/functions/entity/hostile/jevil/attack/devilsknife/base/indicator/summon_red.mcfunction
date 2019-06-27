# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\indicator\summon_red.mcfunction

# Summon red based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/indicator/summon_red
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/indicator/summon_red

# Store model based on score
execute as @e[tag=attack_bullet_red_devilsknife_new] store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Remove "new" status of latest red bullet
tag @e[tag=attack_bullet_red_devilsknife_new] remove attack_bullet_red_devilsknife_new

# Rotate indicator by specified degrees score
execute store result score @s afro.math_3 run data get entity @s Rotation[0] 1.0
scoreboard players operation @s afro.math_3 += @s attack_ang_min
execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s afro.math_3

# Copy group ID to red bullet
function theafroofdoom:entity/group_id/copy
