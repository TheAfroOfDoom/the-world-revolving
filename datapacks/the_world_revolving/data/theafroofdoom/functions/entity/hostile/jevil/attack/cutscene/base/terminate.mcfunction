# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\base\terminate.mcfunction

# Terminates entities tagged "jevil_is_attacking_cutscene"

# Add Tag
tag @s add jevil_is_not_attacking_cutscene

# Set scores
scoreboard players reset @s attack_variant
scoreboard players reset @s attack_voice

# Remove Tag
tag @s remove jevil_is_attacking_cutscene

# Recover Jevil with delay attack_recover
function theafroofdoom:entity/hostile/jevil/attack/recover/initialize
