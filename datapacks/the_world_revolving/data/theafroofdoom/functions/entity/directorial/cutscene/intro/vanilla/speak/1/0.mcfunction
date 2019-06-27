# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\1\0.mcfunction

# Display text depending on player count
execute if score #settings.player_count setting matches 1 run tellraw @a[tag=player_room_prison_arena] [{"translate": "player.speak.intro.1.0.singleplayer", "with": [{"selector": "@r[team=player]"}]}]
execute if score #settings.player_count setting matches 2.. run tellraw @a[tag=player_room_prison_arena] [{"translate": "player.speak.intro.1.0.multiplayer", "with": [{"selector": "@r[team=player]"}]}]

# Set delay until player can interact to get next textbox
scoreboard players set @s cutscn_text_time 40
