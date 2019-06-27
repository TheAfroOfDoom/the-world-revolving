# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\2\3.mcfunction

# Display text depending on player count
execute if score #settings.player_count setting matches 1 run tellraw @a[tag=player_room_prison_arena] [{"translate": "player.speak.intro.2.3.singleplayer", "with": [{"selector": "@a[team=player]"}]}]
execute if score #settings.player_count setting matches 2.. run tellraw @a[tag=player_room_prison_arena] [{"translate": "player.speak.intro.2.3.multiplayer", "with": [{"selector": "@a[tag=player_cutscene_intro_vanilla_speak_2,team=player]"}]}]

# Remove tags from players
tag @a[tag=player_room_prison_arena] remove player_cutscene_intro_vanilla_speak_2

# Set delay until player can interact to get next textbox
scoreboard players set @s cutscn_text_time 50
