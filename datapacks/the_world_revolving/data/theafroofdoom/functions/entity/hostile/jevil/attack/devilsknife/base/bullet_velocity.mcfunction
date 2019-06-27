# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\bullet_velocity.mcfunction

# Calculates the speed at which to teleport forward based on a step function
# that mimics a sinusoidal wave between 0 and 1

# Check spreadsheet for scratchwork done for these calculations
execute if score @s attack_clock matches 1 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.699783017 ^ ^0.0000000000
execute if score @s attack_clock matches 2 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.680833499 ^ ^0.4907477121
execute if score @s attack_clock matches 3 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.624250956 ^ ^0.9746064021
execute if score @s attack_clock matches 4 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.530829681 ^ ^1.444783755
execute if score @s attack_clock matches 5 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.401881105 ^ ^1.89467951
execute if score @s attack_clock matches 6 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.239215384 ^ ^2.317978118
execute if score @s attack_clock matches 7 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.045115987 ^ ^2.708737395
execute if score @s attack_clock matches 8 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.822307644 ^ ^3.061471936
execute if score @s attack_clock matches 9 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.573918097 ^ ^3.371230123
execute if score @s attack_clock matches 10 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.30343419 ^ ^3.633663628
execute if score @s attack_clock matches 11 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.014652924 ^ ^3.84508846
execute if score @s attack_clock matches 12 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^0.7116281545 ^ ^4.00253668
execute if score @s attack_clock matches 13 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^0.398613686 ^ ^4.103798058
execute if score @s attack_clock matches 14 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^0.08000355519 ^ ^4.147451107
execute if score @s attack_clock matches 15 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-0.2397296502 ^ ^4.132883033
execute if score @s attack_clock matches 16 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-0.5560975767 ^ ^4.060298342
execute if score @s attack_clock matches 17 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-0.8646591123 ^ ^3.930715962
execute if score @s attack_clock matches 18 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.161082729 ^ ^3.745954946
execute if score @s attack_clock matches 19 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.44120729 ^ ^3.508608933
execute if score @s attack_clock matches 20 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.701100459 ^ ^3.222009743
execute if score @s attack_clock matches 21 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.937113907 ^ ^2.890180598
execute if score @s attack_clock matches 22 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.145934522 ^ ^2.517779653
execute if score @s attack_clock matches 23 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.32463092 ^ ^2.110034601
execute if score @s attack_clock matches 24 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.470694596 ^ ^1.672669288
execute if score @s attack_clock matches 25 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.582075135 ^ ^1.211823365
execute if score @s attack_clock matches 26 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.657208999 ^ ^0.7339660984
execute if score @s attack_clock matches 27 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.695041474 ^ ^0.2458055565
execute if score @s attack_clock matches 28 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.695041474 ^ ^-0.2458055565
execute if score @s attack_clock matches 29 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.657208999 ^ ^-0.7339660984
execute if score @s attack_clock matches 30 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.582075135 ^ ^-1.211823365
execute if score @s attack_clock matches 31 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.470694596 ^ ^-1.672669288
execute if score @s attack_clock matches 32 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.32463092 ^ ^-2.110034601
execute if score @s attack_clock matches 33 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-2.145934522 ^ ^-2.517779653
execute if score @s attack_clock matches 34 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.937113907 ^ ^-2.890180598
execute if score @s attack_clock matches 35 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.701100459 ^ ^-3.222009743
execute if score @s attack_clock matches 36 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.44120729 ^ ^-3.508608933
execute if score @s attack_clock matches 37 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-1.161082729 ^ ^-3.745954946
execute if score @s attack_clock matches 38 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-0.8646591123 ^ ^-3.930715962
execute if score @s attack_clock matches 39 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-0.5560975767 ^ ^-4.060298342
execute if score @s attack_clock matches 40 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^-0.2397296502 ^ ^-4.132883033
execute if score @s attack_clock matches 41 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^0.08000355519 ^ ^-4.147451107
execute if score @s attack_clock matches 42 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^0.398613686 ^ ^-4.103798058
execute if score @s attack_clock matches 43 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^0.7116281545 ^ ^-4.00253668
execute if score @s attack_clock matches 44 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.014652924 ^ ^-3.84508846
execute if score @s attack_clock matches 45 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.30343419 ^ ^-3.633663628
execute if score @s attack_clock matches 46 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.573918097 ^ ^-3.371230123
execute if score @s attack_clock matches 47 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^1.822307644 ^ ^-3.061471936
execute if score @s attack_clock matches 48 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.045115987 ^ ^-2.708737395
execute if score @s attack_clock matches 49 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.239215384 ^ ^-2.317978118
execute if score @s attack_clock matches 50 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.401881105 ^ ^-1.89467951
execute if score @s attack_clock matches 51 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.530829681 ^ ^-1.444783755
execute if score @s attack_clock matches 52 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.624250956 ^ ^-0.9746064021
execute if score @s attack_clock matches 53 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.680833499 ^ ^-0.4907477121
execute if score @s attack_clock matches 54 rotated as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] run teleport @s ^2.699783017 ^ ^0.0000000000
