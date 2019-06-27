# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\rain\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_rain"

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0-attack_charge_up)
scoreboard players add @s attack_clock 1

# Give model to highlighter when attack_clock = 0
execute if score @s attack_clock matches 0 run function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/condition/loop/attack_clock/0

# Shoot at {attack_clock=attack_charge_up}
execute if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/shoot

# Restore Group IDs
function theafroofdoom:entity/group_id/restore
# Terminate at {attack_clock=attack_charge_up} based on variant
execute if score @s attack_clock = @s attack_charge_up run function theafroofdoom:entity/hostile/jevil/attack/rain/base/indicator/condition/loop/attack_clock/attack_charge_up
