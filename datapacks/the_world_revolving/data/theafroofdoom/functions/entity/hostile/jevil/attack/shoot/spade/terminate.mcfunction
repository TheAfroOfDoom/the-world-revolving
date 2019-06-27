# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\spade\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_shoot_spade"

# Add Tag
tag @s add jevil_is_not_attacking_shoot_spade

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_shoot_spade

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/terminate
