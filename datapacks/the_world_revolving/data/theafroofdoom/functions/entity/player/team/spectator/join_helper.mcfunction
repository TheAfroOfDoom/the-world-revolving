# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\spectator\join_helper.mcfunction

# Keep track of what team the player was already on
execute if entity @s[team=!spectator] run tag @s add player_team_join_spectator

# Leave whatever team player was already on (if any)
team leave @s

# Broadcast to the chat that the player will be spectating
execute if entity @s[tag=player_team_join_spectator] run tellraw @a[team=!credits,team=!tutorial_adv,team=!tutorial_basic] [{"italic": "true", "translate": "player.team.spectator.join", "with": [{"color": "yellow", "selector": "@s"}]}]

# If player is already set to spectate, tell them
execute if entity @s[tag=!player_team_join_spectator] run tellraw @s [{"color": "red", "italic": "true", "translate": "player.team.spectator.join.already"}]

# Join the playing team
team join spectator

# Add to spam score
execute if entity @s[tag=player_team_join_spectator] run scoreboard players add @s player_spam 40

# Remove tags
tag @s remove player_team_join_spectator

