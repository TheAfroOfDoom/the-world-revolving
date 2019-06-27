# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\loop.mcfunction

# Initialize player spam score if it does not exist
execute unless score @s player_spam matches -1000..1000 run scoreboard players add @s player_spam 0

# Handle healing items and hunger
function theafroofdoom:entity/player/team/player/food/loop

# Handle actual healing
function theafroofdoom:entity/player/team/player/healing/loop

# Handle tension points
function theafroofdoom:entity/player/team/player/tension_points

# Store 2D player motion vector
execute store result score @s pos_x_current run data get entity @s Pos[0] 100
scoreboard players operation @s pos_dx = @s pos_x_current
scoreboard players operation @s pos_dx -= @s pos_x_last

execute store result score @s pos_z_current run data get entity @s Pos[2] 100
scoreboard players operation @s pos_dz = @s pos_z_current
scoreboard players operation @s pos_dz -= @s pos_z_last

# Set scores for next tick
scoreboard players operation @s pos_x_last = @s pos_x_current
scoreboard players operation @s pos_z_last = @s pos_z_current
