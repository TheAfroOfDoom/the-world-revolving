# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\intro\vanilla\teleport.mcfunction

# Teleport players
execute as @a[team=player] at @s run teleport @s ~ ~ ~136

# Teleport spectators
execute as @a[team=spectator] at @s run teleport @s ~ ~ ~136
