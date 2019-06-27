# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\diamond\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_bomb_diamond"

# Add Tag
tag @s add jevil_is_not_attacking_bomb_diamond

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_bomb_diamond

# Run base bomb terminate function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/terminate
