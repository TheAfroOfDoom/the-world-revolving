# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\initialize\club.mcfunction

# Set music index to 0 to set as initialized
scoreboard players set @s player_music 0

# Set music length
# April 2012.ogg - 20.584s = 411.68 ticks = 411 ticks
scoreboard players set @s player_music_len 411

# Set begin point for song
execute store result score @s player_music_beg run worldborder get

# Begin playing song
playsound theafroofdoom:music.april_2012 music @s ~ ~ ~ 100 1 1
