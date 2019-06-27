# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\convert.mcfunction

# Convert from polar to cartesian coordinates
# afro.math_1 = radius
# afro.math_2 = angle
# afro.math_4 = x * 100
# afro.math_5 = z * 100
scoreboard players operation @s math_in = @s afro.math_2

# Calculate x-coordinate using x = r * (100 * cos(theta)) / 100
# math:cos makes math_out = 100 * cos(math_in)
function math:cos
scoreboard players operation @s afro.math_4 = @s math_out
scoreboard players operation @s afro.math_4 *= @s afro.math_1

# Calculate z-coordinate using x = r * (100 * sin(theta)) / 100
# math:sin makes math_out = 100 * sin(math_in)
function math:sin
scoreboard players operation @s afro.math_5 = @s math_out
scoreboard players operation @s afro.math_5 *= @s afro.math_1

# Add 50 to afro.math_4 and afro.math_5 so bullets are summoned in the center of the block
scoreboard players add @s afro.math_4 50
scoreboard players add @s afro.math_5 50
