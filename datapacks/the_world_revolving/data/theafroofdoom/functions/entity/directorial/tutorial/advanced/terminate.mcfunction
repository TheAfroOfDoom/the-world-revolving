# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\advanced\terminate.mcfunction

# Kill self and props
kill @s
kill @e[tag=tutorial_prop_advanced]

# Terminate player
execute as @a[team=tutorial_adv] at @s run function theafroofdoom:entity/player/team/tutorial/advanced/terminate
