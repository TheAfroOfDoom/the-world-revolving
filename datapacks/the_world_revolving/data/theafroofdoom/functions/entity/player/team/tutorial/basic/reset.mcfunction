# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\reset.mcfunction

# Set lamp to off (unoccupied)
execute unless block 59 121 -168 air run setblock 59 121 -168 air

# Kill tutorial director
kill @e[tag=tutorial_basic]

# Kill training dummy
kill @e[tag=tutorial_prop_basic]

# Set score to unoccupied
scoreboard players set #global.room.tutorial.basic.occupied setting 0
