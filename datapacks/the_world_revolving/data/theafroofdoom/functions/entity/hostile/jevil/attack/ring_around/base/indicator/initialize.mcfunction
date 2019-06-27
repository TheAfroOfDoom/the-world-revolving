# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_ring_around_new"

# Set scores
scoreboard players set @s attack_clock -1

# Randomize ring's angle and radius
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/randomize/ring

# From last function:
# afro.math_0 = radius
# afro.math_1 = angle offset
# Summon bullet ring
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/summon_bullets

# Re-initialize sequence_id
scoreboard players operation @s sequence_id = @s attack_bullets
scoreboard players remove @s sequence_id 1

# Remove Tags
tag @s remove attack_indicator_ring_around_new
