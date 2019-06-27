# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\smiling\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_devilsknife_smiling"

# Add Tag
tag @s add jevil_is_not_attacking_devilsknife_smiling

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_devilsknife_smiling

# Run base shoot terminate function
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/terminate
