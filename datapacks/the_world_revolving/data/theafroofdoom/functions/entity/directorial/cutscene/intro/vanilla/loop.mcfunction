# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\loop.mcfunction

# Print error and quit cutscene if there are no players on the playing team who are also in the pre-fight arena
execute unless entity @a[tag=player_room_prison_arena,team=player] run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/error/no_players

# Print error and quit boss_fight if difficulty is Peaceful
execute store result score @s afro.math_3 run difficulty
execute if score @s afro.math_3 matches 0 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/error/peaceful

# Decrement cutscn_text_time
execute if score @s cutscn_text_time matches 0.. run scoreboard players remove @s cutscn_text_time 1

# Display text based on cutscene_text
execute if score @s cutscn_interact matches 1 if score @s cutscn_text_time matches -1 if score @s cutscn_text_id matches 0 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/0
execute if score @s cutscn_interact matches 1 if score @s cutscn_text_time matches -1 if score @s cutscn_text_id matches 1 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/1
execute if score @s cutscn_interact matches 1 if score @s cutscn_text_time matches -1 if score @s cutscn_text_id matches 2 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/speak/2

# Stop Jevil from laughing before termination
execute if score @s cutscn_text_time matches 9 if score @s cutscn_text_id matches 3 run data modify entity @e[tag=lobby_jevil,limit=1] ArmorItems[3].tag.CustomModelData set value 6

# If all texts have finished, summon boss fight and terminate
execute if score @s cutscn_text_time matches -1 if score @s cutscn_text_id matches 3 run function theafroofdoom:entity/directorial/cutscene/intro/vanilla/terminate
