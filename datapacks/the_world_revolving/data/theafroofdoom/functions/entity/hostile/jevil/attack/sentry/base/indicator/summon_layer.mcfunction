# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\indicator\summon_layer.mcfunction

# recursive function with exit condition being afro.math_6 = 0

# afro.math_0 = angle between bullets
# afro.math_1 = yaw of indicator
# afro.math_6 = number of layers left to summon

# Decrement number of layers left to summon
scoreboard players remove @s afro.math_6 1

# Store number of bullets per layer to summon in afro.math_3
scoreboard players operation @s afro.math_3 = @s attack_bullets

# Summon the bullets in this layer
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/summon_bullets_helper

# Increment next sequence_id to set
scoreboard players add @s sequence_id 4

# Reset bullet yaw offset score
scoreboard players operation @s afro.math_2 = @s afro.math_0
scoreboard players operation @s afro.math_2 *= #-1 constant

# Summon next bullet if afro.math_6 (attack_cycles) > 0
execute unless entity @s[scores={afro.math_6=..0}] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/summon_layer
