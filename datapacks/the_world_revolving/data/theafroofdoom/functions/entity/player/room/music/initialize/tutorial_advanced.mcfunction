# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\initialize\tutorial_advanced.mcfunction

# Set music index to 0 to set as initialized
scoreboard players set @s player_music 0

# Set music length
# Rude Buster.ogg - 1m 15.468s = 1509.36 ticks = 1509 ticks
scoreboard players set @s player_music_len 1509

# Set begin point for song
execute store result score @s player_music_beg run worldborder get

# Begin playing song
playsound theafroofdoom:music.rude_buster music @s ~ ~ ~ 100 1 1
