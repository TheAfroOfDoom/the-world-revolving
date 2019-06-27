# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\0\initialize_default.mcfunction

# Initializes entities who want to combination 0

# Set weights to defaults for combination_0
scoreboard players set #attack_shoot_diamond attack_weight 1
scoreboard players set #attack_shoot_spade attack_weight 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/0/initialize
