# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\player_death\loop.mcfunction

# Remove tag when heartbreak dies
execute unless score @s afro.math_0 matches 1 unless entity @e[tag=heartbreak] run scoreboard players set @s afro.math_0 1

# Decrement cutscn_text_time while heartbreak is dead
execute if score @s afro.math_0 matches 1 if score @s cutscn_text_time matches 0.. run scoreboard players remove @s cutscn_text_time 1

# If all texts have finished, terminate
execute if score @s cutscn_text_time matches -1 run function theafroofdoom:entity/directorial/cutscene/player_death/terminate

# Make players invisible
effect give @a[tag=player_room_player_death] invisibility 2 0 true
