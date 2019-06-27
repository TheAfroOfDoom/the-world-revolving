# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\credits.mcfunction

# Teleport to hard-coded tutorial basic coordinates
teleport @s 55.5 120 -150.5 0 0

# Playsound of UI selection
execute at @s run playsound theafroofdoom:player.ui.select player @s ~ ~ ~

# Reset music index
scoreboard players set @s player_music -20

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Stop current music
stopsound @s music

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_credits
tag @s remove player_travel_lobby_to_credits
