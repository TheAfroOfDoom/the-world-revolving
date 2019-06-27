# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\0.mcfunction

# Increment phase if Jevil is tired or hurt enough
execute if score @s bfight_phase_atk matches 4.. if score @s afro.math_2 matches ..0 run tag @s add boss_fight_next_phase
execute if score @s bfight_phase_atk matches 4.. if score @s bfight_health matches ..81920 run tag @s add boss_fight_next_phase

execute if entity @s[tag=boss_fight_next_phase] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/next

# Initialize an attack based on bfight_phase_atk
execute if score @s bfight_phase_atk matches 0 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/0/0
execute if score @s bfight_phase_atk matches 1 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/0/1
execute if score @s bfight_phase_atk matches 2 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/0/2
execute if score @s bfight_phase_atk matches 3 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/0/3
execute if score @s bfight_phase_atk matches 4 as @e[tag=jevil] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/0/4

# Increment bfight_phase_atk (max = 4)
execute unless score @s bfight_phase_atk matches 4.. run scoreboard players add @s bfight_phase_atk 1
