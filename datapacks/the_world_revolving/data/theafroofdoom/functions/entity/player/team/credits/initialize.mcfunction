# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\initialize.mcfunction

# Set scores
scoreboard players set @s credits_delay 20
scoreboard players set @s credits_phase 0
scoreboard players set @s credits_subphase -1

# Clear inventory
clear

# Heal player
effect give @s instant_health 10 0 true

# Apply effects
effect give @s invisibility 1000000 0 true
effect give @s resistance 1000000 4 true
effect give @s weakness 1000000 100 true

# Reset tension_points
scoreboard players set @s tension_points 0
