# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\reset.mcfunction

# Set lamp to off (unoccupied)
execute unless block 59 121 -152 air run setblock 59 121 -152 air

# Kill tutorial director
kill @e[tag=tutorial_advanced]

# Kill training dummy
kill @e[tag=tutorial_prop_advanced]

# Set score to unoccupied
scoreboard players set #global.room.tutorial.advanced.occupied setting 0
