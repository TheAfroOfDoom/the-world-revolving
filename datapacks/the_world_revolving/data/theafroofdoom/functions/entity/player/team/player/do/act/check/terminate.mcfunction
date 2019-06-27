# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\do\act\check\terminate.mcfunction

# Reset scores
scoreboard players reset @s player_clock

# Remove tags
tag @s remove player_is_doing_act_check

# Add tags
tag @s add player_is_not_doing
tag @s add player_used_turn
