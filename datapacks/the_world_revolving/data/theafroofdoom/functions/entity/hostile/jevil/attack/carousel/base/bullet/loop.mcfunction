# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\bullet\loop.mcfunction

# Runs every tick off entities tagged "attack_bullet_carousel"

# Setup Bullet ID system
function theafroofdoom:entity/hostile/bullet_id/setup

# Increment and wrap attack_rad_min to keep track of where we are in the velocity function
scoreboard players add @s attack_rad_min 1
scoreboard players operation @s attack_rad_min %= #40 constant

# Teleport self up/down and forward using velocity function based on attack_diff
execute if score @s attack_diff matches 0 run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/bullet/condition/loop/attack_diff/0
execute if score @s attack_diff matches 1 run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/bullet/condition/loop/attack_diff/1

# Terminate if significantly outside arena floor
execute store result score @s afro.math_0 run data get entity @s Pos[0] 1.0
scoreboard players operation @s afro.math_0 -= #arena.wall.x constant
scoreboard players operation @s afro.math_0 *= #-1 constant
execute if score @s afro.math_0 matches ..20 run kill @e[scores={bullet_id=0}]

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
