# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\cutscene\final_chaos\explosion\loop.mcfunction

# Setup Bullet ID System
function theafroofdoom:entity/hostile/bullet_id/setup

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Set model based on attack_clock
execute if score @s attack_clock matches 1 store result score @s afro.math_0 run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score @s attack_clock matches 1 run scoreboard players add @s afro.math_0 1
execute if score @s attack_clock matches 1 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s afro.math_0

execute if score @s attack_clock matches 3 store result score @s afro.math_0 run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score @s attack_clock matches 3 run scoreboard players add @s afro.math_0 1
execute if score @s attack_clock matches 3 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s afro.math_0

execute if score @s attack_clock matches 5..8 store result score @s afro.math_0 run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score @s attack_clock matches 5..8 run scoreboard players add @s afro.math_0 1
execute if score @s attack_clock matches 5..8 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s afro.math_0

# Terminate at attack_clock = 9
execute if score @s attack_clock matches 9 run function theafroofdoom:entity/hostile/jevil/attack/cutscene/final_chaos/explosion/terminate

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
