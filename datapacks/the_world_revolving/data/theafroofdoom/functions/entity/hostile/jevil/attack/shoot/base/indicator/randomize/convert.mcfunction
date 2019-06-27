# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\indicator\randomize\convert.mcfunction

# Convert from polar to cartesian coordinates
# afro.math_0 = radius
# afro.math_1 = angle
# afro.math_2 = x * 100
# afro.math_3 = z * 100
scoreboard players operation @s math_in = @s afro.math_1

# Calculate x-coordinate using x = r * (100 * cos(theta)) / 100
# math:cos makes math_out = 100 * cos(math_in)
function math:cos
scoreboard players operation @s afro.math_2 = @s math_out
scoreboard players operation @s afro.math_2 *= @s afro.math_0

# Calculate z-coordinate using x = r * (100 * sin(theta)) / 100
# math:sin makes math_out = 100 * sin(math_in)
function math:sin
scoreboard players operation @s afro.math_3 = @s math_out
scoreboard players operation @s afro.math_3 *= @s afro.math_0
