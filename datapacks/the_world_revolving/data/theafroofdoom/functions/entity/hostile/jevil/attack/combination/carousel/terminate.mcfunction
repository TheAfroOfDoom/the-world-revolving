# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\carousel\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_combination_carousel"

# Add Tag
tag @s add jevil_is_not_attacking_combination_carousel

# Set scores of the attacks the combination used to default
function theafroofdoom:entity/hostile/jevil/attack/combination/base/reset_scores
function theafroofdoom:entity/hostile/jevil/attack/combination/carousel/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_combination_carousel

# Run base combination terminate function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/terminate
