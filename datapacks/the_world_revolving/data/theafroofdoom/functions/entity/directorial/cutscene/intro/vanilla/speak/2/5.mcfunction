# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\2\5.mcfunction

# Display text
tellraw @a[tag=player_room_prison_arena] [{"translate": "jevil.speak.intro.2.5", "with": [{"bold": "true", "color": "dark_purple", "translate": "jevil.name"}, {"bold": "true", "color": "green", "text": ":"}]}]

# Set delay until player can interact to get next textbox
scoreboard players set @s cutscn_text_time 50
