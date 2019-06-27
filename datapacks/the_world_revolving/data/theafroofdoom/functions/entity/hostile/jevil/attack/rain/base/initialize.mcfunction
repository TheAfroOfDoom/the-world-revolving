# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\initialize.mcfunction

# Initializes entities who want to rain

# Add Tag
tag @s add jevil_is_attacking_rain

# Set scores
scoreboard players set @s attack_clock -1

# Vanish Jevil
function theafroofdoom:entity/hostile/jevil/attack/vanish/up
