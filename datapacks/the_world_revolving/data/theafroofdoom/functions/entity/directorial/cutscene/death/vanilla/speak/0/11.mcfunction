# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\death\vanilla\speak\0\11.mcfunction

# Play voiceline
playsound theafroofdoom:jevil.voiceline.laugh.0 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Play text sound
playsound theafroofdoom:jevil.speak.0.253 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 0.8

# Display text
tellraw @a[tag=player_room_prison_arena] [{"text": "\uf002 "}, {"italic": "true", "translate": "jevil.speak.death.0.11"}]

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 50
