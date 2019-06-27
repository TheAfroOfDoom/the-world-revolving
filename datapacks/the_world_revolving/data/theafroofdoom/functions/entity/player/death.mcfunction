# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\death.mcfunction

# Set new spawnpoint based on what room the player died in

# If player died mid-tutorial/credits, new spawnpoint is lobby
execute if entity @s[tag=player_room_credits] run tag @s add player_travel_initialize
execute if entity @s[tag=player_room_tutorial_advanced] run tag @s add player_travel_initialize
execute if entity @s[tag=player_room_tutorial_basic] run tag @s add player_travel_initialize

# If player died in the arena, only respawn them there if the boss_fight is inactive.
# Otherwise, respawn them at the prison.
execute if entity @s[tag=player_room_prison_arena] if entity @e[tag=boss_fight_vanilla] run tag @s add player_travel_arena_to_prison

# If player died in the boss_fight, set their team to dead and initialize them
execute if entity @s[tag=player_room_boss_fight_vanilla] run function theafroofdoom:entity/player/team/dead/join

# If player died in the player_death cutscene, leave their team and move them to the prison
execute if entity @s[tag=player_room_player_death] run tag @s add player_travel_player_death_to_prison

# Handle new travel tags
execute if entity @s[tag=player_travel_arena_to_prison] run function theafroofdoom:entity/player/travel/remove_tags
execute if entity @s[tag=player_travel_initialize] run function theafroofdoom:entity/player/travel/remove_tags
execute if entity @s[tag=player_travel_player_death_to_prison] run function theafroofdoom:entity/player/travel/remove_tags

# Scores
function theafroofdoom:entity/player/reset_scores

# Tags
function theafroofdoom:entity/player/reset_tags

# Effects
effect clear @s resistance
effect clear @s speed
effect clear @s strength
effect clear @s weakness

# Clear inventory
clear

# Heal fully
effect give @s instant_health 10 0 true

# Reset tension points
scoreboard players reset @s player_tpoints

# Update tension points bar
function theafroofdoom:entity/player/team/player/tension_points/display

# Reset death score
scoreboard players reset @s player_dead
