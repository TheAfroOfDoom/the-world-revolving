# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_rain"

# Add Tag
tag @s add jevil_is_not_attacking_rain

# Set scores
scoreboard players reset @s attack_clock
scoreboard players reset @s attack_length
scoreboard players reset @s attack_rate
scoreboard players reset @s attack_variant
scoreboard players reset @s attack_voice

# Remove Tag
tag @s remove jevil_is_attacking_rain

# Recover Jevil with delay attack_recover (before it was reset)
function theafroofdoom:entity/hostile/jevil/attack/recover/initialize
