# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\2\1.mcfunction

# Display text
tellraw @a[tag=player_room_prison_arena] [{"translate": "player.speak.intro.2.1", "with": [{"selector": "@a[tag=player_cutscene_intro_vanilla_speak_2,team=player]"}]}]

# Set delay until player can interact to get next textbox
scoreboard players set @s cutscn_text_time 40
