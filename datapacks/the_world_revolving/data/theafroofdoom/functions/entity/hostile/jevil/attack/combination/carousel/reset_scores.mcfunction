# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\carousel\reset_scores.mcfunction

# Sets scores to default for attack_combination_carousel

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_combination_carousel attack_diff 1
scoreboard players set #attack_combination_carousel attack_length 26
scoreboard players set #attack_combination_carousel attack_rate 13
scoreboard players set #attack_combination_carousel attack_rt_static 1
scoreboard players set #attack_combination_carousel attack_seq_spd 2
scoreboard players set #attack_combination_carousel attack_voice 1
