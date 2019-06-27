# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\tension_points.mcfunction

# Add tension points if the player has a luck effect and no bad luck effect (if they dodge)
execute if data entity @s ActiveEffects[{Id:26b}] unless data entity @s ActiveEffects[{Id:27b}] run function theafroofdoom:entity/player/team/player/tension_points/dodge

# Handle tension points display (xp bar)
function theafroofdoom:entity/player/team/tutorial/advanced/tension_points/display
