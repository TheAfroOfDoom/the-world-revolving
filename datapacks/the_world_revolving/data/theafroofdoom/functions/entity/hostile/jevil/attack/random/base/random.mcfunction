# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\random\base\random.mcfunction

# Use rng with attack influences
# Randomize which attack to run based on influences

# Initialize afro.math_0
scoreboard players set @s afro.math_0 0

# Find sum of attack influences and store in afro.math_0
scoreboard players operation @s afro.math_0 += #attack_bomb_club attack_influence
scoreboard players operation @s afro.math_0 += #attack_bomb_diamond attack_influence
scoreboard players operation @s afro.math_0 += #attack_bomb_heart attack_influence
scoreboard players operation @s afro.math_0 += #attack_bomb_spade attack_influence
scoreboard players operation @s afro.math_0 += #attack_combination_0 attack_influence
scoreboard players operation @s afro.math_0 += #attack_combination_carousel attack_influence
scoreboard players operation @s afro.math_0 += #attack_combination_chaos_bomb attack_influence
scoreboard players operation @s afro.math_0 += #attack_combination_ring_around attack_influence
scoreboard players operation @s afro.math_0 += #attack_carousel_duck attack_influence
scoreboard players operation @s afro.math_0 += #attack_carousel_horse attack_influence
scoreboard players operation @s afro.math_0 += #attack_devilsknife_basic attack_influence
scoreboard players operation @s afro.math_0 += #attack_devilsknife_smiling attack_influence
scoreboard players operation @s afro.math_0 += #attack_rain_diamond attack_influence
scoreboard players operation @s afro.math_0 += #attack_rain_diamond_crippled attack_influence
scoreboard players operation @s afro.math_0 += #attack_ring_around_clockwise attack_influence
scoreboard players operation @s afro.math_0 += #attack_ring_around_counter_clockwise attack_influence
scoreboard players operation @s afro.math_0 += #attack_ring_around_fast_clockwise attack_influence
scoreboard players operation @s afro.math_0 += #attack_ring_around_fast_counter_clockwise attack_influence
scoreboard players operation @s afro.math_0 += #attack_shoot_diamond attack_influence
scoreboard players operation @s afro.math_0 += #attack_shoot_spade attack_influence

# Get randomized value to choose an attack to run
scoreboard players set @s random_min 0
scoreboard players operation @s random_range = @s afro.math_0
function theafroofdoom:rng

# Format:
# if(attack's influence > 0) -> if(random >= 0) -> if(random < attack's influence) -> run attack
# random -= attack's influence (regardless of if an attack was ran)
# = = = #
# if random < 0, attack has been ran already

# Bomb
execute if score #attack_bomb_club attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_club attack_influence run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/initialize
scoreboard players operation @s random -= #attack_bomb_club attack_influence

execute if score #attack_bomb_diamond attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_diamond attack_influence run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/initialize
scoreboard players operation @s random -= #attack_bomb_diamond attack_influence

execute if score #attack_bomb_heart attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_heart attack_influence run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/initialize
scoreboard players operation @s random -= #attack_bomb_heart attack_influence

execute if score #attack_bomb_spade attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_spade attack_influence run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/initialize
scoreboard players operation @s random -= #attack_bomb_spade attack_influence

# Carousel
execute if score #attack_carousel_duck attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_carousel_duck attack_influence run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/initialize
scoreboard players operation @s random -= #attack_carousel_duck attack_influence

execute if score #attack_carousel_horse attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_carousel_horse attack_influence run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/initialize
scoreboard players operation @s random -= #attack_carousel_horse attack_influence

# Combination
execute if score #attack_combination_0 attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_combination_0 attack_influence run function theafroofdoom:entity/hostile/jevil/attack/combination/0/initialize_default
scoreboard players operation @s random -= #attack_combination_0 attack_influence

execute if score #attack_combination_carousel attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_combination_carousel attack_influence run function theafroofdoom:entity/hostile/jevil/attack/combination/carousel/initialize_default
scoreboard players operation @s random -= #attack_combination_carousel attack_influence

execute if score #attack_combination_chaos_bomb attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_combination_chaos_bomb attack_influence run function theafroofdoom:entity/hostile/jevil/attack/combination/chaos_bomb/initialize_default
scoreboard players operation @s random -= #attack_combination_chaos_bomb attack_influence

execute if score #attack_combination_ring_around attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_combination_ring_around attack_influence run function theafroofdoom:entity/hostile/jevil/attack/combination/ring_around/initialize_default
scoreboard players operation @s random -= #attack_combination_ring_around attack_influence

# Devilsknife
execute if score #attack_devilsknife_basic attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_devilsknife_basic attack_influence run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/initialize
scoreboard players operation @s random -= #attack_devilsknife_basic attack_influence

execute if score #attack_devilsknife_smiling attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_devilsknife_smiling attack_influence run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/initialize
scoreboard players operation @s random -= #attack_devilsknife_smiling attack_influence

# Rain
execute if score #attack_rain_diamond attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_rain_diamond attack_influence run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/initialize
scoreboard players operation @s random -= #attack_rain_diamond attack_influence

execute if score #attack_rain_diamond_crippled attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_rain_diamond_crippled attack_influence run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/initialize
scoreboard players operation @s random -= #attack_rain_diamond_crippled attack_influence

# Ring Around
execute if score #attack_ring_around_clockwise attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_clockwise attack_influence run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/initialize
scoreboard players operation @s random -= #attack_ring_around_clockwise attack_influence

execute if score #attack_ring_around_counter_clockwise attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_counter_clockwise attack_influence run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/initialize
scoreboard players operation @s random -= #attack_ring_around_counter_clockwise attack_influence

execute if score #attack_ring_around_fast_clockwise attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_fast_clockwise attack_influence run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/initialize
scoreboard players operation @s random -= #attack_ring_around_fast_clockwise attack_influence

execute if score #attack_ring_around_fast_counter_clockwise attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_fast_counter_clockwise attack_influence run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/initialize
scoreboard players operation @s random -= #attack_ring_around_fast_counter_clockwise attack_influence

# Shoot
execute if score #attack_shoot_diamond attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_shoot_diamond attack_influence run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/initialize
scoreboard players operation @s random -= #attack_shoot_diamond attack_influence

execute if score #attack_shoot_spade attack_influence matches 1.. if score @s random matches 0.. if score @s random < #attack_shoot_spade attack_influence run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/initialize
scoreboard players operation @s random -= #attack_shoot_spade attack_influence
