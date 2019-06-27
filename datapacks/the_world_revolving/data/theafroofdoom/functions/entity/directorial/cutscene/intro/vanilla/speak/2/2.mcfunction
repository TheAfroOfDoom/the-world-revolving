# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\speak\2\2.mcfunction

# Play sound of swiping
playsound theafroofdoom:player.swipe player @a[tag=player_room_prison_arena] ~ ~ ~ 10 1 1

# Display swipe particle in front of all players
execute as @a[team=player] at @s anchored eyes run particle sweep_attack ^ ^ ^0.5

# Display text (no text here)
# tellraw @a[tag=player_room_prison_arena] [{"translate": "player.speak.intro.2.2", "with": [{"selector": "@a[tag=player_cutscene_intro_vanilla_speak_2,team=player]"}]}]

# Set delay until next textbox
scoreboard players set @s cutscn_text_time 50
