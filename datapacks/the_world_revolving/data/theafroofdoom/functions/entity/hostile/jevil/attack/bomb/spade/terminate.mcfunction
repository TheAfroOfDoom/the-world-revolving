# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\spade\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_bomb_spade"

# Add Tag
tag @s add jevil_is_not_attacking_bomb_spade

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_bomb_spade

# Run base bomb terminate function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/terminate
