# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\1\3.mcfunction

# Play text sound
playsound theafroofdoom:jevil.speak.0.253 hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 0.8

# Update Jevil's model back to default
data modify entity @e[tag=lobby_jevil,limit=1] ArmorItems[3].tag.CustomModelData set value 6

# Display text
tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.intro.1.3", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 30
