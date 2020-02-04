# THE WORLD REVOLVING
# function

# theafroofdoom:entity/directorial/boss_fight/vanilla/terminate/base

# Stop music
stopsound @a[team=player] music
stopsound @a[team=spectator] music

# Teleport players to pre-arena
execute as @a[team=player] at @s run teleport @s ~ ~ ~-136
execute as @a[team=spectator] at @s run teleport @s ~ ~ ~-136

# Remove effects from players
effect clear @a[team=player] resistance
effect clear @a[team=player] speed
effect clear @a[team=player] strength

# Heal players
effect give @a[team=player] instant_health 10 0 true

# Reset scores
scoreboard players reset @s bfight_clock
scoreboard players reset @s bfight_pacified
scoreboard players reset @s bfight_phase
scoreboard players reset @s bfight_turn

# Terminate Jevil (for boss fight vanilla things)
execute as @e[tag=jevil] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/terminate

# Kill hitbox
kill @e[scores={group_id=0},tag=jevil_hitbox]
kill @e[scores={group_id=0},tag=jeivl_attack_originator]
kill @s
