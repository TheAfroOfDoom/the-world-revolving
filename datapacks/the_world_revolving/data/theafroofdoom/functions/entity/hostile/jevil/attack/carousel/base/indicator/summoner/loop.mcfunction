# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\summoner\loop.mcfunction

# Runs every tick off entities tagged "attack_summoner_carousel"

# Teleport self up/down and forward using velocity function based on attack_diff
execute if score @s attack_diff matches 0 run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summoner/condition/loop/attack_diff/0
execute if score @s attack_diff matches 1 run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summoner/condition/loop/attack_diff/1
