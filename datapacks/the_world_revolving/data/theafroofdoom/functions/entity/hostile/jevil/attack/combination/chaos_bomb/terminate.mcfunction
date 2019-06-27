# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\chaos_bomb\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_combination_chaos_bomb"

# Add Tag
tag @s add jevil_is_not_attacking_combination_chaos_bomb

# Set scores of the attacks the combination used to default
function theafroofdoom:entity/hostile/jevil/attack/combination/base/reset_scores
function theafroofdoom:entity/hostile/jevil/attack/combination/bomb/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_combination_chaos_bomb

# Run base combination terminate function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/terminate
