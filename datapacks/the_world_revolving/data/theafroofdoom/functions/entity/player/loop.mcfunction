# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\loop.mcfunction

# If player has player_travel_initialize tag, ignore player_trv_delay
execute if entity @s[tag=player_travel_initialize] run scoreboard players reset @s player_trv_delay

# Decrement player_trv_delay
execute if score @s player_trv_delay matches 1.. run scoreboard players remove @s player_trv_delay 1

# Handle rooms unless player_trv_delay > 0
execute unless score @s player_trv_delay matches 1.. run function theafroofdoom:entity/player/room

# If player relogs after leaving the game, reset all their scores and delete tags
# to prevent anything from breaking
execute if score @s left_game matches 1.. run function theafroofdoom:entity/player/reset

# Handle deaths
execute if score @s player_dead matches 1.. run function theafroofdoom:entity/player/death

# Detect if player clicks on a villager
execute if score @s player_interact matches 1.. run function theafroofdoom:entity/player/interact

# Give permanent night vision
effect give @s night_vision 1000000 0 true

# Initialize spam score if it does not exist yet
execute unless score @s player_spam matches 0.. run scoreboard players add @s player_spam 1

# Decrement spam score
execute if score @s player_spam matches 0.. run scoreboard players remove @s player_spam 1
