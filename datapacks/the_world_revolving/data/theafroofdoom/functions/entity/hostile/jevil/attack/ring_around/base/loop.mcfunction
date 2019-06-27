# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\loop.mcfunction

# Runs every tick off entities tagged "jevil_is_attacking_ring_around"

# Increment attack_clock (0-attack_length)
scoreboard players add @s attack_clock 1

# Play optional voiceline based on attack_voice at attack_clock = 0
execute if score @s attack_clock matches 0 run function theafroofdoom:entity/hostile/jevil/attack/voiceline

# Determine whether attack_rate divides evenly into attack_clock to charge a shot
scoreboard players operation @s afro.math_0 = @s attack_clock
scoreboard players operation @s afro.math_0 %= @s attack_rate
# Summon attack_indicator_ring_around based on variant
execute if entity @s[scores={afro.math_0=0}] run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/condition/loop/afro.math_0/0

# Terminate at {attack_clock=attack_length} based on variant
execute if score @s attack_clock = @s attack_length run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/condition/loop/attack_clock/attack_length
