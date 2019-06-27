# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\ui\select\quit.mcfunction

# Playsounds
playsound theafroofdoom:player.ui.select player @s ~ ~ ~
playsound theafroofdoom:player.ui.select player @s 59 120 -154

# Add tag
tag @s add player_quit

# Terminate tutorial advanced
execute as @e[tag=tutorial_advanced] at @s run function theafroofdoom:entity/directorial/tutorial/advanced/terminate
