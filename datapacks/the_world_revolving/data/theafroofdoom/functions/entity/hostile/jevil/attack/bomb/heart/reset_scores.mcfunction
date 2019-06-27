# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\heart\reset_scores.mcfunction

# Sets scores to default for attack_bomb_heart

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_bomb_heart attack_ang_min 0
scoreboard players set #attack_bomb_heart attack_ang_range 360
scoreboard players set #attack_bomb_heart attack_bullets 4
scoreboard players set #attack_bomb_heart attack_cone 360
scoreboard players set #attack_bomb_heart attack_cone_mult 1
scoreboard players set #attack_bomb_heart attack_diff 2
scoreboard players set #attack_bomb_heart attack_length 149
scoreboard players set #attack_bomb_heart attack_model 14
scoreboard players set #attack_bomb_heart attack_model_1 10
scoreboard players set #attack_bomb_heart attack_rad_min 35
scoreboard players set #attack_bomb_heart attack_rad_range 3
scoreboard players set #attack_bomb_heart attack_rate 10
scoreboard players set #attack_bomb_heart attack_recover 49
scoreboard players set #attack_bomb_heart attack_voice 0
