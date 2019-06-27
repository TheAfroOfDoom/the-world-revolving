# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room.mcfunction

# If player has no room tags, force them to travel to lobby
# (this includes a player first joining the world)
execute if entity @s[tag=!player_room_boss_fight_vanilla,tag=!player_room_club,tag=!player_room_credits,tag=!player_room_lobby,tag=!player_room_player_death,tag=!player_room_prison,tag=!player_room_shop,tag=!player_room_tutorial_basic,tag=!player_room_tutorial_advanced] run tag @s add player_travel_initialize

# Handle travelling a player if their location matches a certain box
function theafroofdoom:entity/player/travel/location

# Initialize a player if they have no room tags
execute if entity @s[tag=player_travel_initialize] run function theafroofdoom:entity/player/travel/initialize

# Handle if a player needs to travel
function theafroofdoom:entity/player/travel

# Handle room-specific music
function theafroofdoom:entity/player/room/music

# Handle room-decorative behavior
function theafroofdoom:entity/player/room/decorative
