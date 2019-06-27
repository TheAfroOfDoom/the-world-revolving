# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\initialize\credits.mcfunction

# Set music index to 0 to set as initialized
scoreboard players set @s player_music 0

# Set music length
# Hip Shop.ogg - 39.628 s = 792.56 ticks = 792 ticks
scoreboard players set @s player_music_len 792

# Set begin point for song
execute store result score @s player_music_beg run worldborder get

# Begin playing song
playsound theafroofdoom:music.hip_shop music @s ~ ~ ~ 100 1 1
