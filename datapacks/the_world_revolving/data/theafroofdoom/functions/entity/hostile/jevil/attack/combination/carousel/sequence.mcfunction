# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\combination\carousel\sequence.mcfunction

# Run next sequence based on attack_seq_spd
execute if score @s attack_seq_spd matches 2 run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/carousel/horse
execute if score @s attack_seq_spd matches 1 run function theafroofdoom:entity/hostile/jevil/attack/combination/base/attack/carousel/duck

# if boolean attack_rt_static = 1 (false), reset attack_rate back to original value
execute if score @s attack_rt_static matches 1 run scoreboard players operation @s afro.math_0 = @s attack_rate

# Decrement attack_seq_spd
scoreboard players remove @s attack_seq_spd 1

# Begin random-phase after whole sequence has been ran
execute if score @s attack_seq_spd matches ..0 run scoreboard players set @s attack_diff 0
