# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\healing\loop.mcfunction

# While hearts_needed > 0, continue regen
execute if score @s hearts_needed matches 1.. run effect give @s regeneration 1 6 true

# If hearts_needed = 0, remove regen
execute if score @s hearts_needed matches 0 run effect clear @s regeneration

# Decrement hearts_needed if it is > 0
execute if score @s hearts_needed matches 1.. run scoreboard players remove @s hearts_needed 1
