# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\teamless\join.mcfunction

# Warn player if they have been spamming
execute if score @s player_spam >= #settings.spam setting run tellraw @s [{"color": "red", "bold": "true", "translate": "player.warning.spam.sign"}]

# Only allow sign function to occur if player has not been spamming it
execute unless score @s player_spam >= #settings.spam setting run function theafroofdoom:entity/player/teamless/join_helper
