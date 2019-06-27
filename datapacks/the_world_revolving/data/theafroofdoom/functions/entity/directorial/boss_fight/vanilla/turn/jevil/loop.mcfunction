# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\jevil\loop.mcfunction

# Jevil's turn

# Display text, play voiceline, and initialize attack based on phase
execute if entity @s[tag=boss_fight_turn_begin] if score @s bfight_phase matches 0 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/0
execute if entity @s[tag=boss_fight_turn_begin] if score @s bfight_phase matches 1 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/1
execute if entity @s[tag=boss_fight_turn_begin] if score @s bfight_phase matches 2 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/2
execute if entity @s[tag=boss_fight_turn_begin] if score @s bfight_phase matches 3 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/3
execute if entity @s[tag=boss_fight_turn_begin] if score @s bfight_phase matches 4 run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/phase/4

# Remove "turn_begin" tag on the first run of this loop
tag @s remove boss_fight_turn_begin

# Ignore any COAS right-clicks that occur during Jevil's turn
scoreboard players set @a[team=player] coas_rclick 0

# Disable items
execute as @a[team=player] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/disable

# Proceed to next phase when attack finishes and when attack_delay is -1
# (when an attack is finished AND it is not about to start)
execute if entity @e[scores={attack_delay=-1},tag=jevil_is_not_attacking] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/jevil/terminate
