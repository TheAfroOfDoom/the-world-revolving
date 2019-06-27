# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\indicator\randomize\store.mcfunction

# Store x-coordinate into Pos NBT
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s afro.math_2

# Store z-coordinate into Pos NBT
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s afro.math_3
