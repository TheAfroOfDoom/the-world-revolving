# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\sort_phantom.mcfunction

# attack
# # bomb
execute if entity @s[tag=jevil_phantom_attack_bomb] run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/loop

# # shoot
execute if entity @s[tag=jevil_phantom_attack_shoot] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/phantom/loop

# # sentry
execute if entity @s[tag=jevil_phantom_attack_sentry] run function theafroofdoom:entity/hostile/jevil/attack/sentry/base/phantom/loop
