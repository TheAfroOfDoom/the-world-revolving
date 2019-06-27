# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\tutorial\basic\reset_tags.mcfunction

# Reset tags that help control flow
tag @s remove player_is_doing_act_check
tag @s remove player_is_doing_attack
tag @s remove player_is_doing_defend
tag @s remove player_is_doing_items_heal
tag @s remove player_is_doing_magic_pacify

tag @s remove player_quit

tag @s add player_is_not_doing
tag @s remove player_used_turn