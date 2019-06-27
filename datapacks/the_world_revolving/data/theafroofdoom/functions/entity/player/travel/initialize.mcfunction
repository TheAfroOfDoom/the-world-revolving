# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\initialize.mcfunction

# Teleport to lobby origin
teleport @s 60 120 -160 90 0

# Set gamemode
gamemode adventure

# Clear effects
effect clear @s

# Clear inventory
clear

# Leave team
team leave @s

# Reset music index
scoreboard players set @s player_music -1

# Reset tags
function theafroofdoom:entity/player/reset_tags

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_lobby
tag @s remove player_travel_initialize
