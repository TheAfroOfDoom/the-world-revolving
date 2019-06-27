# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\1_to_5.mcfunction

# Teleport upwards to fourth floor
teleport @s 51 120 -160 90 ~

# Set button back to unpressed
setblock 30 92 -67 oak_button[face=wall,facing=west,powered=false]
setblock 30 93 -67 oak_button[face=wall,facing=west,powered=false]
setblock 32 93 -67 redstone_wire[power=0]
data merge block 32 92 -67 {powered:0}

# Playsound of elevator stopping
playsound theafroofdoom:elevator ambient @s 52 120 -160

# Remove tags
tag @s remove player_travel_lobby_1_to_5
