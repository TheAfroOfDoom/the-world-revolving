# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_bomb_new"

# Set scores
scoreboard players set @s afro.math_6 0

# Randomize location attack is shot from
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/randomize/location

# Remove Tags
tag @s remove attack_indicator_bomb_new
