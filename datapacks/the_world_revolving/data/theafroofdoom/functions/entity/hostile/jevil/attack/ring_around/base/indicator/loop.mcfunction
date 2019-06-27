# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_ring_around"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0-attack_charge_up)
execute if score @s attack_clock <= @s attack_charge_up run scoreboard players add @s attack_clock 1

# Shoot at {attack_clock=attack_charge_up}
execute if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/shoot

# Run sequence activating loop after
execute if score @s attack_clock > @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/loop_sequencer

# Restore Group IDs
function theafroofdoom:entity/group_id/restore