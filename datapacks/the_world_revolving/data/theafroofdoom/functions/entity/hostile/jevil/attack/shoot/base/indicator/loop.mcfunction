# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\shoot\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_shoot"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0-attack_charge_up)
scoreboard players add @s attack_clock 1

# Face closest player
execute if score @s attack_clock <= @s attack_charge_up run teleport @s ~ ~ ~ facing entity @p[team=player]

# Summon bullets late to fix Rotation de-sync bug based on variant
execute if entity @s[scores={attack_clock=0}] run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/summon_bullets

# Copy the indicator's position and rotation to the Jevil phantom
execute if score @s attack_clock matches 0.. if score @s attack_clock <= @s attack_charge_up rotated as @s as @e[scores={group_id=0},tag=jevil_phantom_attack_shoot] positioned as @s run teleport @s ~ ~ ~ ~ ~

# Shoot at {attack_clock=attack_charge_up}
execute if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/shoot

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
# Terminate at {attack_clock=attack_charge_up} based on variant
execute if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/shoot/base/indicator/condition/loop/attack_clock/attack_charge_up
