# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\travel\lobby\5_to_1.mcfunction

# Teleport upwards to fourth floor
teleport @s 28 91 -70 90 ~

# Playsound of elevator stopping
playsound theafroofdoom:elevator ambient @s 28 91 -70

# Remove tags
tag @s remove player_travel_lobby_5_to_1
