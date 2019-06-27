# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\initialize.mcfunction

# Initializes entities who want to sentry

# Add Tag
tag @s add jevil_is_attacking_sentry

# Set scores
scoreboard players set @s attack_clock -1

# Vanish Jevil
function theafroofdoom:entity/hostile/jevil/attack/vanish/up
