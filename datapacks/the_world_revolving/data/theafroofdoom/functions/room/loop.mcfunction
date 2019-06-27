# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \room\loop.mcfunction

# Set flags for rooms to not be setup if a player has entered them
execute unless score #global.room.boss_fight_vanilla.setup setting matches 0 if entity @a[tag=player_room_boss_fight_vanilla] run scoreboard players set #global.room.boss_fight_vanilla.setup setting 0
execute unless score #global.room.boss_fight_vanilla.setup setting matches 0 if entity @a[tag=player_room_prison_arena] run scoreboard players set #global.room.boss_fight_vanilla.setup setting 0

# Reset vanilla pre-arena/boss_fight_vanilla arena if there are no players in it and no players in the boss fight
execute unless score #global.room.boss_fight_vanilla.setup setting matches 1 unless entity @a[tag=player_room_prison_arena] unless entity @a[tag=player_room_boss_fight_vanilla] run function theafroofdoom:room/boss_fight_vanilla/setup

# If a player has been in the prison arena at least once, add the sign that lets players teleport from the lobby to the prison
execute unless score #global.room.lobby.teleport_to_prison setting matches 1 if entity @a[tag=player_room_prison_arena,team=player] run scoreboard players set #global.path_wisp.active setting 0
execute unless score #global.room.lobby.teleport_to_prison setting matches 1 if entity @a[tag=player_room_prison_arena,team=player] run scoreboard players set #global.room.lobby.teleport_to_prison setting 1

# Modulus clock by 20
execute store result score #global.math setting run time query gametime
scoreboard players operation #global.math setting %= #20 constant

# Update signs once per second for translations if there is at least one player in the room
execute if score #global.math setting matches 0 if entity @a[tag=player_room_lobby] run function theafroofdoom:room/lobby/signs
execute if score #global.math setting matches 0 if entity @a[tag=player_room_prison] run function theafroofdoom:room/prison/signs
execute if score #global.math setting matches 0 if entity @a[tag=player_room_shop] run function theafroofdoom:room/shop/signs

# Increment path_wisp clock if no players have been in the prison arena and if it is not active yet (and if there are any players online)
execute unless score #global.room.lobby.teleport_to_prison setting matches 1 unless score #global.path_wisp.active setting matches 1 if entity @a run scoreboard players add #global.path_wisp.clock setting 1

# If no players have been in the prison arena and 7.5 minutes have passed: activate path_wisp
execute unless score #global.room.lobby.teleport_to_prison setting matches 1 if score #global.path_wisp.clock setting matches 9000.. if entity @a run function theafroofdoom:room/path_wisp/initialize

# If path_wisp is active, run loop
execute if score #global.path_wisp.active setting matches 1 if entity @a run function theafroofdoom:room/path_wisp/loop

# Room-specific things
function theafroofdoom:room/club/loop

# Room-specific things off of players
execute as @a[tag=player_room_lobby] at @s run function theafroofdoom:room/lobby/loop

# Reset tutorials
execute if score #global.room.tutorial.advanced.occupied setting matches 1 unless entity @a[team=tutorial_adv] run function theafroofdoom:entity/player/team/tutorial/advanced/reset
execute if score #global.room.tutorial.basic.occupied setting matches 1 unless entity @a[team=tutorial_basic] run function theafroofdoom:entity/player/team/tutorial/basic/reset
