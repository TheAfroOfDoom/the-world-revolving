# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\summon_bullets_helper.mcfunction

# recursive function with exit condition being afro.math_3 = 0

# afro.math_0 = angle between bullets
# afro.math_1 = radius
# afro.math_2 = current angle
# afro.math_3 = number of bullets left to summon

# Summon bullet based on variant
execute if entity @s[scores={attack_variant=-4}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/indicator/summon_bullets_helper
execute if entity @s[scores={attack_variant=-3}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/indicator/summon_bullets_helper
execute if entity @s[scores={attack_variant=-2}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/indicator/summon_bullets_helper
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/indicator/summon_bullets_helper

# Calculate and store latest bullet's position based on radius and angle
# afro.math_4 = x * 100
# afro.math_5 = z * 100
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/convert
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/store

# Store (yaw + 90) into latest bullet's yaw
scoreboard players operation @s afro.math_4 = @s afro.math_2
scoreboard players add @s afro.math_4 90
execute store result entity @e[limit=1,tag=attack_bullet_ring_around_new] Rotation[0] float 1 run scoreboard players get @s afro.math_4

# Set latest bullet's sequence_id
execute store result score @e[limit=1,tag=attack_bullet_ring_around_new] sequence_id run scoreboard players get @s sequence_id

# Store attack_model as the bullet's CustomModelData
execute store result entity @e[limit=1,tag=attack_bullet_ring_around_new] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s attack_model

# Rotate indicator's yaw to be ready for next bullet
scoreboard players operation @s afro.math_2 -= @s afro.math_0

# Increment sequence_id
execute if score @s attack_seq_dir matches -1 run scoreboard players add @s sequence_id 1
execute if score @s attack_seq_dir matches 1 run scoreboard players remove @s sequence_id 1

# Decrement number of bullets left to summon
scoreboard players remove @s afro.math_3 1

# Remove "new" status of latest bullet
tag @e[tag=attack_bullet_ring_around_new] remove attack_bullet_ring_around_new

# Summon next bullet if afro.math_3 (attack_bullets) > 0
execute unless entity @s[scores={afro.math_3=..0}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/summon_bullets_helper
