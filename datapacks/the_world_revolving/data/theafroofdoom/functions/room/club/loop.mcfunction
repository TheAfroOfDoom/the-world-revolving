# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\club\loop.mcfunction

# If there are no players left in the club room, set playtesters' nametags to invisible
execute if score #global.room.club.names setting matches 0 if entity @a[tag=player_room_club] run function theafroofdoom:room/club/names/visible

# If there are no players left in the club room, set playtesters' nametags to invisible
execute if score #global.room.club.names setting matches 1 unless entity @a[tag=player_room_club] run function theafroofdoom:room/club/names/invisible
