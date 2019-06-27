# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_ring_around"

# Add Tag
tag @s add jevil_is_not_attacking_ring_around

# Set scores
scoreboard players reset @s attack_clock
scoreboard players reset @s attack_length
scoreboard players reset @s attack_rate
scoreboard players reset @s attack_variant
scoreboard players reset @s attack_voice

# Remove Tag
tag @s remove jevil_is_attacking_ring_around

# Recover Jevil with delay attack_recover
function theafroofdoom:entity/hostile/jevil/attack/recover/initialize
