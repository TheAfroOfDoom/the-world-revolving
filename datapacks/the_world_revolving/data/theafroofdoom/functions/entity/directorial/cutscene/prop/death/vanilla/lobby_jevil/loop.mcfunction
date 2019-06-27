# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\cutscene\prop\death\vanilla\lobby_jevil\loop.mcfunction

# Increment and wrap jevil_clock while Jevil is not taking damage
scoreboard players add @s jevil_clock 1
scoreboard players operation @s jevil_clock %= #33 constant

# Face closest player
teleport @s ~ ~ ~ facing entity @p[team=player]

# Float Jevil based on jevil_clock score
execute at @s run function theafroofdoom:entity/directorial/cutscene/prop/death/vanilla/lobby_jevil/animate
