# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\phase\2\initialize_default.mcfunction

# Initializes entities who want to random phase 2

# Set influences to defaults for random_phase_2
scoreboard players set #attack_bomb_spade attack_influence 1
scoreboard players set #attack_sentry_circle attack_influence 1
scoreboard players set #attack_combination_carousel attack_influence 1
scoreboard players set #attack_devilsknife_smiling attack_influence 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/phase/2/initialize
