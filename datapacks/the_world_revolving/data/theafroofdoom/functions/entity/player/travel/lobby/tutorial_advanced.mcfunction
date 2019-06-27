# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\tutorial_advanced.mcfunction

# Teleport to hard-coded tutorial advanced coordinates
teleport @s 59 120 -143 0 0

# Display swipe particle
execute at @s anchored eyes run particle sweep_attack ^ ^ ^0.5

# Playsound of battle starting
playsound theafroofdoom:battle.start ambient @s

# Reset music index
scoreboard players set @s player_music -10

# Stop current music
stopsound @s music

# Summon tutorial director
function theafroofdoom:entity/directorial/tutorial/advanced/summon_tutorial

# Update tags
function theafroofdoom:entity/player/travel/remove_tags
tag @s add player_room_tutorial_advanced
tag @s remove player_travel_lobby_to_tutorial_advanced
