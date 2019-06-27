# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\tension_points\display.mcfunction

# Cap tension points at 100
execute if score @s player_tpoints matches 101.. run scoreboard players set @s player_tpoints 100

# Set level to 28 (experimentally determined to work - takes 101 exp points before overflowing to next level)
xp set @s 28 levels

# Reset points displayed (how much bar is filled)
# Add one point (just needed to make bar display properly)
xp set @s 1 points

# Recursively add one point per player_tpoints
scoreboard players operation @s afro.math_0 = @s player_tpoints
execute if score @s afro.math_0 matches 1.. run function theafroofdoom:entity/player/team/player/tension_points/add
