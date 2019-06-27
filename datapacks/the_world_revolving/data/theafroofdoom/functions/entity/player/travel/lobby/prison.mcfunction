# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\prison.mcfunction

# Teleport downwards to elevator bottom
teleport @s ~ ~-13 ~

# If player has teleported to outside the bottom elevator room
# (ex. due to a server lag spike), teleport them back into it
execute unless entity @s[x=6,y=77,z=-59,dx=5,dy=6,dz=8] run teleport @s 9 78 -55 90 0

# Set button back to unpressed
setblock 11 92 -52 oak_button[face=wall,facing=west,powered=false]
setblock 11 93 -52 oak_button[face=wall,facing=west,powered=false]
setblock 13 93 -52 redstone_wire[power=0]
data merge block 13 92 -52 {powered:0}

# Playsound of elevator stopping
playsound theafroofdoom:elevator ambient @s 9 78 -55

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_prison
tag @s remove player_travel_lobby_to_prison
