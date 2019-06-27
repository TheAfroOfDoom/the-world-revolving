# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\initialize.mcfunction

# Initializes entities who want to bomb

# Add Tag
tag @s add jevil_is_attacking_bomb

# Set scores
scoreboard players set @s attack_clock -1

# Vanish Jevil
function theafroofdoom:entity/hostile/jevil/attack/vanish/down
