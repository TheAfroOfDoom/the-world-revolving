# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\loop.mcfunction

# Always ran off entities tagged "jevil"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Initialize based on "wants_to_x" tag and if attack_delay = -1
execute if score @s attack_delay matches 0 run function theafroofdoom:entity/hostile/jevil/want

# Decrement attack_delay (min = -1)
execute if score @s attack_delay matches 0.. run scoreboard players remove @s attack_delay 1

# Teleport hitbox next to self
teleport @e[scores={group_id=0},tag=jevil_hitbox] ~ ~ ~

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
