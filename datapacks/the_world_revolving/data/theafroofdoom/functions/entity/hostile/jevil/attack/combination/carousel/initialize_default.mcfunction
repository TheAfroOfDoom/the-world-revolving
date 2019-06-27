# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\carousel\initialize_default.mcfunction

# Initializes entities who want to combination carousel

# Set weights to defaults for combination_carousel
scoreboard players set #attack_carousel_horse attack_bullets 3
scoreboard players set #attack_carousel_horse attack_cycles 162
scoreboard players set #attack_carousel_horse attack_diff 0
scoreboard players set #attack_carousel_horse attack_weight 1
scoreboard players set #attack_carousel_duck attack_weight 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/carousel/initialize
