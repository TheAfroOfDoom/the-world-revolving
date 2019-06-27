# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\grazer.mcfunction

# Detect if hit the edge of the arena (the black, not the blue/purple)
execute store result score @s afro.math_0 run data get entity @s Age 1
execute if score @s afro.math_0 matches 10.. if block ~ ~ ~ diorite run kill @s

# Kill self as a fail safe if has reached outside the map walls
execute store result score @s afro.math_0 run data get entity @s Pos[0] 1
execute if score @s afro.math_0 >= #arena.wall.x constant run kill @s
execute store result score @s afro.math_0 run data get entity @s Pos[2] 1
execute if score @s afro.math_0 >= #arena.wall.z constant run kill @s
