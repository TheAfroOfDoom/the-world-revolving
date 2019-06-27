# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\club\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_bomb_club"

# Add Tag
tag @s add jevil_is_not_attacking_bomb_club

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/bomb/club/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_bomb_club

# Run base bomb terminate function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/terminate
