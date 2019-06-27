# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\pacified\vanilla\speak\0\1.mcfunction

# Play text sound
playsound theafroofdoom:jevil.speak.0.253 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 0.8

# Display text depending on player count
execute if score #settings.player_count setting matches 1 run tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.pacified.0.1.singleplayer", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]
execute if score #settings.player_count setting matches 2.. run tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.pacified.0.1.multiplayer", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 40
