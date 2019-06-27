# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\lobby\diamond_room\loop.mcfunction

# If there are no players left in the diamond room, set playtesters' nametags to invisible
execute if score #global.room.lobby.droom.names setting matches 0 if entity @s[x=12,z=-108,dx=8,dz=11] run function theafroofdoom:room/lobby/diamond_room/names/visible

# If there are no players left in the diamond room, set playtesters' nametags to invisible
execute if score #global.room.lobby.droom.names setting matches 1 unless entity @s[x=12,z=-108,dx=8,dz=11] run function theafroofdoom:room/lobby/diamond_room/names/invisible
