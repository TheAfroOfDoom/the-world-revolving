# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\ui\select\quit.mcfunction

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~
playsound theafroofdoom:player.ui.select player @s 59 120 -166

# Add tag
tag @s add player_quit

# Terminate credits sequence
function theafroofdoom:entity/player/team/credits/terminate
