# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\join_helper.mcfunction

# Join tutorial team
team join tutorial_adv

# Add travel tag
tag @s add player_travel_lobby_to_tutorial_advanced

# Set occupied score
scoreboard players set #global.room.tutorial.advanced.occupied setting 1

# Set occupied lamp to on
setblock 59 121 -152 redstone_block
