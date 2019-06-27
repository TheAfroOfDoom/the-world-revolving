# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\recover\loop.mcfunction

# Ran off entities tagged "jevil_is_attacking_recover"

# Increment attack_clock (0-attack_recover)
scoreboard players add @s attack_clock 1

# Terminate at attack_clock=attack_recover
execute if score @s attack_clock = @s attack_recover run function theafroofdoom:entity/hostile/jevil/attack/recover/terminate
