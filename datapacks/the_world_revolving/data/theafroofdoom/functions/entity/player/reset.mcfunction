# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\reset.mcfunction

# Resets player if they login after logging out to prevent things from breaking
# Example: If a player relogs during the middle of a fight

# If player logged out in player_death/boss_fight arena/pre-arena, move them to prison
execute if entity @s[tag=player_room_boss_fight_vanilla] run tag @s add player_travel_arena_to_prison
execute if entity @s[tag=player_room_player_death] run tag @s add player_travel_arena_to_prison
execute if entity @s[tag=player_room_prison_arena] run tag @s add player_travel_arena_to_prison
execute if entity @s[tag=player_travel_arena_to_prison] run function theafroofdoom:entity/player/travel/remove_tags
execute if entity @s[tag=player_travel_arena_to_prison] run tag @s add player_room_prison

# If player logged out mid-tutorial/credits, move them to lobby
execute if entity @s[tag=player_room_credits] unless score @s player_credits matches 0 run tag @s add player_travel_initialize
execute if entity @s[tag=player_room_tutorial_basic] run tag @s add player_travel_initialize
execute if entity @s[tag=player_room_tutorial_advanced] run tag @s add player_travel_initialize
execute if entity @s[tag=player_travel_initialize] run function theafroofdoom:entity/player/travel/remove_tags

# Scores
function theafroofdoom:entity/player/reset_scores

# Reset music index so song plays again
scoreboard players set @s player_music -1

# Tags
function theafroofdoom:entity/player/reset_tags

# Force gamemode
gamemode adventure

# Update bossbar visibility
bossbar set theafroofdoom:jevil.health players @a[tag=player_room_boss_fight_vanilla]

# Effects
effect clear @s invisibility
effect clear @s resistance
effect clear @s speed
effect clear @s strength
effect clear @s weakness

# Leave team
team leave @s

# Clear inventory
clear

# Heal fully
effect give @s instant_health 10 0 true

# Reset left_game score
scoreboard players reset @s left_game

# Reset tension points
scoreboard players reset @s player_tpoints

# Update tension points bar
function theafroofdoom:entity/player/team/player/tension_points/display
