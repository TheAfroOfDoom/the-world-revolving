# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\prison\lobby.mcfunction

# Teleport upwards to elevator top
teleport @s ~ ~13 ~

# If player has teleported to outside the bottom elevator room
# (ex. due to a server lag spike), teleport them back into it
execute unless entity @s[x=6,y=90,z=-59,dx=5,dy=6,dz=8] run teleport @s 9 91 -55 90 0

# Set button back to unpressed
setblock 11 79 -52 spruce_button[face=wall,facing=west,powered=false]
setblock 11 80 -52 spruce_button[face=wall,facing=west,powered=false]
setblock 13 80 -52 redstone_wire[power=0]
data merge block 13 79 -52 {powered:0}

# Playsound of elevator stopping
playsound theafroofdoom:elevator ambient @s

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_lobby
tag @s remove player_travel_prison_to_lobby
