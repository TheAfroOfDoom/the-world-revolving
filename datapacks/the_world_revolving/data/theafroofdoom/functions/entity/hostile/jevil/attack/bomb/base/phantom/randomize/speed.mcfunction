# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\phantom\randomize\speed.mcfunction

# NOTE(jordan): Change these values if we wish for more landing times
# Update bounds
scoreboard players set @s random_min 0
scoreboard players set @s random_range 4

# Use RNG to get a random radius from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Store random score into a afro.math_0
scoreboard players operation @s afro.math_0 = @s random
