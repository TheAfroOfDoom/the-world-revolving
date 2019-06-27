# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\miscellaneous\rude_buster_wave\loop.mcfunction

# Setup Group IDs
function theafroofdoom:entity/group_id/setup

# Run function once upon landing
execute if data entity @s {OnGround:1b} unless score @s afro.math_0 matches 1 run function theafroofdoom:entity/miscellaneous/rude_buster_wave/land

# Terminate when close enough to Jevil attack originator
execute if score @s afro.math_0 matches 1 if entity @e[distance=..1,tag=jevil_attack_originator] run function theafroofdoom:entity/miscellaneous/rude_buster_wave/terminate

# Teleport forward when wave hits ground
execute if score @s afro.math_0 matches 1 run teleport @s ^ ^ ^1.0

# Restore Group ID System
function theafroofdoom:entity/group_id/restore
