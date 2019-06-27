# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\heart\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_bomb_heart"

# Add Tag
tag @s add jevil_is_not_attacking_bomb_heart

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_bomb_heart

# Run base bomb terminate function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/terminate
