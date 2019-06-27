# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\chaos_bomb\reset_scores.mcfunction

# Sets scores to default for attack_combination_chaos_bomb

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_combination_chaos_bomb attack_diff 0
scoreboard players set #attack_combination_chaos_bomb attack_length 199
scoreboard players set #attack_combination_chaos_bomb attack_rate 8
scoreboard players set #attack_combination_chaos_bomb attack_rt_static 1
scoreboard players set #attack_combination_chaos_bomb attack_seq_spd 0
scoreboard players set #attack_combination_chaos_bomb attack_voice 0
