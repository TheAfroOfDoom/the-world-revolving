# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\lobby\heart_room\loop.mcfunction

# If there are no players left in the heart room, set playtesters' nametags to invisible
execute if score #global.room.lobby.hroom.names setting matches 0 if entity @s[x=9,z=-99,dx=9,dz=9] run function theafroofdoom:room/lobby/heart_room/names/visible

# If there are no players left in the heart room, set playtesters' nametags to invisible
execute if score #global.room.lobby.hroom.names setting matches 1 unless entity @s[x=9,z=-99,dx=9,dz=9] run function theafroofdoom:room/lobby/heart_room/names/invisible
