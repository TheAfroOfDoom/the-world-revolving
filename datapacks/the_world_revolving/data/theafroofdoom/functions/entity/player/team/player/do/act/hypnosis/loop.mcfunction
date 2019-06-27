# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\hypnosis\loop.mcfunction

# Increment player_clock
scoreboard players add @s player_clock 1

# Second line of text
execute if score @s player_clock matches 19 run function theafroofdoom:entity/player/team/player/do/act/hypnosis/text/1

# Third line of text
execute if score @s player_clock matches 39 run function theafroofdoom:entity/player/team/player/do/act/hypnosis/text/2

# Terminate at player_clock = 49
execute if score @s player_clock matches 49.. run function theafroofdoom:entity/player/team/player/do/act/hypnosis/terminate
