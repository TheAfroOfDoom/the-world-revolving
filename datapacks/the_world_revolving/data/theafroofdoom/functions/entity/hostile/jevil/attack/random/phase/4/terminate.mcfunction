# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\phase\4\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_random_phase_4"

# Add Tag
tag @s add jevil_is_not_attacking_random_phase_4

# Remove Tag
tag @s remove jevil_is_attacking_random_phase_4

# Run base random terminate function
function theafroofdoom:entity/hostile/jevil/attack/random/base/terminate
