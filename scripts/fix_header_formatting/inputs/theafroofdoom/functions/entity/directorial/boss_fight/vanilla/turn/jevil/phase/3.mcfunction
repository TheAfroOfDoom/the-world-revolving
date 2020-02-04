# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\3.mcfunction

# Increment phase after the 4th attack during phase 3
execute if score @s bfight_phase_atk matches 4 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/next

# Initialize an attack based on bfight_phase_atk
execute if score @s bfight_phase_atk matches 0 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/3/0
execute if score @s bfight_phase_atk matches 1 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/3/1
execute if score @s bfight_phase_atk matches 2 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/3/2
execute if score @s bfight_phase_atk matches 3 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/3/3

# Increment bfight_phase_atk (max = 4)
execute unless score @s bfight_phase_atk matches 4.. run scoreboard players add @s bfight_phase_atk 1
