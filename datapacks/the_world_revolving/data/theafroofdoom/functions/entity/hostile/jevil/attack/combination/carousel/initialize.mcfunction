# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\carousel\initialize.mcfunction

# Initializes entities who want to combination carousel
# First combination added as a test to see if this attack works
# Contains:
# attack_shoot_diamond: 1
# attack_shoot_spade: 1

# Add Tag
tag @s add jevil_is_attacking_combination_carousel

# Set scores
scoreboard players operation @s attack_diff = #attack_combination_carousel attack_diff
scoreboard players operation @s attack_length = #attack_combination_carousel attack_length
scoreboard players operation @s attack_rate = #attack_combination_carousel attack_rate
scoreboard players operation @s attack_rt_static = #attack_combination_carousel attack_rt_static
scoreboard players operation @s attack_seq_spd = #attack_combination_carousel attack_seq_spd
scoreboard players operation @s attack_voice = #attack_combination_carousel attack_voice
scoreboard players set @s attack_variant -2

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/initialize
