# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\phase\0\initialize_default.mcfunction

# Initializes entities who want to random phase 0

# Set influences to defaults for random_phase_0
scoreboard players set #attack_bomb_heart attack_influence 2
scoreboard players set #attack_devilsknife_basic attack_influence 2
scoreboard players set #attack_ring_around_clockwise attack_influence 1
scoreboard players set #attack_ring_around_counter_clockwise attack_influence 1
scoreboard players set #attack_shoot_spade attack_influence 2

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/phase/0/initialize
