# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\2\4.mcfunction

# Update Jevil's model to laughing (slow)
data modify entity @e[tag=lobby_jevil,limit=1] ArmorItems[3].tag.CustomModelData set value 20

# Play Jevil laughing sound for rest of speak phase 2
playsound theafroofdoom:jevil.voiceline.laugh.long hostile @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Display text
tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.intro.2.4", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set delay until player can interact to get next textbox
scoreboard players set @s cutscn_text_time 50
