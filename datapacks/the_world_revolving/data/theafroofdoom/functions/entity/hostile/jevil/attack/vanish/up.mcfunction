# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\vanish\up.mcfunction

# Vanishes Jevil up at the start of each attack

# Vanish Jevil
teleport @s ~ ~10 ~

# Run base vanish function
execute positioned ~ ~ ~ run function theafroofdoom:entity/hostile/jevil/attack/vanish/base
