# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_combination"

# Add Tag
tag @s add jevil_is_not_attacking_combination

# Set scores
scoreboard players reset @s attack_clock
scoreboard players reset @s attack_diff
scoreboard players reset @s attack_length
scoreboard players reset @s attack_rate
scoreboard players reset @s attack_variant
scoreboard players reset @s attack_voice

# Reset weights used
function theafroofdoom:entity/hostile/jevil/attack/combination/base/reset_weights

# Remove Tag
tag @s remove jevil_is_attacking_combination

# Recover Jevil with delay attack_recover
# attack_recover has been set to the last attack's attack_recover
function theafroofdoom:entity/hostile/jevil/attack/recover/initialize
