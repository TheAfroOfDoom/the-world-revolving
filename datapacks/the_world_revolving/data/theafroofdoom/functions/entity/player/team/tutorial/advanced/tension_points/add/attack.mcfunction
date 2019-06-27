# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\tension_points\add\attack.mcfunction

# tp = max(100, tp + 4)
scoreboard players add @s player_tpoints 4
execute if score @s player_tpoints matches 100.. run scoreboard players set @s player_tpoints 100
