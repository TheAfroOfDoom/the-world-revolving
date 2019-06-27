# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\pirouette\terminate.mcfunction

# Reset scores
scoreboard players reset @s player_clock

# Remove tags
tag @s remove player_is_doing_act_pirouette

# Add tags
tag @s add player_is_not_doing
tag @s add player_used_turn

# Set flag ing that at least 1 player did a pirouette this turn
tag @e[tag=boss_fight] add boss_fight_did_pirouette
