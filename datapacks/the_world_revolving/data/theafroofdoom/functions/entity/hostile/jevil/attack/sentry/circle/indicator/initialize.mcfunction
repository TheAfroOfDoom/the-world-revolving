# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_sentry_new" with attack_variant = -1

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_sentry_circle attack_ang_min
scoreboard players operation @s attack_ang_range = #attack_sentry_circle attack_ang_range
scoreboard players operation @s attack_bullets = #attack_sentry_circle attack_bullets
scoreboard players operation @s attack_charge_up = #attack_sentry_circle attack_charge_up
scoreboard players operation @s attack_cone = #attack_sentry_circle attack_cone
scoreboard players operation @s attack_cycles = #attack_sentry_circle attack_cycles
scoreboard players operation @s attack_diff = #attack_sentry_circle attack_diff
scoreboard players operation @s attack_model = #attack_sentry_circle attack_model
scoreboard players operation @s attack_model_1 = #attack_sentry_circle attack_model_1
scoreboard players operation @s attack_rad_min = #attack_sentry_circle attack_rad_min
scoreboard players operation @s attack_rad_range = #attack_sentry_circle attack_rad_range
scoreboard players set @s attack_variant -1

# Copy group ID to jevil phantom
function theafroofdoom:entity/group_id/copy

# Run base sentry indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/initialize
