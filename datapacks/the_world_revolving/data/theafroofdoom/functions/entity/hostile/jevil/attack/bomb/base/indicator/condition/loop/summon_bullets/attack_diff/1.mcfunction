# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\condition\loop\summon_bullets\attack_diff\1.mcfunction

# Initialize first bomb-bullet ID
scoreboard players set @s afro.math_0 0

# Pre-summon bullets to deal with Rotation de-sync bug
# Store number of bullets to summon in afro.math_3
scoreboard players operation @s afro.math_3 = @s attack_bullets

# Store indicator's default yaw in afro.math_1
execute store result score @s afro.math_1 run data get entity @s Rotation[0]

# Summon bullets
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/summon_bullets/attack_diff/1_helper

# Copy group ID to bullets
function theafroofdoom:entity/group_id/copy
