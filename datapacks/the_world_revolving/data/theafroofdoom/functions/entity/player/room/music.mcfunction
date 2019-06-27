# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music.mcfunction

# If player_music = -1, initialize a song based on current room
execute if score @s player_music matches -1 run function theafroofdoom:entity/player/room/music/initialize

# If player_music < -1, delay song start
execute if score @s player_music matches ..-2 run scoreboard players add @s player_music 1

# Calculate time since beginning of song
execute if score @s player_music matches 0.. store result score @s player_music run worldborder get
execute if score @s player_music matches 0.. run scoreboard players operation @s player_music -= @s player_music_beg

# If time since beginning of song >= player_music_len, loop song
execute if score @s player_music matches 0.. if score @s player_music >= @s player_music_len run function theafroofdoom:entity/player/room/music/loop_song
