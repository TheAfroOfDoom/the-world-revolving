# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\spade\phantom\initialize.mcfunction

# Initializes entities tagged "jevil_phantom_attack_shoot" with score attack_variant = -2

# Set scores
scoreboard players operation @s attack_charge_up = #attack_shoot_spade attack_charge_up
scoreboard players operation @s attack_wrp_end = #attack_shoot_spade attack_wrp_end
scoreboard players operation @s attack_wrp_in = #attack_shoot_spade attack_wrp_in
scoreboard players operation @s attack_wrp_out = #attack_shoot_spade attack_wrp_out
scoreboard players operation @s attack_wrp_spd = #attack_shoot_spade attack_wrp_spd
scoreboard players operation @s attack_wrp_start = #attack_shoot_spade attack_wrp_start
scoreboard players set @s attack_variant -2

# Run base shoot phantom initialize function
function theafroofdoom:entity/hostile/jevil/attack/shoot/base/phantom/initialize
