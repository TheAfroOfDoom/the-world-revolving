# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\phase\0\initialize.mcfunction

# Initializes entities who want to random phase 0

# Add Tag
tag @s add jevil_is_attacking_random_phase_0

# Set scores
scoreboard players set @s attack_var_rand -5

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/base/initialize
