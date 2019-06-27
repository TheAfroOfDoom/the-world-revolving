# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\ring_around\initialize.mcfunction

# Initializes entities who want to random ring around

# Add Tag
tag @s add jevil_is_attacking_random_ring_around

# Set scores
scoreboard players set @s attack_var_rand -1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/base/initialize
