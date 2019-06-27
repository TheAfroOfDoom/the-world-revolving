# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\duck\indicator\summoner\initialize.mcfunction

# Initializes entities tagged "attack_summoner_carousel_new" with attack_variant = -2

# Set scores
scoreboard players operation @s attack_diff = #attack_carousel_duck attack_diff
scoreboard players operation @s attack_model = #attack_carousel_duck attack_model
scoreboard players operation @s attack_rad_min = #attack_carousel_duck attack_rad_min
scoreboard players set @s attack_variant -1

# Run base shoot indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summoner/initialize
