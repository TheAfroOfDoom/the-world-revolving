# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\turn\player\loop.mcfunction

# Players' turn

# Display flavor text at the beginning of the turn
execute if entity @s[tag=boss_fight_turn_begin] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/flavor_text

# Enable items at the beginning of the turn
execute if entity @s[tag=boss_fight_turn_begin] as @a[team=player] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/items/enable

# Make Jevil vulnerable to damage
execute if entity @s[tag=boss_fight_turn_begin] run data merge entity @e[limit=1,tag=jevil_hitbox] {Invulnerable:0b}

# Remove "turn_begin" tag on the first run of this loop
tag @s remove boss_fight_turn_begin

# Handle UI behavior
execute as @a[tag=player_is_not_doing,tag=!player_used_turn,team=player] at @s run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/ui

# Skip to end of turn if Jevil runs out of health/is pacified
execute store result score @s afro.math_0 run data get entity @e[limit=1,tag=jevil_hitbox] Health 100
execute if entity @s[scores={afro.math_0=..0}] run tag @a[team=player] add player_used_turn
execute unless entity @e[tag=jevil_hitbox] run tag @a[team=player] add player_used_turn
execute if entity @s[scores={bfight_pacified=1..}] run tag @a[team=player] add player_used_turn

# Proceed to next turn when every player has performed some action
execute unless entity @a[tag=!player_used_turn,team=player] run function theafroofdoom:entity/directorial/boss_fight/vanilla/turn/player/terminate
