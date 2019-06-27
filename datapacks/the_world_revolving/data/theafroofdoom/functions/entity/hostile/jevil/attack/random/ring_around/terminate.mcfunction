# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\ring_around\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_random_ring_around"

# Add Tag
tag @s add jevil_is_not_attacking_random_ring_around

# Remove Tag
tag @s remove jevil_is_attacking_random_ring_around

# Run base random terminate function
function theafroofdoom:entity/hostile/jevil/attack/random/base/terminate
