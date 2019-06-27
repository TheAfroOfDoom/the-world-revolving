# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\spade\reset_scores.mcfunction

# Sets scores to default for attack_bomb_spade

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_bomb_spade attack_ang_min 0
scoreboard players set #attack_bomb_spade attack_ang_range 360
scoreboard players set #attack_bomb_spade attack_bullets 10
scoreboard players set #attack_bomb_spade attack_cone 360
scoreboard players set #attack_bomb_spade attack_cone_mult -1
scoreboard players set #attack_bomb_spade attack_diff 0
scoreboard players set #attack_bomb_spade attack_length 149
scoreboard players set #attack_bomb_spade attack_model 15
scoreboard players set #attack_bomb_spade attack_model_1 16
scoreboard players set #attack_bomb_spade attack_rad_min 35
scoreboard players set #attack_bomb_spade attack_rad_range 3
scoreboard players set #attack_bomb_spade attack_rate 9
scoreboard players set #attack_bomb_spade attack_recover 49
scoreboard players set #attack_bomb_spade attack_voice 0
