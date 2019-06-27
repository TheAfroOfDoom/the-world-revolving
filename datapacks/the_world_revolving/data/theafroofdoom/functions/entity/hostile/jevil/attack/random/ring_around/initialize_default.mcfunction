# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\ring_around\initialize_default.mcfunction

# Initializes entities who want to random ring around

# Set influences to defaults for random_ring_around
scoreboard players set #attack_ring_around_clockwise attack_influence 1
scoreboard players set #attack_ring_around_counter_clockwise attack_influence 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/random/ring_around/initialize
