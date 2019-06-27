# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\condition\loop_sequencer\afro.math_1\0.mcfunction

# Activate next bullet (the one with sequence_id = 0)
execute as @e[scores={group_id=0,sequence_id=0},tag=attack_bullet_ring_around_grounded] at @s run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/bullet/activate

# Decrement sequence_id score for next bullet to be activated with
scoreboard players remove @e[scores={group_id=0}] sequence_id 1

# Reset afro.math_1 to decrement again
scoreboard players operation @s afro.math_1 = @s attack_seq_spd
