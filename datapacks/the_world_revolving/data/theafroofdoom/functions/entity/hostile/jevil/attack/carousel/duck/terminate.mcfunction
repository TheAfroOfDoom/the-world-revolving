# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\duck\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_carousel_duck"

# Add Tag
tag @s add jevil_is_not_attacking_carousel_duck

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_carousel_duck

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/carousel/base/terminate
