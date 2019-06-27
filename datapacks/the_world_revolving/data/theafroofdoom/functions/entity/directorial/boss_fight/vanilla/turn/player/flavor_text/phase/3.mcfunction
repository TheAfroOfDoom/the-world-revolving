# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\flavor_text\phase\3.mcfunction

# Display text based on sub-phase
execute if score @s bfight_phase_atk matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/phase/3/1
execute if score @s bfight_phase_atk matches 3 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/phase/3/3

# Display neutral text if neither sub-phase matched
execute if entity @s[tag=boss_fight_needs_flavor_text] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text/neutral
