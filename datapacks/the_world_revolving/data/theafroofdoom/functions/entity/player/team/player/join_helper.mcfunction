# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\join_helper.mcfunction

# If there is already an active boss_fight, add tag
execute if entity @e[tag=boss_fight] run tag @s add player_team_player_bfight_exists

# Keep track of what team the player was already on
execute unless entity @s[tag=player_team_player_bfight_exists] if entity @s[team=!player] run tag @s add player_team_join_player

# Leave whatever team player was already on (if any)
execute unless entity @s[tag=player_team_player_bfight_exists] run team leave @s

# Broadcast to the chat that the player will be fighting Jevil
execute unless entity @s[tag=player_team_player_bfight_exists] if entity @s[tag=player_team_join_player] run tellraw @a[team=!credits,team=!tutorial_adv,team=!tutorial_basic] [{"italic": "true", "translate": "player.team.player.join", "with": [{"color": "blue", "selector": "@s"}, {"color": "dark_purple", "translate": "jevil.name"}]}]

# If player is already set to fight Jevil, tell them
execute unless entity @s[tag=player_team_player_bfight_exists] if entity @s[tag=!player_team_join_player] run tellraw @s [{"color": "red", "italic": "true", "translate": "player.team.player.join.already", "with": [{"color": "dark_purple", "translate": "jevil.name"}]}]

# Join the playing team
execute unless entity @s[tag=player_team_player_bfight_exists] run team join player

# Add to spam score
execute unless entity @s[tag=player_team_player_bfight_exists] if entity @s[tag=player_team_join_player] run scoreboard players add @s player_spam 40

# If boss_fight exists, inform the player and do not change teams
execute if entity @s[tag=player_team_player_bfight_exists] run tellraw @s [{"color": "red", "translate": "player.team.player.boss_fight_active", "with": [{"color": "blue", "translate": "player.warning.boss_fight.playing"}]}]

# Remove tags
tag @s remove player_team_join_player
tag @s remove player_team_player_bfight_exists
