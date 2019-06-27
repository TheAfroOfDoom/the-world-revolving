# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\pirouette_parrot\randomize\location.mcfunction

# Set radius
scoreboard players operation @s afro.math_0 = #arena.wall.x constant
scoreboard players add @s afro.math_0 1

# Get random angle
function theafroofdoom:entity/miscellaneous/pirouette_parrot/randomize/angle

# Convert from polar to cartesian coordinates and store coordinates into NBT
function theafroofdoom:entity/miscellaneous/pirouette_parrot/randomize/convert
