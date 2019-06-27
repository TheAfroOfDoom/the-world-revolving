# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\fast_counter_clockwise\bullet\initialize.mcfunction

# Set scores
scoreboard players operation @s attack_wrp_end = #attack_ring_around_fast_counter_clockwise attack_wrp_end
scoreboard players set @s attack_variant -4

# Run base ring_around bullet initialize function
function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/initialize
