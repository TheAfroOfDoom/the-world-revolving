# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\bomb\diamond\condition\bullet\attack_diff\2.mcfunction

# NOTE(jordan): The following parameters are currently hardcoded:
#                   - Radius
#                       - Expansion rate
#                       - Expansion time
#                   - Ring angular velocity

# Setup Bullet ID system
function theafroofdoom:entity/hostile/bullet_id/setup

# Increment attack_clock
scoreboard players add @s attack_clock 1

# While attack_clock = 0..9, expand the bomb ring
execute if score @s attack_clock matches 0..9 at @s rotated as @e[scores={bullet_id=0},tag=attack_damager_bomb] run teleport @s ^0.3 ^ ^

# While attack_clock = 10..
# Rotate associated damager
execute if score @s attack_clock matches 10.. as @e[scores={bullet_id=0},tag=attack_damager_bomb] at @s run teleport @s ~ ~ ~ ~6 ~

# # Teleport bullet forward (in original player direction)
execute if score @s attack_clock matches 10.. at @s run teleport @s ^ ^ ^0.8

# # Teleport bullet along ring path
execute if score @s attack_clock matches 10.. at @s rotated as @e[scores={bullet_id=0},tag=attack_damager_bomb] run teleport @s ^ ^ ^0.3141592654

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
