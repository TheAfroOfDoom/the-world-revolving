# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\horse\initialize.mcfunction

# Initializes entities who want to carousel horse

# Add Tag
tag @s add jevil_is_attacking_carousel_horse

# Set scores
scoreboard players operation @s attack_length = #attack_carousel_horse attack_length
scoreboard players operation @s attack_rate = #attack_carousel_horse attack_rate
scoreboard players operation @s attack_recover = #attack_carousel_horse attack_recover
scoreboard players operation @s attack_voice = #attack_carousel_horse attack_voice
scoreboard players set @s attack_variant -2

# Remove Tag
tag @s remove jevil_is_not_attacking

# Run base carousel initialize function
function theafroofdoom:entity/hostile/jevil/attack/carousel/base/initialize
