# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\devilsknife\base\bullet.mcfunction

# Runs every tick off entities tagged "attack_bullet_devilsknife_active"

# Setup Bullet ID system
function theafroofdoom:entity/hostile/bullet_id/setup

# Increment attack_clock to keep track of where we are in the velocity function
scoreboard players add @s attack_clock 1

# Rotate self based on clockwise or counter-clockwise tag
execute if entity @s[tag=attack_bullet_devilsknife_clockwise] run teleport @s ~ ~ ~ ~12.0 ~
execute if entity @s[tag=attack_bullet_devilsknife_counter_clockwise] run teleport @s ~ ~ ~ ~-12.0 ~

# Estimated angular velocity = 4.419604928 (check sheet)
# Rotate associated AEC
execute as @e[scores={bullet_id=0},tag=attack_damager_devilsknife] at @s rotated as @s run teleport @s ~ ~ ~ ~4.419604928 ~

# Teleport self forward using velocity function
function theafroofdoom:entity/hostile/jevil/attack/devilsknife/base/bullet_velocity

# Wrap attack_clock based on cycle length
execute if score @s attack_clock matches 54 run scoreboard players set @s attack_clock 0

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
