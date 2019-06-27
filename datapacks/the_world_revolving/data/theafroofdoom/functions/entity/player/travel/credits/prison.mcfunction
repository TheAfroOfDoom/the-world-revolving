# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\credits\prison.mcfunction

# Teleport to prison
teleport @s 0 51 -2 180 0

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Set gamemode
gamemode adventure

# Delay music start
scoreboard players set @s player_music -20

# Give players blindness / slowness
effect give @s blindness 3 0 true
effect give @s slowness 3 4 true

# Stop music
stopsound @s music

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_prison
tag @s remove player_travel_credits_to_prison
