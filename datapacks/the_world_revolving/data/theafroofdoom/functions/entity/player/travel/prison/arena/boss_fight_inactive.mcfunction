# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\prison\arena\boss_fight_inactive.mcfunction

# Teleport to arena pre-boss fight
teleport @s ~ ~-47 ~-164

# If player has teleported to outside of the arena
# (ex. due to a server lag spike or not being in the inactive arena at the time of teleporting),
# teleport them back into it
execute unless entity @s[x=-30,y=4,z=-141,dx=60,dy=6,dz=10] unless entity @s[x=-21,y=4,z=-157,dx=42,dy=6,dz=42] unless entity @s[x=-5,y=4,z=-166,dx=10,dy=6,dz=60] run teleport @s 0 4 -164 0 0

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Give blindness
effect give @s blindness 2 0 true

# Remove tags
tag @s add player_room_prison_arena
tag @s remove player_travel_prison_to_arena
