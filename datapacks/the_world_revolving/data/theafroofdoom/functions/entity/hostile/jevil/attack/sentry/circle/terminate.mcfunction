# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_sentry_circle"

# Add Tag
tag @s add jevil_is_not_attacking_sentry_circle

# Set scores to default
function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/reset_scores

# Remove Tag
tag @s remove jevil_is_attacking_sentry_circle

# Run base sentry terminate function
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/terminate
