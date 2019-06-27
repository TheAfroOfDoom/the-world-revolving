# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\horse\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_carousel_horse"

# Add Tag
tag @s add jevil_is_not_attacking_carousel_horse

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_carousel_horse

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/carousel/base/terminate
