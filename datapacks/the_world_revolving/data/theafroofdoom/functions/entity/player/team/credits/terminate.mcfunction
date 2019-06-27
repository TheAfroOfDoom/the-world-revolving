# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\credits\terminate.mcfunction

# Travel back to lobby based on if we are coming from the boss_fight or the lobby
execute unless score @s player_credits matches 0 run tag @s add player_travel_credits_to_lobby
execute if score @s player_credits matches 0 run tag @s add player_travel_credits_to_prison

# Clear inventory
clear

# Reset tension_points
scoreboard players set @s player_tpoints 0

# Clear xp bar
xp set @s 0 points

# Leave team
team leave @s

# Heal
effect give @s instant_health 10 0 true

# Clear effects
effect clear @s invisibility
effect clear @s resistance
effect clear @s weakness

# Clear title
title @s clear

# Update scores
execute if score @s player_credits matches 0 run scoreboard players set @s player_credits 1

# Reset tags
function theafroofdoom:entity/player/team/credits/reset_tags

# Reset scores
function theafroofdoom:entity/player/team/credits/reset_scores
