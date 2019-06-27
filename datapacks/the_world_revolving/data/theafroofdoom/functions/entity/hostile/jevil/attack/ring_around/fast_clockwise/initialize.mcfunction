# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\fast_clockwise\initialize.mcfunction

# Initializes entities who want to ring around fast_clockwise

# Add Tag
tag @s add jevil_is_attacking_ring_around_fast_clockwise

# Set scores
scoreboard players operation @s attack_length = #attack_ring_around_fast_clockwise attack_length
scoreboard players operation @s attack_rate = #attack_ring_around_fast_clockwise attack_rate
scoreboard players operation @s attack_recover = #attack_ring_around_fast_clockwise attack_recover
scoreboard players operation @s attack_voice = #attack_ring_around_fast_clockwise attack_voice
scoreboard players set @s attack_variant -3

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/initialize
