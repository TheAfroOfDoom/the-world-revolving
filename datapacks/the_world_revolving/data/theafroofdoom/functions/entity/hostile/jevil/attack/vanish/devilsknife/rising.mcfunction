# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\vanish\devilsknife\rising.mcfunction

# Push devilsknife up at the start of the devilsknife attack

# Push upwards
teleport @s ~ ~1.5 ~ ~24 ~

# Collision detection with ceiling
execute store result score @s afro.math_0 run data get entity @s Pos[1] 1
scoreboard players remove @s afro.math_0 4
execute if score @s afro.math_0 >= #arena.ceiling.y constant run kill @s
