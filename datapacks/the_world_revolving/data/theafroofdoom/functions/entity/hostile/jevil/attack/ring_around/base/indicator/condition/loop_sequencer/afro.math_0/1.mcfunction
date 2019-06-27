# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\condition\loop_sequencer\afro.math_0\1.mcfunction

# Decrement afro.math_1 (attack_seq_spd - 0)
scoreboard players remove @s afro.math_1 1

# When afro.math_1 = 0, activate next bullet
execute if score @s afro.math_1 matches ..0 run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/condition/loop_sequencer/afro.math_1/0
