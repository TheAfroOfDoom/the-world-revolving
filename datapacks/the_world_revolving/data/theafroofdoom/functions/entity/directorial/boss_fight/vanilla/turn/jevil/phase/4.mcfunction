# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\4.mcfunction

# Initialize an attack based on bfight_phase_atk
execute if score @s bfight_phase_atk matches 0 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/4/0
