# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\phase\4\initialize_default.mcfunction

# Initializes entities who want to random phase 4

# Set influences to defaults for random_phase_4
scoreboard players set #attack_carousel_horse attack_influence 1

scoreboard players set #attack_combination_carousel attack_influence 1
scoreboard players set #attack_combination_chaos_bomb attack_influence 1
scoreboard players set #attack_combination_ring_around attack_influence 1

scoreboard players set #attack_devilsknife_smiling attack_influence 1

scoreboard players set #attack_sentry_circle attack_influence 1

scoreboard players set #attack_shoot_diamond attack_influence 1
scoreboard players set #attack_shoot_spade attack_influence 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/phase/4/initialize
