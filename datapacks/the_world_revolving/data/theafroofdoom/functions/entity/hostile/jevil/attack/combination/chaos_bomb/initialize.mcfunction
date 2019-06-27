# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\chaos_bomb\initialize.mcfunction

# Initializes entities who want to combination chaos bomb
# Contains:
# attack_bomb_club: 1
# attack_bomb_diamond: 1
# attack_bomb_heart: 1
# attack_bomb_spade: 1

# Add Tag
tag @s add jevil_is_attacking_combination_chaos_bomb

# Set scores
scoreboard players operation @s attack_diff = #attack_combination_chaos_bomb attack_diff
scoreboard players operation @s attack_length = #attack_combination_chaos_bomb attack_length
scoreboard players operation @s attack_rate = #attack_combination_chaos_bomb attack_rate
scoreboard players operation @s attack_rt_static = #attack_combination_chaos_bomb attack_rt_static
scoreboard players operation @s attack_seq_spd = #attack_combination_chaos_bomb attack_seq_spd
scoreboard players operation @s attack_voice = #attack_combination_chaos_bomb attack_voice
scoreboard players set @s attack_variant -3

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/base/initialize
