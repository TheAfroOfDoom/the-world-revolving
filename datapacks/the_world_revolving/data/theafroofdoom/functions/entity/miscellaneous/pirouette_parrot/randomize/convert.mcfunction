# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\pirouette_parrot\randomize\convert.mcfunction

# Convert from polar to cartesian coordinates

# afro.math_0 = radius
# afro.math_1 = angle
scoreboard players operation @s math_in = @s afro.math_1

# Calculate x-coordinate using x = r * cos(theta)
# math:cos makes math_out = cos(math_in)
function math:cos
scoreboard players operation @s afro.math_2 = @s math_out
scoreboard players operation @s afro.math_2 *= @s afro.math_0
scoreboard players operation @s afro.math_2 /= #100 constant

# Store x-coordinate
execute store result entity @s Pos[0] double 1 run scoreboard players get @s afro.math_2

# Calculate z-coordinate using x = r * sin(theta)
# math:sin makes math_out = sin(math_in)
function math:sin
scoreboard players operation @s afro.math_2 = @s math_out
scoreboard players operation @s afro.math_2 *= @s afro.math_0
scoreboard players operation @s afro.math_2 /= #100 constant

# Store z-coordinate
execute store result entity @s Pos[2] double 1 run scoreboard players get @s afro.math_2
