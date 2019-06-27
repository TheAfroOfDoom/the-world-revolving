# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\ring_around\initialize_default.mcfunction

# Initializes entities who want to combination ring around

# Set weights to defaults for combination_ring_around
scoreboard players set #attack_ring_around_fast_clockwise attack_weight 1
scoreboard players set #attack_ring_around_fast_counter_clockwise attack_weight 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/ring_around/initialize
