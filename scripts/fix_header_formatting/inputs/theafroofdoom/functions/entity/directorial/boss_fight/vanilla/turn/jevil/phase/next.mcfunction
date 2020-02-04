# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\phase\next.mcfunction

# Increment phase
scoreboard players add @s bfight_phase 1

# Reset scores
scoreboard players set @s bfight_phase_atk -1
scoreboard players operation @s afro.math_2 = @s bfight_tired_phs

# Remove tags
tag @s remove boss_fight_next_phase
