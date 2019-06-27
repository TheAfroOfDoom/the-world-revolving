# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\phantom\loop.mcfunction

# Runs off entities tagged "jevil_phantom_attack_shoot"

# afro.math_0 = attack_wrp_start + attack_wrp_in
# afro.math_1 = attack_wrp_end   - attack_wrp_out
# afro.math_3 = attack_wrp_start - 1

#       -1 < attack_wrp_start < afro.math_0 < attack_charge_up < afro.math_1 < attack_wrp_end
# stage: 0 < 1                < 2           < 3                < 4           < 5

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0 - (attack_wrp_end + 1))
scoreboard players add @s attack_clock 1

# Initialize the Jevil phantom's math score to track Y-value at stage 0.5
execute if score @s attack_clock < @s attack_wrp_start store result score @s afro.math_2 run data get entity @s Pos[1] 100

# Copy indicator's X and Z values to the Jevil phantom's at afro.math_3
execute if score @s attack_clock = @s afro.math_3 store result entity @s Pos[0] double 0.01 run data get entity @e[limit=1,scores={group_id=0},tag=attack_indicator_shoot] Pos[0] 100
execute if score @s attack_clock = @s afro.math_3 store result entity @s Pos[2] double 0.01 run data get entity @e[limit=1,scores={group_id=0},tag=attack_indicator_shoot] Pos[2] 100

# Play warp sound at stage 1
execute if score @s attack_clock = @s attack_wrp_start run playsound theafroofdoom:jevil.attack.shoot.warp.in hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0
# Initialize visual part of Jevil phantom at stage 1
execute if score @s attack_clock = @s attack_wrp_start run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_shovel",tag:{CustomModelData:2}}]}

# Warp Jevil phantom in at stage 1.5
# Add attack_wrp_spd to current Y-value
execute if score @s attack_clock >= @s attack_wrp_start if score @s attack_clock < @s afro.math_0 run scoreboard players operation @s afro.math_2 += @s attack_wrp_spd
execute if score @s attack_clock >= @s attack_wrp_start if score @s attack_clock < @s afro.math_0 store result entity @s Pos[1] double 0.01 run scoreboard players get @s afro.math_2

# Set Jevil phantom's face and body to shooting at stage 3
execute if score @s attack_clock = @s attack_charge_up run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:"minecraft:golden_shovel",tag:{CustomModelData:4}}]}
# Play shoot sound at stage 3
execute if score @s attack_clock = @s attack_charge_up run playsound theafroofdoom:jevil.attack.shoot.shoot hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0

# Summon large_smoke particles at stage 4
execute if score @s attack_clock = @s afro.math_1 run particle large_smoke ~ ~ ~ 0 0 0 0.25 50 force

# Warp Jevil phantom out at stage 4.5
# Remove attack_wrp_spd to current Y-value
execute if score @s attack_clock > @s afro.math_1 if score @s attack_clock <= @s attack_wrp_end run scoreboard players operation @s afro.math_2 -= @s attack_wrp_spd
execute if score @s attack_clock > @s afro.math_1 if score @s attack_clock <= @s attack_wrp_end store result entity @s Pos[1] double 0.01 run scoreboard players get @s afro.math_2

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
# Play warp sound at stage 5
execute if score @s attack_clock = @s attack_wrp_end run playsound theafroofdoom:jevil.attack.shoot.warp.out hostile @a[tag=player_room_boss_fight_vanilla] ~ ~ ~ 5.0 1.0 1.0
# Terminate the Jevil phantom immediately after stage 5 based on variant
execute if score @s attack_clock > @s attack_wrp_end run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/phantom/condition/loop/attack_clock/attack_wrp_end_plus_1
