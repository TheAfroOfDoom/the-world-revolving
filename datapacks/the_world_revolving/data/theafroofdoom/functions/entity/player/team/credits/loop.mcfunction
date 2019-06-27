# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\loop.mcfunction

# Force camera to stay in place
teleport @s 55.5 120 -150.5 0 0

# Handle tension points
function theafroofdoom:entity/player/team/credits/tension_points

# Decrement credits_delay
execute if score @s credits_delay matches 0.. run scoreboard players remove @s credits_delay 1

# Display text based on cutscene_text if credits_delay = -1
execute if score @s credits_delay matches -1 run function theafroofdoom:entity/player/team/credits/phase

# Fixes any inventory issues depending on player's inventory (per phase)
function theafroofdoom:entity/player/team/credits/fix_inventory

# Handle Quit behavior
function theafroofdoom:entity/player/team/credits/quit

# If all phases have finished, terminate and move player back to lobby
execute if score @s credits_delay matches -1 if score @s credits_phase matches 7 run function theafroofdoom:entity/player/team/credits/terminate
