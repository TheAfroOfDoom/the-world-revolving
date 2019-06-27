# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\condition\loop\summon_bullets\attack_diff\2.mcfunction

# NOTE(jordan): This variant isn't modular because I just wanted to get it done fast

# Pre-summon bullets to deal with Rotation de-sync bug
# Store number of bullets to summon in afro.math_3
scoreboard players operation @s afro.math_3 = @s attack_bullets

# Store angle between bullets in afro.math_0
# Angle is smaller if cone is a full circle for the spacing to make sense, you can check the maths yourself
scoreboard players operation @s afro.math_0 = @s attack_cone
scoreboard players operation @s afro.math_1 = @s afro.math_3
execute if score @s attack_cone matches -359..359 run scoreboard players remove @s afro.math_1 1
scoreboard players operation @s afro.math_0 /= @s afro.math_1

# Store indicator's default yaw in afro.math_1
execute store result score @s afro.math_1 run data get entity @s Rotation[0]

# Store angle to right-most bullet in afro.math_2
scoreboard players operation @s afro.math_2 = @s afro.math_1
scoreboard players add @s afro.math_2 90

# If attack_cone = 360: bullet towards player
# If attack_cone = -360: gap towards player
# If odd number of bullets:
execute unless score @s afro.math_4 matches 0 if score @s attack_cone matches 360 run scoreboard players add @s afro.math_2 180
# If even number of bullets:
execute if score @s afro.math_4 matches 0 if score @s attack_cone matches -360 run scoreboard players operation @s afro.math_5 = @s afro.math_0
execute if score @s afro.math_4 matches 0 if score @s attack_cone matches -360 run scoreboard players operation @s afro.math_5 /= #2 constant
execute if score @s afro.math_4 matches 0 if score @s attack_cone matches -360 run scoreboard players operation @s afro.math_2 += @s afro.math_5

# Summon bullets
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/condition/loop/summon_bullets/attack_diff/2_helper

# Copy group ID to bullets
function theafroofdoom:entity/group_id/copy
