# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\duck\initialize.mcfunction

# Initializes entities who want to carousel duck

# Add Tag
tag @s add jevil_is_attacking_carousel_duck

# Set scores
scoreboard players operation @s attack_length = #attack_carousel_duck attack_length
scoreboard players operation @s attack_rate = #attack_carousel_duck attack_rate
scoreboard players operation @s attack_recover = #attack_carousel_duck attack_recover
scoreboard players operation @s attack_voice = #attack_carousel_duck attack_voice
scoreboard players set @s attack_variant -1

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/carousel/base/initialize
