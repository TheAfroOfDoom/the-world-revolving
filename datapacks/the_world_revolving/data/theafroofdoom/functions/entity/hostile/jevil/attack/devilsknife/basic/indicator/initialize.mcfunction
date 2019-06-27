# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\basic\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_devilsknife_new" with attack_variant = -2

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_devilsknife_basic attack_ang_min
scoreboard players operation @s attack_charge_up = #attack_devilsknife_basic attack_charge_up
scoreboard players operation @s attack_cycles = #attack_devilsknife_basic attack_cycles
scoreboard players operation @s attack_diff = #attack_devilsknife_basic attack_diff
scoreboard players set @s attack_variant -2

# Run base shoot indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/indicator/initialize
