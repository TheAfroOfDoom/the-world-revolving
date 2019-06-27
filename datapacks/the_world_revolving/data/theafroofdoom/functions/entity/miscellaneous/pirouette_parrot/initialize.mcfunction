# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\pirouette_parrot\initialize.mcfunction

# Set scores
scoreboard players set @s parrot_clock -1

# # Randomize certain aspects of this parrot

# Color
function theafroofdoom:entity/miscellaneous/pirouette_parrot/randomize/color
execute store result entity @s Variant int 1 run scoreboard players get @s afro.math_0

# Location
function theafroofdoom:entity/miscellaneous/pirouette_parrot/randomize/location

# Direction
function theafroofdoom:entity/miscellaneous/pirouette_parrot/randomize/direction

# Speed
function theafroofdoom:entity/miscellaneous/pirouette_parrot/randomize/speed

# Remove tags
tag @s remove pirouette_parrot_new
