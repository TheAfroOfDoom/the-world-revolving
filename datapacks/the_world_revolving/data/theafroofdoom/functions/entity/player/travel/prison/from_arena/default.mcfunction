# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\prison\from_arena\default.mcfunction

# Teleport to prison
teleport @s ~ ~47 ~164

# If player has teleported to outside of the defined prison area
# (ex. due to a server lag spike or not being in the inactive arena at the time of teleporting),
# teleport them back into it
execute unless entity @s[x=-2,y=51,z=-11,dx=4,dy=6,dz=10] run teleport @s 0 51 -2 180 0

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Give blindness
effect give @s blindness 2 0 true

# Remove tags
tag @s add player_room_prison
tag @s remove player_travel_arena_to_prison
tag @s remove player_room_prison_arena
