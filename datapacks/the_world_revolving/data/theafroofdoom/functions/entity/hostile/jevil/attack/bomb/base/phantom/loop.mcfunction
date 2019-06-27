# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\base\phantom\loop.mcfunction

# Runs off entities tagged "jevil_phantom_attack_bomb"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0 - (attack_wrp_end + 1))
scoreboard players add @s attack_clock 1

# Copy indicator's X and Z values to the Jevil phantom's
execute if score @s attack_clock matches 0 store result entity @s Pos[0] double 0.01 run data get entity @e[limit=1,scores={group_id=0},tag=attack_indicator_bomb] Pos[0] 100
execute if score @s attack_clock matches 0 store result entity @s Pos[2] double 0.01 run data get entity @e[limit=1,scores={group_id=0},tag=attack_indicator_bomb] Pos[2] 100

# Descend based on speed score after X and Z match indicator's
execute if score @s afro.math_0 matches 0 if score @s attack_clock matches 3.. if score @s afro.math_2 matches 0 at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/condition/loop/afro.math_0/0
execute if score @s afro.math_0 matches 1 if score @s attack_clock matches 3.. if score @s afro.math_2 matches 0 at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/condition/loop/afro.math_0/1
execute if score @s afro.math_0 matches 2 if score @s attack_clock matches 3.. if score @s afro.math_2 matches 0 at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/condition/loop/afro.math_0/2
execute if score @s afro.math_0 matches 3 if score @s attack_clock matches 3.. if score @s afro.math_2 matches 0 at @s run function theafroofdoom:entity/hostile/jevil/attack/bomb/base/phantom/condition/loop/afro.math_0/3

# Restore Group IDs
function theafroofdoom:entity/group_id/restore