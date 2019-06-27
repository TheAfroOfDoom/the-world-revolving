# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\random.mcfunction

# Use rng with attack weights
# Randomize which attack to run based on weights

# 1 attack per activation
# Ex: attack_combination_0 will only summon one phantom for
# shoot spade or shoot diamond per "attack_rate" ticks

# Find sum of attack weights and store in afro.math_0
scoreboard players operation @s afro.math_0 += #attack_bomb_club attack_weight
scoreboard players operation @s afro.math_0 += #attack_bomb_diamond attack_weight
scoreboard players operation @s afro.math_0 += #attack_bomb_heart attack_weight
scoreboard players operation @s afro.math_0 += #attack_bomb_spade attack_weight
scoreboard players operation @s afro.math_0 += #attack_carousel_duck attack_weight
scoreboard players operation @s afro.math_0 += #attack_carousel_horse attack_weight
scoreboard players operation @s afro.math_0 += #attack_devilsknife_basic attack_weight
scoreboard players operation @s afro.math_0 += #attack_devilsknife_smiling attack_weight
scoreboard players operation @s afro.math_0 += #attack_rain_diamond attack_weight
scoreboard players operation @s afro.math_0 += #attack_rain_diamond_crippled attack_weight
scoreboard players operation @s afro.math_0 += #attack_ring_around_clockwise attack_weight
scoreboard players operation @s afro.math_0 += #attack_ring_around_counter_clockwise attack_weight
scoreboard players operation @s afro.math_0 += #attack_ring_around_fast_clockwise attack_weight
scoreboard players operation @s afro.math_0 += #attack_ring_around_fast_counter_clockwise attack_weight
scoreboard players operation @s afro.math_0 += #attack_shoot_diamond attack_weight
scoreboard players operation @s afro.math_0 += #attack_shoot_spade attack_weight

# Get randomized value to choose an attack to run
scoreboard players set @s random_min 0
scoreboard players operation @s random_range = @s afro.math_0
function theafroofdoom:rng

# Format:
# if(attack's weight > 0) -> if(random >= 0) -> if(random < attack's weight) -> run attack
# random -= attack's weight (regardless of if an attack was ran)
# = = = #
# if random < 0, attack has been ran already

# Bomb
execute if score #attack_bomb_club attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_club attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/bomb/club
scoreboard players operation @s random -= #attack_bomb_club attack_weight

execute if score #attack_bomb_diamond attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_diamond attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/bomb/diamond
scoreboard players operation @s random -= #attack_bomb_diamond attack_weight

execute if score #attack_bomb_heart attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_heart attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/bomb/heart
scoreboard players operation @s random -= #attack_bomb_heart attack_weight

execute if score #attack_bomb_spade attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_bomb_spade attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/bomb/spade
scoreboard players operation @s random -= #attack_bomb_spade attack_weight

# Carousel
execute if score #attack_carousel_duck attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_carousel_duck attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/carousel/duck
scoreboard players operation @s random -= #attack_carousel_duck attack_weight

execute if score #attack_carousel_horse attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_carousel_horse attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/carousel/horse
scoreboard players operation @s random -= #attack_carousel_horse attack_weight

# Devilsknife
execute if score #attack_devilsknife_basic attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_devilsknife_basic attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/devilsknife/basic
scoreboard players operation @s random -= #attack_devilsknife_basic attack_weight

execute if score #attack_devilsknife_smiling attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_devilsknife_smiling attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/devilsknife/smiling
scoreboard players operation @s random -= #attack_devilsknife_smiling attack_weight

# Rain
execute if score #attack_rain_diamond attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_rain_diamond attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/rain/diamond
scoreboard players operation @s random -= #attack_rain_diamond attack_weight

execute if score #attack_rain_diamond_crippled attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_rain_diamond_crippled attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/rain/diamond_crippled
scoreboard players operation @s random -= #attack_rain_diamond_crippled attack_weight

# Ring Around
execute if score #attack_ring_around_clockwise attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_clockwise attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/ring_around/clockwise
scoreboard players operation @s random -= #attack_ring_around_clockwise attack_weight

execute if score #attack_ring_around_counter_clockwise attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_counter_clockwise attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/ring_around/counter_clockwise
scoreboard players operation @s random -= #attack_ring_around_counter_clockwise attack_weight

execute if score #attack_ring_around_fast_clockwise attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_fast_clockwise attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/ring_around/fast_clockwise
scoreboard players operation @s random -= #attack_ring_around_fast_clockwise attack_weight

execute if score #attack_ring_around_fast_counter_clockwise attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_ring_around_fast_counter_clockwise attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/ring_around/fast_counter_clockwise
scoreboard players operation @s random -= #attack_ring_around_fast_counter_clockwise attack_weight

# Shoot
execute if score #attack_shoot_diamond attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_shoot_diamond attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/shoot/diamond
scoreboard players operation @s random -= #attack_shoot_diamond attack_weight

execute if score #attack_shoot_spade attack_weight matches 1.. if score @s random matches 0.. if score @s random < #attack_shoot_spade attack_weight run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/shoot/spade
scoreboard players operation @s random -= #attack_shoot_spade attack_weight

# if boolean attack_rt_static = 1 (false), reset attack_rate back to original value
execute if score @s attack_rt_static matches 1 run scoreboard players operation @s afro.math_0 = @s attack_rate
