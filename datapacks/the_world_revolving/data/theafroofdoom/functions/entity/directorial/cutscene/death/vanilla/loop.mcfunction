# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\death\vanilla\loop.mcfunction

# Decrement cutscn_text_time
execute if score @s cutscn_text_time matches 0.. run scoreboard players remove @s cutscn_text_time 1

# Display text based on cutscene_text
execute if score @s cutscn_text_time matches -1 if score @s cutscn_text_id matches 0 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/speak/0

# If all texts have finished, terminate
execute if score @s cutscn_text_time matches -1 if score @s cutscn_text_id matches 1 run function theafroofdoom:entity/directorial/cutscene/death/vanilla/terminate

# Run a loop on Lobby Jevil during the cutscene
execute as @e[tag=lobby_jevil] at @s run function theafroofdoom:entity/directorial/cutscene/prop/death/vanilla/lobby_jevil/loop
