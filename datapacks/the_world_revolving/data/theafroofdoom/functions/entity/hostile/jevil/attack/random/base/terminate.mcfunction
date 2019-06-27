# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\base\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_random"

# Add Tag
tag @s add jevil_is_not_attacking_random

# Set scores
scoreboard players reset @s attack_var_rand

# Reset influences used
function theafroofdoom:entity/hostile/jevil/attack/random/base/reset_influences

# Remove Tag
tag @s remove jevil_is_attacking_random
