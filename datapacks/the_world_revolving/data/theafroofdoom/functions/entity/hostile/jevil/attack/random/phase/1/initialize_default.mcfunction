# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\phase\1\initialize_default.mcfunction

# Initializes entities who want to random phase 1

# Set influences to defaults for random_phase_1
scoreboard players set #attack_bomb_club attack_influence 1
scoreboard players set #attack_carousel_horse attack_influence 1
scoreboard players set #attack_combination_ring_around attack_influence 1
scoreboard players set #attack_rain_diamond attack_influence 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/phase/1/initialize
