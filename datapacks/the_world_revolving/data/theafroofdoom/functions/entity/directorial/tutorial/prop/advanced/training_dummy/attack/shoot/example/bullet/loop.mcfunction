# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\directorial\tutorial\prop\advanced\training_dummy\attack\shoot\example\bullet\loop.mcfunction

# Setup Bullet ID System
function theafroofdoom:entity/hostile/bullet_id/setup

# Increment attack_clock
scoreboard players add @s attack_clock 1

# Teleport self forwards
teleport @s ~ ~ ~-0.375

# Terminate at z-coordinate
execute store result score @s afro.math_0 run data get entity @s Pos[2] 10
execute if score @s afro.math_0 matches ..-1463 run function theafroofdoom:entity/directorial/tutorial/prop/advanced/training_dummy/attack/shoot/example/bullet/terminate

# Restore Bullet IDs
function theafroofdoom:entity/hostile/bullet_id/restore
