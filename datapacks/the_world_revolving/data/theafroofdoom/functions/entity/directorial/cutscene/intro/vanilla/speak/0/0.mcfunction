# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\0\0.mcfunction

# Play voiceline
playsound theafroofdoom:jevil.voiceline.laugh.1 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Play text sound
playsound theafroofdoom:jevil.speak.0.253 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 0.8

# Count players
execute store result score #settings.player_count setting if entity @a[team=player]

# Display text depending on player count
execute if score #settings.player_count setting matches 1 run tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.intro.0.0.singleplayer", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]
execute if score #settings.player_count setting matches 2.. run tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.intro.0.0.multiplayer", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 40
