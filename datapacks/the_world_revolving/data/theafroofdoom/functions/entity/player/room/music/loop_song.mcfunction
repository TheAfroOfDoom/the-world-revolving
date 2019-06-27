# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\loop_song.mcfunction

# Stop music in case we stop song early (likely since we can't get perfect precision)
stopsound @s music

# Loop song based off what room player is in
execute if entity @s[tag=player_room_boss_fight_vanilla] if entity @e[tag=boss_fight_vanilla] run function theafroofdoom:entity/player/room/music/loop_song/boss_fight_vanilla
execute if entity @s[tag=player_room_club] run function theafroofdoom:entity/player/room/music/loop_song/club
execute if entity @s[tag=player_room_credits] run function theafroofdoom:entity/player/room/music/loop_song/credits
execute if entity @s[tag=player_room_lobby] run function theafroofdoom:entity/player/room/music/loop_song/lobby
execute if entity @s[tag=player_room_prison] run function theafroofdoom:entity/player/room/music/loop_song/prison
execute if entity @s[tag=player_room_shop] run function theafroofdoom:entity/player/room/music/loop_song/shop
execute if entity @s[tag=player_room_tutorial_advanced] run function theafroofdoom:entity/player/room/music/loop_song/tutorial_advanced
execute if entity @s[tag=player_room_tutorial_basic] run function theafroofdoom:entity/player/room/music/loop_song/tutorial_basic
