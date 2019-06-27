# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\player_death\prison.mcfunction

# Teleport to prison
teleport @s 0 51 -2 180 0

# Set spawnpoint
execute at @s run spawnpoint @s ~ ~ ~

# Join playing team if on dead team
execute if entity @s[team=dead] run team join player

# Set gamemode
gamemode adventure

# Delay music start
scoreboard players set @s player_music -20

# Give players blindness / slowness
effect give @s blindness 3 0 true
effect give @s slowness 2 4 true

# Remove tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_prison
tag @s remove player_travel_player_death_to_prison
