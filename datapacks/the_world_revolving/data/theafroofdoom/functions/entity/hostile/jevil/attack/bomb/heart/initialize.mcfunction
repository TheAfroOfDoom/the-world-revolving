# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\heart\initialize.mcfunction

# Initializes entities who want to bomb heart

# Add Tag
tag @s add jevil_is_attacking_bomb_heart

# Set scores
scoreboard players operation @s attack_length = #attack_bomb_heart attack_length
scoreboard players operation @s attack_rate = #attack_bomb_heart attack_rate
scoreboard players operation @s attack_recover = #attack_bomb_heart attack_recover
scoreboard players operation @s attack_voice = #attack_bomb_heart attack_voice
scoreboard players set @s attack_variant -2

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base bomb initialize function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/initialize
