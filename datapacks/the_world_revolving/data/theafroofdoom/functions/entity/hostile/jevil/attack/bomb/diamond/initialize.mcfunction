# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\diamond\initialize.mcfunction

# Initializes entities who want to bomb diamond

# Add Tag
tag @s add jevil_is_attacking_bomb_diamond

# Set scores
scoreboard players operation @s attack_length = #attack_bomb_diamond attack_length
scoreboard players operation @s attack_rate = #attack_bomb_diamond attack_rate
scoreboard players operation @s attack_recover = #attack_bomb_diamond attack_recover
scoreboard players operation @s attack_voice = #attack_bomb_diamond attack_voice
scoreboard players set @s attack_variant -3

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base bomb initialize function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/initialize
