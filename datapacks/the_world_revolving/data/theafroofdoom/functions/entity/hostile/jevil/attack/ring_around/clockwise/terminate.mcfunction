# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\clockwise\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_ring_around_clockwise"

# Add Tag
tag @s add jevil_is_not_attacking_ring_around_clockwise

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_ring_around_clockwise

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/terminate
