# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\indicator\summon_bullets.mcfunction

# Initialize first sentry-bullet ID
scoreboard players set @s sequence_id 2

# Store number of layers in afro.math_6
scoreboard players operation @s afro.math_6 = @s attack_cycles

# Store angle between bullets in afro.math_0
# Angle is smaller if cone is a full circle for the spacing to make sense, you can check the maths yourself
scoreboard players operation @s afro.math_0 = @s attack_cone
scoreboard players operation @s afro.math_1 = @s attack_bullets
execute if score @s attack_cone matches -359..359 run scoreboard players remove @s afro.math_1 1
scoreboard players operation @s afro.math_0 /= @s afro.math_1

# Store indicator's default yaw in afro.math_1
execute store result score @s afro.math_1 run data get entity @s Rotation[0]

# Store angle to right-most bullet in afro.math_2
scoreboard players operation @s afro.math_2 = @s afro.math_0
scoreboard players operation @s afro.math_2 *= #-1 constant
#scoreboard players operation @s afro.math_2 = @s attack_cone
#scoreboard players operation @s afro.math_2 /= #2 constant
#scoreboard players operation @s afro.math_2 += @s afro.math_1

# Determine if attack_bullets is even or odd
scoreboard players operation @s afro.math_4 = @s attack_bullets
scoreboard players operation @s afro.math_4 %= #2 constant

# If attack_cone = 360: bullet towards player
# If attack_cone = -360: gap towards player
# If odd number of bullets:
execute unless score @s afro.math_4 matches 0 if score @s attack_cone matches 360 run scoreboard players add @s afro.math_2 180
# If even number of bullets:
execute if score @s afro.math_4 matches 0 if score @s attack_cone matches -360 run scoreboard players operation @s afro.math_5 = @s afro.math_0
execute if score @s afro.math_4 matches 0 if score @s attack_cone matches -360 run scoreboard players operation @s afro.math_5 /= #2 constant
execute if score @s afro.math_4 matches 0 if score @s attack_cone matches -360 run scoreboard players operation @s afro.math_2 += @s afro.math_5

# Summon bullet layers
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/summon_layer

# Copy group ID to bullets
function theafroofdoom:entity/group_id/copy
