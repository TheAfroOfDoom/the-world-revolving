# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\player\team\player\reset_tags.mcfunction

# Reset tags that help control flow
tag @s remove player_is_doing_act_check
tag @s remove player_is_doing_act_hypnosis
tag @s remove player_is_doing_act_pirouette
tag @s remove player_is_doing_attack
tag @s remove player_is_doing_defend
tag @s remove player_is_doing_items_heal
tag @s remove player_is_doing_magic_heal_prayer
tag @s remove player_is_doing_magic_pacify
tag @s remove player_is_doing_magic_rude_buster

tag @s add player_is_not_doing
tag @s remove player_target
tag @s remove player_used_turn

tag @s remove player_cutscene_intro_vanilla_speak_2
