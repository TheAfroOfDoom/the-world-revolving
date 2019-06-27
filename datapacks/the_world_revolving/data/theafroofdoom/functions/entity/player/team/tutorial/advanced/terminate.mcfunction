# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\advanced\terminate.mcfunction

# Display text only if player selected Quit
execute if entity @s[tag=player_quit] run tellraw @s [{"color": "red", "italic": "true", "translate": "tutorial.advanced.quitting"}]

# Travel back to lobby
tag @s add player_travel_tutorial_advanced_to_lobby

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
effect clear @s resistance
effect clear @s slowness
effect clear @s speed
effect clear @s weakness

# Reset tags
function theafroofdoom:entity/player/team/tutorial/advanced/reset_tags
