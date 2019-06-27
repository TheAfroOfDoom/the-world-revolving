# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\diamond\reset_scores.mcfunction

# Sets scores to default for attack_rain_diamond

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_rain_diamond attack_ang_min 0
scoreboard players set #attack_rain_diamond attack_ang_range 360
scoreboard players set #attack_rain_diamond attack_charge_up 9
scoreboard players set #attack_rain_diamond attack_length 149
scoreboard players set #attack_rain_diamond attack_model 3
scoreboard players set #attack_rain_diamond attack_rad_min 0
scoreboard players set #attack_rain_diamond attack_rad_range 10
scoreboard players set #attack_rain_diamond attack_rate 4
scoreboard players set #attack_rain_diamond attack_recover 29
scoreboard players set #attack_rain_diamond attack_voice 0
