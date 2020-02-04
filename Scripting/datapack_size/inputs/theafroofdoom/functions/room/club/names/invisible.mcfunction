# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\club\names\invisible.mcfunction

# Set playtesters' CustomNameVisible NBT to invisible
execute as @e[tag=decorative_club,tag=playtester] run data modify entity @s CustomNameVisible set value 0

# Set scores
scoreboard players set #global.room.club.names setting 0
