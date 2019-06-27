# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\base\indicator\loop_sequencer.mcfunction

# Run actual loop section if afro.math_0 = 1
execute if score @s afro.math_0 matches 1 run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/condition/loop_sequencer/afro.math_0/1

# Begin sequencing the tick after the first bullet hits the arena floor
execute unless score @s afro.math_0 matches 1 if entity @e[scores={group_id=0},tag=attack_bullet_ring_around_grounded] run scoreboard players operation @s afro.math_1 = @s attack_seq_spd
execute unless score @s afro.math_0 matches 1 if entity @e[scores={group_id=0},tag=attack_bullet_ring_around_grounded] run scoreboard players set @s afro.math_0 1

# Terminate if sequence_id = ..-1
execute if score @s sequence_id matches ..-1 run function theafroofdoom:entity/hostile/jevil/attack/ring_around/base/indicator/condition/loop_sequencer/sequence_id/-1
