# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\pirouette_parrot\randomize\direction.mcfunction

# Randomizes direction based on angle parrot was summoned at

# # Add random offset to direction
# Set bounds
scoreboard players set @s random_min -14
scoreboard players set @s random_range 29

# Get a random value from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Store random score into a safer score
scoreboard players operation @s afro.math_3 = @s random
