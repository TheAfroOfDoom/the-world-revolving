# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\basic\terminate.mcfunction

# Kill self and props
kill @s
kill @e[tag=tutorial_prop_basic]

# Terminate player
execute as @a[team=tutorial_basic] at @s run function theafroofdoom:entity/player/team/tutorial/basic/terminate
