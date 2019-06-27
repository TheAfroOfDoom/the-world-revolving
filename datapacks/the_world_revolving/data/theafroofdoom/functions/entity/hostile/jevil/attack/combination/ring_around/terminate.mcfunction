# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\ring_around\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_combination_ring_around"

# Add Tag
tag @s add jevil_is_not_attacking_combination_ring_around

# Set scores of the attacks the combination used to default
function theafroofdoom:entity/hostile/jevil/attack/combination/base/reset_scores
function theafroofdoom:entity/hostile/jevil/attack/combination/ring_around/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_combination_ring_around

# Run base combination terminate function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/terminate
