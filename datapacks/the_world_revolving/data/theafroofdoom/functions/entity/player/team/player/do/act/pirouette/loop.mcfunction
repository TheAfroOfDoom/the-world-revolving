# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\loop.mcfunction

# Increment player_clock
scoreboard players add @s player_clock 1

# Rotate self from player_clock = 0..19
execute if score @s player_clock matches 0..19 run teleport @s ~ ~ ~ ~18 ~

# Display second line of text at player_clock = 39
execute if score @s player_clock matches 39 run function theafroofdoom:entity/player/team/player/do/act/pirouette/phase

# Terminate at player_clock = 59
execute if score @s player_clock matches 59.. run function theafroofdoom:entity/player/team/player/do/act/pirouette/terminate
