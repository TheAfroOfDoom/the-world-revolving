# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\base\loop.mcfunction

# Runs every tick off entities tagged "jevil_is_attacking_combination"

# Increment attack_clock (0-attack_length)
scoreboard players add @s attack_clock 1

# Decrement afro.math_0
scoreboard players remove @s afro.math_0 1

# Play optional voiceline based on attack_voice at attack_clock = 0
execute if score @s attack_clock matches 0 run function theafroofdoom:entity/hostile/jevil/attack/voiceline

# Attack at afro.math_0 = 0
# Summon attack_indicator_combination based on variant after [attack_rate] ticks
execute if entity @s[scores={afro.math_0=0}] run function theafroofdoom:entity/hostile/jevil/attack/combination/base/condition/loop/afro.math_0/0

# Terminate at {attack_clock=attack_length} based on variant
execute if score @s attack_clock = @s attack_length run function theafroofdoom:entity/hostile/jevil/attack/combination/base/condition/loop/attack_clock/attack_length
