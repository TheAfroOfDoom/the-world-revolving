# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\sort.mcfunction

# bomb
# # bullet
execute if entity @s[tag=attack_bullet_bomb_active] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/bullet
# # damager
execute if entity @s[tag=attack_damager_bomb] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/damager
# # grazer
execute if entity @s[tag=attack_grazer_bomb] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/grazer
# # indicator
execute if entity @s[tag=attack_indicator_bomb] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/indicator/loop

# carousel
# # bullet
execute if entity @s[tag=attack_bullet_carousel] run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/bullet/loop
# # indicator
execute if entity @s[tag=attack_indicator_carousel] run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/loop
# # summoner
execute if entity @s[tag=attack_summoner_carousel] run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summoner/loop

# cutscene
# # bullet
execute if entity @s[tag=attack_bullet_cutscene] run function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/bullet/loop
# # bullet large
execute if entity @s[tag=attack_bullet_large_cutscene] run function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/bullet_large/loop
# # explosion
execute if entity @s[tag=attack_explosion_cutscene] run function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/explosion/loop
# # indicator
execute if entity @s[tag=attack_indicator_cutscene] run function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/indicator/loop

# devilsknife
# # bullet
execute if entity @s[tag=attack_bullet_devilsknife_active] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/bullet
# # indicator
execute if entity @s[tag=attack_indicator_devilsknife] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/indicator/loop
# # red bullet
execute if entity @s[tag=attack_bullet_red_devilsknife] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/red_bullet
# # red damager
execute if entity @s[tag=attack_damager_red_devilsknife] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/red_damager

# rain
# # bullet
execute if entity @s[tag=attack_bullet_rain_active] run function theafroofdoom:entity/hostile/jevil/attack/rain/base/bullet/loop
# # indicator
execute if entity @s[tag=attack_indicator_rain] run function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/loop

# ring_around
# # bullet
execute if entity @s[tag=attack_bullet_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/sort
# # damager
execute if entity @s[tag=attack_damager_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/damager
# # grazer
execute if entity @s[tag=attack_grazer_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/grazer
# # indicator
execute if entity @s[tag=attack_indicator_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/sort

# sentry
# # bullet
execute if entity @s[tag=attack_bullet_sentry_active] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/bullet
# # damager
execute if entity @s[tag=attack_damager_sentry] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/damager
# # grazer
execute if entity @s[tag=attack_grazer_sentry] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/grazer
# # indicator
execute if entity @s[tag=attack_indicator_sentry] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/indicator/loop

# shoot
# # bullet
execute if entity @s[tag=attack_bullet_shoot_active] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/bullet
# # damager
execute if entity @s[tag=attack_damager_shoot] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/damager
# # grazer
execute if entity @s[tag=attack_grazer_shoot] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/grazer
# # indicator
execute if entity @s[tag=attack_indicator_shoot] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/loop
