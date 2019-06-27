# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\decorative\club.mcfunction

# Store music index in afro.math_0
scoreboard players operation @s afro.math_0 = @s player_music

# Modulo the index to the beat of april_2012
scoreboard players operation @s afro.math_0 %= #9 constant

# Display a music note particle to the player every beat
execute if score @s afro.math_0 matches 0 run particle note 29.5 114.25 -125.5 0 0 0 1 1 normal @s
