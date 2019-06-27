# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\basic\initialize.mcfunction

# Initializes entities who want to devilsknife basic

# Add Tag
tag @s add jevil_is_attacking_devilsknife_basic

# Set scores
scoreboard players operation @s attack_length = #attack_devilsknife_basic attack_length
scoreboard players operation @s attack_model = #attack_devilsknife_basic attack_model_2
scoreboard players operation @s attack_rate = #attack_devilsknife_basic attack_rate
scoreboard players operation @s attack_recover = #attack_devilsknife_basic attack_recover
scoreboard players operation @s attack_voice = #attack_devilsknife_basic attack_voice
scoreboard players set @s attack_variant -2

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/initialize
