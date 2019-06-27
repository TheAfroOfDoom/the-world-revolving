# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\randomize\multiplier.mcfunction

# Update bounds
scoreboard players set @s random_min 0
scoreboard players operation @s random_range = @s attack_bullets
scoreboard players remove @s random_range 1

# Use RNG to get a random radius from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Store random score into a safer score
scoreboard players operation @s afro.math_4 = @s random
