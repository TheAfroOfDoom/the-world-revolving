# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\smiling\initialize.mcfunction

# Initializes entities who want to devilsknife smiling

# Add Tag
tag @s add jevil_is_attacking_devilsknife_smiling

# Set scores
scoreboard players operation @s attack_length = #attack_devilsknife_smiling attack_length
scoreboard players operation @s attack_model = #attack_devilsknife_smiling attack_model_2
scoreboard players operation @s attack_rate = #attack_devilsknife_smiling attack_rate
scoreboard players operation @s attack_recover = #attack_devilsknife_smiling attack_recover
scoreboard players operation @s attack_voice = #attack_devilsknife_smiling attack_voice
scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/initialize
