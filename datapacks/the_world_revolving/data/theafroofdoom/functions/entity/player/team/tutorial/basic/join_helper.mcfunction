# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\join_helper.mcfunction

# Join tutorial team
team join tutorial_basic

# Add travel tag
tag @s add player_travel_lobby_to_tutorial_basic

# Set occupied score
scoreboard players set #global.room.tutorial.basic.occupied setting 1

# Set occupied lamp to on
setblock 59 121 -168 redstone_block
