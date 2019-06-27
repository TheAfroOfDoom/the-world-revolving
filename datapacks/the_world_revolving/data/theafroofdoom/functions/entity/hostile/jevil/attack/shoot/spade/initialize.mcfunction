# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\spade\initialize.mcfunction

# Initializes entities who want to shoot spade

# Add Tag
tag @s add jevil_is_attacking_shoot_spade

# Set scores
scoreboard players operation @s attack_length = #attack_shoot_spade attack_length
scoreboard players operation @s attack_rate = #attack_shoot_spade attack_rate
scoreboard players operation @s attack_recover = #attack_shoot_spade attack_recover
scoreboard players operation @s attack_voice = #attack_shoot_spade attack_voice
scoreboard players set @s attack_variant -2

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/initialize
