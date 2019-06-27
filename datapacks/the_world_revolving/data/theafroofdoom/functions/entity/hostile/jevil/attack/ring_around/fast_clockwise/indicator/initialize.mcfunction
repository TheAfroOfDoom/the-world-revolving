# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\fast_clockwise\indicator\initialize.mcfunction

# Initializes entities tagged "attack_indicator_shoot_new" with attack_variant = -3

# Set group ID
function theafroofdoom:entity/group_id/set_next

# Set scores
scoreboard players operation @s attack_ang_min = #attack_ring_around_fast_clockwise attack_ang_min
scoreboard players operation @s attack_ang_range = #attack_ring_around_fast_clockwise attack_ang_range
scoreboard players operation @s attack_bullets = #attack_ring_around_fast_clockwise attack_bullets
scoreboard players operation @s attack_charge_up = #attack_ring_around_fast_clockwise attack_charge_up
scoreboard players operation @s attack_cone = #attack_ring_around_fast_clockwise attack_cone
scoreboard players operation @s attack_model = #attack_ring_around_fast_clockwise attack_model
scoreboard players operation @s attack_seq_dir = #attack_ring_around_fast_clockwise attack_seq_dir
scoreboard players operation @s attack_seq_spd = #attack_ring_around_fast_clockwise attack_seq_spd
scoreboard players operation @s attack_rad_min = #attack_ring_around_fast_clockwise attack_rad_min
scoreboard players operation @s attack_rad_range = #attack_ring_around_fast_clockwise attack_rad_range
scoreboard players set @s attack_variant -3

# Run base ring_around indicator initialize function
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/initialize
