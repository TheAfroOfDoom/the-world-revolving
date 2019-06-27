# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\summon_bullets.mcfunction

# At this point in function:
# afro.math_0 = randomized radius
# afro.math_1 = randomized angle offset

# Pre-summon bullets to deal with Rotation de-sync bug
# Store number of bullets to summon in afro.math_3
scoreboard players operation @s afro.math_3 = @s attack_bullets

# Store angle to first bullet in afro.math_2
scoreboard players operation @s afro.math_2 = @s afro.math_1

# Store randomized radius in a temp variable
scoreboard players operation @s random = @s afro.math_0

# Store angle between bullets in afro.math_0
# Angle is smaller if cone is a full circle for the spacing to make sense, you can check the maths yourself
scoreboard players operation @s afro.math_0 = @s attack_cone
scoreboard players operation @s afro.math_1 = @s afro.math_3
execute if score @s attack_cone matches -359..359 run scoreboard players remove @s afro.math_1 1
scoreboard players operation @s afro.math_0 /= @s afro.math_1

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

# Store randomized radius in afro.math_1
scoreboard players operation @s afro.math_1 = @s random

# Get randomized multiplier for which bullet will activate first and store in afro.math_4
# afro.math_4 = randomized value in [0, attack_bullets - 1]
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/randomize/multiplier

# Offset which bullet activates first by (afro.math_4 * afro.math_0)
scoreboard players operation @s afro.math_4 *= @s afro.math_0
scoreboard players operation @s afro.math_2 += @s afro.math_4

# Initialize sequence_id
# If attack_seq_dir = 1 then clockwise
execute if score @s attack_seq_dir matches 1 run scoreboard players operation @s sequence_id = @s attack_bullets
execute if score @s attack_seq_dir matches 1 run scoreboard players remove @s sequence_id 1
# If attack_seq_dir = -1 then counter clockwise
execute if score @s attack_seq_dir matches -1 run scoreboard players set @s sequence_id 0

# Summon bullets
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/summon_bullets_helper

# Copy group ID to bullets
function theafroofdoom:entity/group_id/copy
