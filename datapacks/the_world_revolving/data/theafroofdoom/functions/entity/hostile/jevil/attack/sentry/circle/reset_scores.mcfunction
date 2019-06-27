# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\reset_scores.mcfunction

# Sets scores to default for attack_sentry_circle

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_sentry_circle attack_ang_min 0
scoreboard players set #attack_sentry_circle attack_ang_range 360
scoreboard players set #attack_sentry_circle attack_bullets 3
scoreboard players set #attack_sentry_circle attack_charge_up 8
scoreboard players set #attack_sentry_circle attack_cone 30
scoreboard players set #attack_sentry_circle attack_cycles 3
scoreboard players set #attack_sentry_circle attack_length 159
scoreboard players set #attack_sentry_circle attack_model 1
scoreboard players set #attack_sentry_circle attack_model_1 20
scoreboard players set #attack_sentry_circle attack_rad_min 35
scoreboard players set #attack_sentry_circle attack_rad_range 0
scoreboard players set #attack_sentry_circle attack_rate 14
scoreboard players set #attack_sentry_circle attack_recover 49
scoreboard players set #attack_sentry_circle attack_voice 0
