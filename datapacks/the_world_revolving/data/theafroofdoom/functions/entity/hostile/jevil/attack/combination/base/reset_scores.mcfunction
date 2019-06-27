# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\reset_scores.mcfunction

# Sets scores to default for attack_combination_n

# Only reset scores of attacks that were used
execute if score #attack_bomb_club attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/reset_scores
execute if score #attack_bomb_diamond attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/reset_scores
execute if score #attack_bomb_heart attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/reset_scores
execute if score #attack_bomb_spade attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/reset_scores

execute if score #attack_carousel_duck attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/reset_scores
execute if score #attack_carousel_horse attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/reset_scores

execute if score #attack_devilsknife_basic attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/reset_scores
execute if score #attack_devilsknife_smiling attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/reset_scores

execute if score #attack_rain_diamond attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/reset_scores
execute if score #attack_rain_diamond_crippled attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/reset_scores

execute if score #attack_ring_around_clockwise attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/reset_scores
execute if score #attack_ring_around_counter_clockwise attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/reset_scores
execute if score #attack_ring_around_fast_clockwise attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/reset_scores
execute if score #attack_ring_around_fast_counter_clockwise attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/reset_scores

execute if score #attack_shoot_diamond attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/reset_scores
execute if score #attack_shoot_spade attack_weight matches 1.. run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/reset_scores
