# Project: THE WORLD REVOLVING
# Author: TheAfroOfDoom
# Function: \entity\hostile\jevil\attack\ring_around\clockwise\reset_scores.mcfunction

# Sets scores to default for attack_ring_around_clockwise

# Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack_ring_around_clockwise attack_ang_min 0
scoreboard players set #attack_ring_around_clockwise attack_ang_range 0
scoreboard players set #attack_ring_around_clockwise attack_bullets 8
scoreboard players set #attack_ring_around_clockwise attack_charge_up 10
scoreboard players set #attack_ring_around_clockwise attack_cone 360
scoreboard players set #attack_ring_around_clockwise attack_cone_mult -1
scoreboard players set #attack_ring_around_clockwise attack_length 149
scoreboard players set #attack_ring_around_clockwise attack_model 17
scoreboard players set #attack_ring_around_clockwise attack_rad_min 36
scoreboard players set #attack_ring_around_clockwise attack_rad_range 0
scoreboard players set #attack_ring_around_clockwise attack_rate 40
scoreboard players set #attack_ring_around_clockwise attack_recover 99
scoreboard players set #attack_ring_around_clockwise attack_seq_dir 1
scoreboard players set #attack_ring_around_clockwise attack_seq_spd 3
scoreboard players set #attack_ring_around_clockwise attack_voice 0
scoreboard players set #attack_ring_around_clockwise attack_wrp_end 9
