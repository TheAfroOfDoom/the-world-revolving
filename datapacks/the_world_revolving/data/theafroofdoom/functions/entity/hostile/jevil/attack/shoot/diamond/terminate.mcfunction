# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\diamond\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_shoot_diamond"

# Add Tag
tag @s add jevil_is_not_attacking_shoot_diamond

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_shoot_diamond

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/terminate
