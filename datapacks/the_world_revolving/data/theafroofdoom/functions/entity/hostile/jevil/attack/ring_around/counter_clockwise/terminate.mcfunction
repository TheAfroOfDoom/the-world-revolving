# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\counter_clockwise\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_ring_around_counter_clockwise"

# Add Tag
tag @s add jevil_is_not_attacking_ring_around_counter_clockwise

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_ring_around_counter_clockwise

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/terminate
