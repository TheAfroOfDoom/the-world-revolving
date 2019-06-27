# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\initialize.mcfunction

# Initialize inventory with disabled UI and a Barrier to quit the tutorial
function theafroofdoom:entity/player/team/tutorial/advanced/give

# Heal player
effect give @s instant_health 10 0 true

# Reset tension_points
scoreboard players set @s tension_points 0
