# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\prison\from_arena\credits.mcfunction

# Teleport to hard-coded tutorial basic coordinates
teleport @s 55.5 120 -150.5 0 0

# Reset music index
scoreboard players set @s player_music -20

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Stop current music
stopsound @s music

# Join credits team
function theafroofdoom:entity/player/team/credits/join

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_credits
tag @s remove player_travel_arena_to_prison
