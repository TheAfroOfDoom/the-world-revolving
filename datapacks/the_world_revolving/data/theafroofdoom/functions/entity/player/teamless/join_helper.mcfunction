# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\teamless\join_helper.mcfunction

# Keep track of what team the player was already on
execute if entity @s[team=] run tag @s add player_team_leave_already
execute if entity @s[team=player] run tag @s add player_team_leave_player
execute if entity @s[team=spectator] run tag @s add player_team_leave_spectator

# Leave whatever team player was already on (if any)
team leave @s

# Broadcast to the chat what team the player left
# Only broadcast to everyone if player_spam score is low enough
execute if entity @s[tag=player_team_leave_already] run tellraw @s [{"color": "red", "italic": "true", "translate": "player.team.leave.already"}]
execute if entity @s[tag=player_team_leave_player] run tellraw @a[team=!credits,team=!tutorial_adv,team=!tutorial_basic] [{"color": "gray", "italic": "true", "translate": "player.team.leave.player", "with": [{"selector": "@s"}, {"color": "dark_purple", "translate": "jevil.name"}]}]
execute if entity @s[tag=player_team_leave_spectator] run tellraw @a[team=!credits,team=!tutorial_adv,team=!tutorial_basic] [{"color": "gray", "italic": "true", "translate": "player.team.leave.spectator", "with": [{"selector": "@s"}]}]

# Add to spam score
execute if entity @s[tag=!player_team_leave_already] run scoreboard players add @s player_spam 40

# Remove tags
tag @s remove player_team_leave_already
tag @s remove player_team_leave_player
tag @s remove player_team_leave_spectator
