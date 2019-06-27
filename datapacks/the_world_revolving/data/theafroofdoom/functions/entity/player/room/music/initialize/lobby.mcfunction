# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\room\music\initialize\lobby.mcfunction

# Set music index to 0 to set as initialized
scoreboard players set @s player_music 0

# Set music length
# Card Castle.ogg - 1m 01.466s = 1229.32 ticks = 1229 ticks
scoreboard players set @s player_music_len 1229

# Set begin point for song
execute store result score @s player_music_beg run worldborder get

# Begin playing song
playsound theafroofdoom:music.card_castle music @s ~ ~ ~ 100 1 1
