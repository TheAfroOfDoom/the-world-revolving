# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\club\initialize.mcfunction

# Initializes entities who want to bomb club

# Add Tag
tag @s add jevil_is_attacking_bomb_club

# Set scores
scoreboard players operation @s attack_length = #attack_bomb_club attack_length
scoreboard players operation @s attack_rate = #attack_bomb_club attack_rate
scoreboard players operation @s attack_recover = #attack_bomb_club attack_recover
scoreboard players operation @s attack_voice = #attack_bomb_club attack_voice
scoreboard players set @s attack_variant -4

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base bomb initialize function
function theafroofdoom:entity/hostile/jevil/attack/bomb/base/initialize
