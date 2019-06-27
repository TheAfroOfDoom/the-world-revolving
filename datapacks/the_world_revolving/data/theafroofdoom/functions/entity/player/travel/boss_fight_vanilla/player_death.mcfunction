# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\boss_fight_vanilla\player_death.mcfunction

# Teleport all players in the boss_fight room to the player_death room
teleport @s 0.5 51 7.5 0 0

# Set spawnpoint to player_death room
spawnpoint @s 0 51 7

# Set gamemode
gamemode adventure

# Reset music index
scoreboard players set @s player_music -1

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_player_death
tag @s remove player_travel_boss_fight_vanilla_to_player_death
