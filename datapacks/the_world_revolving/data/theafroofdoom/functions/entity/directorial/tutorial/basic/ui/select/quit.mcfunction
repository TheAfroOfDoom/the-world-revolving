# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\ui\select\quit.mcfunction

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~
playsound theafroofdoom:player.ui.select player @s 59 120 -166

# Add tag
tag @s add player_quit

# Terminate tutorial basic
execute as @e[tag=tutorial_basic] at @s run function theafroofdoom:entity/directorial/tutorial/basic/terminate
