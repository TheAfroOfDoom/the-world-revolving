# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\chaos_bomb\initialize_default.mcfunction

# Initializes entities who want to combination chaos bomb

# Set weights to defaults for combination_chaos_bomb
scoreboard players set #attack_bomb_club attack_weight 1
scoreboard players set #attack_bomb_diamond attack_weight 1
scoreboard players set #attack_bomb_heart attack_weight 1
scoreboard players set #attack_bomb_spade attack_weight 1

# Run base shoot initialize function
function theafroofdoom:entity/hostile/jevil/attack/combination/chaos_bomb/initialize
