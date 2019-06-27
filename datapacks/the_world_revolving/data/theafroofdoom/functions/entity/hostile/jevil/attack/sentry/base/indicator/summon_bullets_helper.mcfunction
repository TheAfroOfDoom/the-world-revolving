# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\indicator\summon_bullets_helper.mcfunction

# recursive function with exit condition being afro.math_3 = 0

# afro.math_0 = sentry-bullet ID
# afro.math_1 = yaw of indicator
# afro.math_3 = number of bullets left to summon

# Summon bullet based on variant
execute if entity @s[scores={attack_variant=-1}] run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/indicator/summon_bullets_helper

# Copy offset to latest bullet
scoreboard players operation @e[tag=attack_bullet_sentry_new] afro.math_0 = @s afro.math_2

# Store attack_model as the damaging AEC's attack_model score for later
scoreboard players operation @e[tag=attack_bullet_sentry_new] attack_model = @s attack_model_1

# Decrement number of bullets left to summon
scoreboard players remove @s afro.math_3 1

# Set sequence_id equal to indicator's temp one
scoreboard players operation @e[tag=attack_bullet_sentry_new] sequence_id = @s sequence_id

# Remove "new" status of latest bullet
tag @e[tag=attack_bullet_sentry_new] remove attack_bullet_sentry_new

# Update bullet yaw offset score
scoreboard players operation @s afro.math_2 += @s afro.math_0

# Summon next bullet if afro.math_3 (attack_bullets) > 0
execute unless entity @s[scores={afro.math_3=..0}] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/summon_bullets_helper
