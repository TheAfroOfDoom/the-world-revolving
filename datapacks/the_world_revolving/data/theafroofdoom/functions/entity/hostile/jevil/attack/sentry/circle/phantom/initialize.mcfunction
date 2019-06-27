# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sentry\circle\phantom\initialize.mcfunction

# Initializes entities tagged "jevil_phantom_attack_sentry" with score attack_variant = -1

# Set scores
scoreboard players set @s attack_variant -1

# Run base sentry phantom initialize function
function theafroofdoom:entity/hostile/jevil/attack/sentry/base/phantom/initialize
