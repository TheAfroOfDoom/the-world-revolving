# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\initialize.mcfunction

# Initializes entities who want to sentry circle

# Add Tag
tag @s add jevil_is_attacking_sentry_circle

# Set scores
scoreboard players operation @s attack_length = #attack_sentry_circle attack_length
scoreboard players operation @s attack_rate = #attack_sentry_circle attack_rate
scoreboard players operation @s attack_recover = #attack_sentry_circle attack_recover
scoreboard players operation @s attack_voice = #attack_sentry_circle attack_voice
scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base sentry initialize function
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/initialize
