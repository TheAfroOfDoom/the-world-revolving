# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\spade\phantom\initialize.mcfunction

# Initializes entities tagged "jevil_phantom_attack_bomb" with score attack_variant = -1

# Set scores
scoreboard players set @s attack_variant -1

# Run base bomb phantom initialize function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/initialize
