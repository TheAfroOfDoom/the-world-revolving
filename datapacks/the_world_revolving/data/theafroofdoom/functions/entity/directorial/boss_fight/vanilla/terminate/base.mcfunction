# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\boss_fight\vanilla\terminate\base.mcfunction

# Remove bossbar
bossbar remove theafroofdoom:jevil.health

# Stop music
stopsound @a[tag=player_room_boss_fight_vanilla] music

# Teleport players to pre-arena
execute as @a[tag=player_room_boss_fight_vanilla] at @s run teleport @s ~ 4.5 ~-136

# Set spawnpoint
execute as @a[tag=player_room_boss_fight_vanilla] at @s run spawnpoint @s ~ 4 ~

# Add tags to players to show them boss_fight credits if they haven't seen them before
execute as @a[tag=player_room_boss_fight_vanilla] at @s unless score @s player_credits matches 0.. run scoreboard players set @s player_credits 0

# Remove effects from players
effect clear @a[team=player] resistance
effect clear @a[team=player] speed
effect clear @a[team=player] strength
effect clear @a[team=player] weakness

# Update gamemodes
gamemode adventure @a[tag=player_room_boss_fight_vanilla]

# Heal players
effect give @a[team=player] instant_health 10 0 true

# Reset scores
scoreboard players reset @s bfight_pacified
scoreboard players reset @s bfight_phase
scoreboard players reset @s bfight_turn

# Terminate Jevil (for boss fight vanilla things)
execute as @e[tag=jevil] at @s run function theafroofdoom:entity/hostile/jevil/boss_fight/vanilla/terminate

# Kill hitbox
kill @e[tag=jevil_hitbox]
kill @e[tag=jevil_attack_originator]
kill @s

# Set next intro cutscene that runs to be default
scoreboard players set #global.room.boss_fight_vanilla.quick_in setting 0
