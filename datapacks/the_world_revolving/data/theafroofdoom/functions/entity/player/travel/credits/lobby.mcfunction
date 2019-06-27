# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\credits\lobby.mcfunction

# Teleport to hard-coded lobby coordinates
teleport @s 55.5 120 -153.5 180 0

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_lobby
tag @s remove player_travel_credits_to_lobby
