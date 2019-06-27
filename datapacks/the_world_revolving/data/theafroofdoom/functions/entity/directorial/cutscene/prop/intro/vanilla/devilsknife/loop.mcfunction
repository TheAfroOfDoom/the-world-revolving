# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\prop\intro\vanilla\devilsknife\loop.mcfunction

# Rotate self and teleport downwards
teleport @s ~ ~-1.25 ~ ~30 ~

# Check if sufficiently below floor to terminate
execute store result score @s afro.math_0 run data get entity @s Pos[1] 1
execute if score @s afro.math_0 matches ..-10 run function theafroofdoom:entity/directorial/cutscene/prop/intro/vanilla/devilsknife/terminate
