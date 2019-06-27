# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\basic\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_devilsknife_basic"

# Add Tag
tag @s add jevil_is_not_attacking_devilsknife_basic

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_devilsknife_basic

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/terminate
