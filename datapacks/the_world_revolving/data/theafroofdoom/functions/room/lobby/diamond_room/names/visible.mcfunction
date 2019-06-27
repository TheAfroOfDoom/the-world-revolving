# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\lobby\diamond_room\names\visible.mcfunction

# Set playtesters' CustomNameVisible NBT to invisible
execute as @e[tag=decorative_lobby_diamond_room,tag=playtester] run data modify entity @s CustomNameVisible set value 1

# Set scores
scoreboard players set #global.room.lobby.droom.names setting 1
