# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\initialize.mcfunction

# Initializes entities who want to ring around

# Add Tag
tag @s add jevil_is_attacking_ring_around

# Set scores
scoreboard players set @s attack_clock -1

# Vanish Jevil
function theafroofdoom:entity/hostile/jevil/attack/vanish/up
