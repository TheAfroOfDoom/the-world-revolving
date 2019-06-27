# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\0\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_combination_0"

# Add Tag
tag @s add jevil_is_not_attacking_combination_0

# Set scores of the attacks the combination used to default
function theafroofdoom:entity/hostile/jevil/attack/combination/base/reset_scores
function theafroofdoom:entity/hostile/jevil/attack/combination/0/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_combination_0

# Run base combination terminate function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/terminate
