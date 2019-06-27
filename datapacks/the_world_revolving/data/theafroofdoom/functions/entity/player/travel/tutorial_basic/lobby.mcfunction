# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\tutorial_basic\lobby.mcfunction

# Teleport to hard-coded lobby coordinates
teleport @s 59 120 -166 0 0

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_lobby
tag @s remove player_travel_tutorial_basic_to_lobby
