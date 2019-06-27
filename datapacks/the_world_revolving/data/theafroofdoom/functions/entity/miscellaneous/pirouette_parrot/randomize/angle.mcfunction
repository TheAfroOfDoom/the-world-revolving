# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\pirouette_parrot\randomize\angle.mcfunction

# Set bounds
scoreboard players set @s random_min 0
scoreboard players set @s random_range 360

# Get a random value from the range [random_min, random_min + random_range)
function theafroofdoom:rng

# Store random score into a safer score
scoreboard players operation @s afro.math_1 = @s random
