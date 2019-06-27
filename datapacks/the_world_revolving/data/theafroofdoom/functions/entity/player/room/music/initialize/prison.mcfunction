# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\initialize\lobby.mcfunction

# Set music index to 0 to set as initialized
scoreboard players set @s player_music 0

# Set music length
# The Circus.ogg - 1m 00.543s = 1210.86 ticks = 1210 ticks
scoreboard players set @s player_music_len 1210

# Set begin point for song
execute store result score @s player_music_beg run worldborder get

# Begin playing song
playsound theafroofdoom:music.the_circus music @s ~ ~ ~ 100 0.85 1
