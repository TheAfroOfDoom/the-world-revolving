# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_rain_diamond"

# Add Tag
tag @s add jevil_is_not_attacking_rain_diamond

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_rain_diamond

# Run base rain terminate function
function theafroofdoom:entity/hostile/jevil/attack/rain/base/terminate
