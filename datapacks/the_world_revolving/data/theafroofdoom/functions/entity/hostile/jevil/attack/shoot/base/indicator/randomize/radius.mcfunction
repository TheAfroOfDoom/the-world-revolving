# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\indicator\randomize\radius.mcfunction

# Update bounds
scoreboard players operation @s random_min = @s attack_rad_min
scoreboard players operation @s random_range = @s attack_rad_range

# Use RNG to get a random radius from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Store random score into a safer score
scoreboard players operation @s afro.math_0 = @s random
