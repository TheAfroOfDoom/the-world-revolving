# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\tension_points\add\defend.mcfunction

scoreboard players add @s player_tpoints 48
execute if score @s player_tpoints matches 100.. run scoreboard players set @s player_tpoints 100
