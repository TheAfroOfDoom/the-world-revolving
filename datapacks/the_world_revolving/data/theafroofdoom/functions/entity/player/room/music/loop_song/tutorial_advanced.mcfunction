# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\loop_song\tutorial_advanced.mcfunction

# Set music index to 0 to set as beginning of song
scoreboard players set @s player_music 0

# Set begin point for song
execute store result score @s player_music_beg run worldborder get

# Begin playing song
playsound theafroofdoom:music.rude_buster music @s ~ ~ ~ 100 1 1
