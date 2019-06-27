# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\indicator\randomize\angle.mcfunction

# Update bounds
scoreboard players operation @s random_min = @s attack_ang_min
scoreboard players operation @s random_range = @s attack_ang_range

# Use RNG to get a random angle from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Store random score into a safer score
scoreboard players operation @s afro.math_1 = @s random
