# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\ring_around\initialize.mcfunction

# Initializes entities who want to combination ring around
# Contains:
# attack_ring_around_fast_clockwise: 1
# attack_ring_around_fast_counter_clockwise: 1

# Add Tag
tag @s add jevil_is_attacking_combination_ring_around

# Set scores
scoreboard players operation @s attack_diff = #attack_combination_ring_around attack_diff
scoreboard players operation @s attack_length = #attack_combination_ring_around attack_length
scoreboard players operation @s attack_rate = #attack_combination_ring_around attack_rate
scoreboard players operation @s attack_rt_static = #attack_combination_ring_around attack_rt_static
scoreboard players operation @s attack_seq_spd = #attack_combination_ring_around attack_seq_spd
scoreboard players operation @s attack_voice = #attack_combination_ring_around attack_voice
scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/initialize
