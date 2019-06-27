# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\horse\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_carousel_new" with attack_variant = -2

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_bullets = #attack_carousel_horse attack_bullets
scoreboard players operation @s attack_cycles = #attack_carousel_horse attack_cycles
scoreboard players operation @s attack_model = #attack_carousel_horse attack_model
scoreboard players set @s attack_variant -2

# Run base shoot indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/initialize
