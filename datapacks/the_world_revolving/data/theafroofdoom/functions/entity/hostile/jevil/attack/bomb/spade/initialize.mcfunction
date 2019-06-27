# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\spade\initialize.mcfunction

# Initializes entities who want to bomb spade

# Add Tag
tag @s add jevil_is_attacking_bomb_spade

# Set scores
scoreboard players operation @s attack_length = #attack_bomb_spade attack_length
scoreboard players operation @s attack_rate = #attack_bomb_spade attack_rate
scoreboard players operation @s attack_recover = #attack_bomb_spade attack_recover
scoreboard players operation @s attack_voice = #attack_bomb_spade attack_voice
scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base bomb initialize function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/initialize
