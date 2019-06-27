# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\sort_attack.mcfunction

# bomb
execute if entity @s[tag=jevil_is_attacking_bomb] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/loop

# carousel
execute if entity @s[tag=jevil_is_attacking_carousel] run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/loop

# combination
execute if entity @s[tag=jevil_is_attacking_combination] run function theafroofdoom:entity/hostile/jevil/attack/combination/base/loop

# cutscene
execute if entity @s[tag=jevil_is_attacking_cutscene] run function theafroofdoom:entity/hostile/jevil/attack/cutscene/base/loop

# devilsknife
execute if entity @s[tag=jevil_is_attacking_devilsknife] run function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/loop

# rain
execute if entity @s[tag=jevil_is_attacking_rain] run function theafroofdoom:entity/hostile/jevil/attack/rain/base/loop

# recover
execute if entity @s[tag=jevil_is_attacking_recover] run function theafroofdoom:entity/hostile/jevil/attack/recover/loop

# ring_around
execute if entity @s[tag=jevil_is_attacking_ring_around] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/loop

# sentry
execute if entity @s[tag=jevil_is_attacking_sentry] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/loop

# shoot
execute if entity @s[tag=jevil_is_attacking_shoot] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/loop
