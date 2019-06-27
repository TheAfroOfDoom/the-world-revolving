# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\diamond\initialize.mcfunction

# Initializes entities who want to shoot diamond

# Add Tag
tag @s add jevil_is_attacking_shoot_diamond

# Set scores
scoreboard players operation @s attack_length = #attack_shoot_diamond attack_length
scoreboard players operation @s attack_rate = #attack_shoot_diamond attack_rate
scoreboard players operation @s attack_recover = #attack_shoot_diamond attack_recover
scoreboard players operation @s attack_voice = #attack_shoot_diamond attack_voice
scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/initialize
