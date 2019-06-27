# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\base\phantom\initialize.mcfunction

# Initializes entities tagged "jevil_phantom_attack_sentry_new"

# Set scores
scoreboard players set @s attack_clock -1

# Face player then fall to ground to fix Rotation de-sync
teleport @s ~ ~ ~ facing entity @p[team=player]

# Remove tags
tag @s remove jevil_phantom_attack_sentry_new
