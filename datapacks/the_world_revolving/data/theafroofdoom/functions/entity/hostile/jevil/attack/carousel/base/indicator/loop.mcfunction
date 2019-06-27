# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\carousel\base\indicator\loop.mcfunction

# Runs every tick off entities tagged "attack_indicator_carousel"
# afro.math_0 keeps track of sinusoidal offset

# Setup Group ID system
function theafroofdoom:entity/group_id/setup

# Increment attack_clock (0 - (until attack_cycles = 0))
scoreboard players add @s attack_clock 1

# Summon new bullet every afro.math_1 ticks
scoreboard players operation @s afro.math_1 = @s attack_clock
scoreboard players operation @s afro.math_1 %= @s afro.math_0
execute if score @s afro.math_1 matches 0 as @e[scores={group_id=0},tag=attack_summoner_carousel] at @s run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/summon_bullets

# Terminate at attack_clock = attack_cycles
execute if score @s attack_clock >= @s attack_cycles run function theafroofdoom:entity/hostile/jevil/attack/carousel/base/indicator/condition/loop/attack_clock/attack_cycles

# Restore Group IDs
function theafroofdoom:entity/group_id/restore