# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\summoner\initialize.mcfunction

# Initializes entities tagged "attack_summoner_carousel_new"

# Update location based on attack_diff and initial afro.math_0
execute if score @s attack_diff matches 0 run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summoner/condition/initialize/attack_diff/0
execute if score @s attack_diff matches 1 run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summoner/condition/initialize/attack_diff/1

# Remove Tags
tag @s remove attack_summoner_carousel_new
