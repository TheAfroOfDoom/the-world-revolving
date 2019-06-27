# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_sentry_new"

# Set scores
scoreboard players set @s attack_clock -1
scoreboard players add @s attack_charge_up 7

# Randomize location sentry spawns at
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/randomize/location

# Remove Tags
tag @s remove attack_indicator_sentry_new
