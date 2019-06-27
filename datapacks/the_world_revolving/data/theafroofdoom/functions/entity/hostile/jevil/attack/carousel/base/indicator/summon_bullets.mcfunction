# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\summon_bullets.mcfunction

# Number of bullets = 3
# Summon bullets based on variant
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/indicator/summon_bullets
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/indicator/summon_bullets

# Copy current offset of sinusoidal function
scoreboard players operation @e[tag=attack_bullet_carousel_new] attack_rad_min = @s attack_rad_min

# Decrease and wrap attack_rad_min if attack_diff=1
execute if score @s attack_diff matches 1 run scoreboard players remove @s attack_rad_min 7
execute if score @s attack_diff matches 1 run scoreboard players operation @s attack_rad_min %= #80 constant
execute if score @s attack_diff matches 1 run scoreboard players operation @s afro.math_0 %= #80 constant

# Copy model score
scoreboard players operation @e[tag=attack_bullet_carousel_new] attack_model = @s attack_model

# Copy attack_diff score
scoreboard players operation @e[tag=attack_bullet_carousel_new] attack_diff = @s attack_diff

# Initialize latest bullets
execute as @e[tag=attack_bullet_carousel_new] at @s run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/bullet/initialize

# Copy group ID to bullets
function theafroofdoom:entity/group_id/copy
