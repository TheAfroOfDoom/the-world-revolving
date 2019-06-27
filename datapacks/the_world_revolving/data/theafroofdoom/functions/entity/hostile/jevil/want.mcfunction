# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\want.mcfunction

# Initialize an attack based on wants_to_x tag

# # Bomb
# Club
execute if entity @s[tag=jevil_wants_to_bomb_club] run function theafroofdoom:entity/hostile/jevil/attack/bomb/club/initialize
execute if entity @s[tag=jevil_wants_to_bomb_club] run tag @s remove jevil_wants_to_bomb_club

# Diamond
execute if entity @s[tag=jevil_wants_to_bomb_diamond] run function theafroofdoom:entity/hostile/jevil/attack/bomb/diamond/initialize
execute if entity @s[tag=jevil_wants_to_bomb_diamond] run tag @s remove jevil_wants_to_bomb_diamond

# Heart
execute if entity @s[tag=jevil_wants_to_bomb_heart] run function theafroofdoom:entity/hostile/jevil/attack/bomb/heart/initialize
execute if entity @s[tag=jevil_wants_to_bomb_heart] run tag @s remove jevil_wants_to_bomb_heart

# Spade
execute if entity @s[tag=jevil_wants_to_bomb_spade] run function theafroofdoom:entity/hostile/jevil/attack/bomb/spade/initialize
execute if entity @s[tag=jevil_wants_to_bomb_spade] run tag @s remove jevil_wants_to_bomb_spade

# # Carousel
# Duck
execute if entity @s[tag=jevil_wants_to_carousel_duck] run function theafroofdoom:entity/hostile/jevil/attack/carousel/duck/initialize
execute if entity @s[tag=jevil_wants_to_carousel_duck] run tag @s remove jevil_wants_to_carousel_duck

# Horse
execute if entity @s[tag=jevil_wants_to_carousel_horse] run function theafroofdoom:entity/hostile/jevil/attack/carousel/horse/initialize
execute if entity @s[tag=jevil_wants_to_carousel_horse] run tag @s remove jevil_wants_to_carousel_horse

# # Combination
# 0
execute if entity @s[tag=jevil_wants_to_combination_0] run function theafroofdoom:entity/hostile/jevil/attack/combination/0/initialize_default
execute if entity @s[tag=jevil_wants_to_combination_0] run tag @s remove jevil_wants_to_combination_0

# Carousel
execute if entity @s[tag=jevil_wants_to_combination_carousel] run function theafroofdoom:entity/hostile/jevil/attack/combination/carousel/initialize_default
execute if entity @s[tag=jevil_wants_to_combination_carousel] run tag @s remove jevil_wants_to_combination_carousel

# Chaos Bomb
execute if entity @s[tag=jevil_wants_to_combination_chaos_bomb] run function theafroofdoom:entity/hostile/jevil/attack/combination/chaos_bomb/initialize_default
execute if entity @s[tag=jevil_wants_to_combination_chaos_bomb] run tag @s remove jevil_wants_to_combination_chaos_bomb

# Ring Around
execute if entity @s[tag=jevil_wants_to_combination_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/combination/ring_around/initialize_default
execute if entity @s[tag=jevil_wants_to_combination_ring_around] run tag @s remove jevil_wants_to_combination_ring_around

# # Cutscene
# Final Chaos
execute if entity @s[tag=jevil_wants_to_cutscene_final_chaos] run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/initialize
execute if entity @s[tag=jevil_wants_to_cutscene_final_chaos] run tag @s remove jevil_wants_to_cutscene_final_chaos

# # Devilsknife
# Basic
execute if entity @s[tag=jevil_wants_to_devilsknife_basic] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/basic/initialize
execute if entity @s[tag=jevil_wants_to_devilsknife_basic] run tag @s remove jevil_wants_to_devilsknife_basic

# Smiling
execute if entity @s[tag=jevil_wants_to_devilsknife_smiling] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/smiling/initialize
execute if entity @s[tag=jevil_wants_to_devilsknife_smiling] run tag @s remove jevil_wants_to_devilsknife_smiling

# # Rain
# Diamond
execute if entity @s[tag=jevil_wants_to_rain_diamond] run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond/initialize
execute if entity @s[tag=jevil_wants_to_rain_diamond] run tag @s remove jevil_wants_to_rain_diamond

# Diamond Crippled
execute if entity @s[tag=jevil_wants_to_rain_diamond_crippled] run function theafroofdoom:entity/hostile/jevil/attack/rain/diamond_crippled/initialize
execute if entity @s[tag=jevil_wants_to_rain_diamond_crippled] run tag @s remove jevil_wants_to_rain_diamond_crippled

# # Random
# Phase 0
execute if entity @s[tag=jevil_wants_to_random_phase_0] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/0/initialize_default
execute if entity @s[tag=jevil_wants_to_random_phase_0] run tag @s remove jevil_wants_to_random_phase_0

# Phase 1
execute if entity @s[tag=jevil_wants_to_random_phase_1] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/1/initialize_default
execute if entity @s[tag=jevil_wants_to_random_phase_1] run tag @s remove jevil_wants_to_random_phase_1

# Phase 2
execute if entity @s[tag=jevil_wants_to_random_phase_2] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/2/initialize_default
execute if entity @s[tag=jevil_wants_to_random_phase_2] run tag @s remove jevil_wants_to_random_phase_2

# Phase 4
execute if entity @s[tag=jevil_wants_to_random_phase_4] run function theafroofdoom:entity/hostile/jevil/attack/random/phase/4/initialize_default
execute if entity @s[tag=jevil_wants_to_random_phase_4] run tag @s remove jevil_wants_to_random_phase_4

# Ring Around
execute if entity @s[tag=jevil_wants_to_random_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/random/ring_around/initialize_default
execute if entity @s[tag=jevil_wants_to_random_ring_around] run tag @s remove jevil_wants_to_random_ring_around

# # Ring Around
# Clockwise
execute if entity @s[tag=jevil_wants_to_ring_around_clockwise] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/clockwise/initialize
execute if entity @s[tag=jevil_wants_to_ring_around_clockwise] run tag @s remove jevil_wants_to_ring_around_clockwise

# Counter Clockwise
execute if entity @s[tag=jevil_wants_to_ring_around_counter_clockwise] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/counter_clockwise/initialize
execute if entity @s[tag=jevil_wants_to_ring_around_counter_clockwise] run tag @s remove jevil_wants_to_ring_around_counter_clockwise

# Fast Clockwise
execute if entity @s[tag=jevil_wants_to_ring_around_fast_clockwise] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_clockwise/initialize
execute if entity @s[tag=jevil_wants_to_ring_around_fast_clockwise] run tag @s remove jevil_wants_to_ring_around_fast_clockwise

# Fast Counter Clockwise
execute if entity @s[tag=jevil_wants_to_ring_around_fast_counter_clockwise] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/fast_counter_clockwise/initialize
execute if entity @s[tag=jevil_wants_to_ring_around_fast_counter_clockwise] run tag @s remove jevil_wants_to_ring_around_fast_counter_clockwise

# # Sentry
# Circle
execute if entity @s[tag=jevil_wants_to_sentry_circle] run function theafroofdoom:entity/hostile/jevil/attack/sentry/circle/initialize
execute if entity @s[tag=jevil_wants_to_sentry_circle] run tag @s remove jevil_wants_to_sentry_circle

# # Shoot
# Diamond
execute if entity @s[tag=jevil_wants_to_shoot_diamond] run function theafroofdoom:entity/hostile/jevil/attack/shoot/diamond/initialize
execute if entity @s[tag=jevil_wants_to_shoot_diamond] run tag @s remove jevil_wants_to_shoot_diamond

# Spade
execute if entity @s[tag=jevil_wants_to_shoot_spade] run function theafroofdoom:entity/hostile/jevil/attack/shoot/spade/initialize
execute if entity @s[tag=jevil_wants_to_shoot_spade] run tag @s remove jevil_wants_to_shoot_spade
