# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\terminate\player_death.mcfunction

# Remove bossbar
bossbar remove theafroofdoom:jevil.health

# Reset scores
scoreboard players reset @s bfight_pacified
scoreboard players reset @s bfight_phase
scoreboard players reset @s bfight_turn

# Kill hitbox, jevil, attack_originator, and boss_fight director
kill @e[tag=hostile]
kill @e[tag=jevil]
kill @e[tag=jevil_hitbox]
kill @e[tag=jevil_attack_originator]
kill @s
