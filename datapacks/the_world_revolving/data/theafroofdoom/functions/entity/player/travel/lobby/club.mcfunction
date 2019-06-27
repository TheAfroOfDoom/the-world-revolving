# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\club.mcfunction

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_club
tag @s remove player_travel_lobby_to_club
