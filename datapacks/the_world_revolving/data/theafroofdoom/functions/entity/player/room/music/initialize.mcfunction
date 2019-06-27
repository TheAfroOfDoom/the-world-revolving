# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\initialize.mcfunction

# Stop any previous music that is already playing
stopsound @s music

# Initialize based off what room player is in
execute if entity @s[tag=player_room_boss_fight_vanilla] run function theafroofdoom:entity/player/room/music/initialize/boss_fight_vanilla
execute if entity @s[tag=player_room_club] run function theafroofdoom:entity/player/room/music/initialize/club
execute if entity @s[tag=player_room_credits] run function theafroofdoom:entity/player/room/music/initialize/credits
execute if entity @s[tag=player_room_lobby] run function theafroofdoom:entity/player/room/music/initialize/lobby
execute if entity @s[tag=player_room_prison] run function theafroofdoom:entity/player/room/music/initialize/prison
execute if entity @s[tag=player_room_shop] run function theafroofdoom:entity/player/room/music/initialize/shop
execute if entity @s[tag=player_room_tutorial_advanced] run function theafroofdoom:entity/player/room/music/initialize/tutorial_advanced
execute if entity @s[tag=player_room_tutorial_basic] run function theafroofdoom:entity/player/room/music/initialize/tutorial_basic
